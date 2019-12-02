package com.cognizant.mfrp.agile.api.billpaymentsystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class BillPaymentSystemServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(BillPaymentSystemServiceApplication.class, args);
	}

}
