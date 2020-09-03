package com.sinosoft.quartz.task;

import com.jcraft.jsch.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.File;
import java.util.Vector;

@Component("backListSFTPTask")
public class BlacklistSFTPTask {
    private static final Logger log = LoggerFactory.getLogger(BlacklistSFTPTask.class);

    private ChannelSftp channelSftp = null;
    private Session session = null;
    private Channel channel = null;
    private String PATHSEPARATOR = "/";
    public void noParams(){
        log.info("mission start");
        String host = "199.212.219.27";
        int port = 22;
        String username = "ShanghaiLifeCN01R";
        String password = "Sh1234567.";
        String sftpDir = "/";
        String localDir = "/home/aml/blackList";

        try {
            JSch jsch = new JSch();
            session = jsch.getSession(username, host, port);
            session.setPassword(password);
            java.util.Properties config = new java.util.Properties();
            config.put("StrictHostKeyChecking", "no");
            session.setConfig(config);
            session.connect();
            channel = session.openChannel("sftp");
            channel.connect();
            channelSftp = (ChannelSftp) channel;
            channelSftp.cd(sftpDir);
            log.info("connect success");
            log.info("download start");
            File file = new File(localDir);
            deleteFile(file);
            if (!file.exists()) {
                file.mkdirs();
            }
            recursiveFolderDownload(sftpDir, localDir);
            log.info("mission success");
        } catch (Exception ex) {
            log.error(ex.getMessage());
            log.error("mission fail");
        } finally {
            if (channelSftp != null) {
                channelSftp.disconnect();
            }
            if (channel != null) {
                channel.disconnect();
            }
            if (session != null) {
                session.disconnect();
            }

        }
    }

    private void recursiveFolderDownload(String sourcePath, String destinationPath) throws SftpException {
        Vector<ChannelSftp.LsEntry> fileAndFolderList = channelSftp.ls(sourcePath);
        for (ChannelSftp.LsEntry item : fileAndFolderList) {
            if (!item.getAttrs().isDir()) {
                if (!(new File(destinationPath + PATHSEPARATOR + item.getFilename())).exists()
                        || (item.getAttrs().getMTime() > Long
                        .valueOf(new File(destinationPath + PATHSEPARATOR + item.getFilename()).lastModified()
                                / (long) 1000)
                        .intValue())) {

                    new File(destinationPath + PATHSEPARATOR + item.getFilename());
                    channelSftp.get(sourcePath + PATHSEPARATOR + item.getFilename(),
                            destinationPath + PATHSEPARATOR + item.getFilename());
                }
            } else if (!(".".equals(item.getFilename()) || "..".equals(item.getFilename()))) {
                new File(destinationPath + PATHSEPARATOR + item.getFilename()).mkdirs();
                recursiveFolderDownload(sourcePath + PATHSEPARATOR + item.getFilename(),
                        destinationPath + PATHSEPARATOR + item.getFilename());
            }
        }
    }

    public static void deleteFile(File file){
        //判断文件不为null或文件目录存在
        if (file == null || !file.exists()){
            return;
        }
        //取得这个目录下的所有子文件对象
        File[] files = file.listFiles();
        //遍历该目录下的文件对象
        for (File f: files){
            //打印文件名
            String name = file.getName();
            //判断子目录是否存在子目录,如果是文件则删除
            if (f.isDirectory()){
                deleteFile(f);
            }else {
                f.delete();
            }
        }
        //删除空文件夹  for循环已经把上一层节点的目录清空。
        file.delete();
    }

}
