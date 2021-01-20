package com.so;

import java.time.ZoneId;
import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;

import com.so.security.AppProperties;

@SpringBootApplication
@EntityScan(basePackageClasses = {
        BiddingApplication.class,
        Jsr310JpaConverters.class
})
@EnableConfigurationProperties(AppProperties.class)
//@EnableAutoConfiguration(exclude = {ErrorMvcAutoConfiguration.class})
public class BiddingApplication {

    @Value("${server.timezone}")
    protected String severTimezone;

    @PostConstruct
    void init() {
        TimeZone.setDefault(TimeZone.getTimeZone(ZoneId.of(severTimezone)));
    }

    public static void main(String[] args) {
        SpringApplication.run(BiddingApplication.class, args);
    }
}