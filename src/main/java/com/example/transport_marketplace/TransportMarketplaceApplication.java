package com.example.transport_marketplace;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {
		"com.example.transport_marketplace",
		"com.example.transport_marketplace.jwt"
})
public class TransportMarketplaceApplication {
	public static void main(String[] args) {
		SpringApplication.run(TransportMarketplaceApplication.class, args);
	}
}


