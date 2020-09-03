package com.sinosoft;

import com.sinosoft.common.utils.IdWorker;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Bean;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class AmlApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(AmlApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  aml启动成功   ლ(´ڡ`ლ)ﾞ  ");

    }

    @Bean
    public IdWorker idWorker() {
        return new IdWorker();
    }
}