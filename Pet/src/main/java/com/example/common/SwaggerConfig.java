package com.example.common;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket getUserDocket(){
        ApiInfo apiInfo=new ApiInfoBuilder()
                //api标题  api title
                .title("x-admin接口管理")
                //api描述  api describe
                .description("x-admin相关接口文档")
                //版本号 version
                .version("1.0.0")
                .build();
        //文档类型（swagger2） Document type
        return new Docket(DocumentationType.SWAGGER_2)
                //设置包含在json ResourceListing响应中的api元信息  API meta information in the response
                .apiInfo(apiInfo)
                //启动用于api选择的构建器    Start the builder for api selection
                .select()
                //扫描接口的包  Scan interface packets
                .apis(RequestHandlerSelectors.basePackage("com.example.controller"))
                //路径过滤器（扫描所有路径）Path filter (scan all paths)
                .paths(PathSelectors.any())
                .build();
    }
}
