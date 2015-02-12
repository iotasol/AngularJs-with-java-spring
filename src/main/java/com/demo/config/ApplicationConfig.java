package com.demo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.demo.repository.tenant.TenantAwareRepositoryFactoryBean;

@Configuration
@ComponentScan
@EnableJpaRepositories(basePackages = "com.demo.repository", repositoryFactoryBeanClass = TenantAwareRepositoryFactoryBean.class)
@EnableTransactionManagement
@Import(BeanConfig.class)
public class ApplicationConfig {

}
