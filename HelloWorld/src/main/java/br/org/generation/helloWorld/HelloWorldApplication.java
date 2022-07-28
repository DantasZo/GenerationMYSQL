package br.org.generation.helloWorld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"br.org.generation.bsms.controller"})
@ComponentScan(basePackages = {"br.org.generation.helloWorld.controller"})
@ComponentScan(basePackages = {"br.org.generation.ConhecimentoSemanal"})

public class HelloWorldApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloWorldApplication.class, args);
	}

}
