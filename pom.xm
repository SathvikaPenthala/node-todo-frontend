<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<parent>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-parent</artifactId>
		<version>2.1.6.RELEASE</version>
		<relativePath /> <!-- lookup parent from repository -->
	</parent>
	<groupId>com.ramit</groupId>
	<artifactId>angular</artifactId>
	<version>0.0.1-SNAPSHOT</version>
	<name>angular</name>
	<description>Demo project for Spring Boot</description>

	<properties>
		<java.version>1.8</java.version>
	</properties>

	<dependencies>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter</artifactId>
		</dependency>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
		</dependency>
	</dependencies>

	<build>
		<plugins>
			<plugin>
				<groupId>com.github.eirslett</groupId>
				<artifactId>frontend-maven-plugin</artifactId>
				<version>1.3</version>

				<configuration>
					<nodeVersion>v8.9.4</nodeVersion>
					<npmVersion>v6.9.0</npmVersion>
					<workingDirectory>src/main/web/</workingDirectory>
				</configuration>

				<executions>

					<execution>
						<id>install node and npm</id>
						<goals>
							<goal>install-node-and-npm</goal>
						</goals>
					</execution>

					<execution>
						<id>npm install</id>
						<goals>
							<goal>npm</goal>
						</goals>
						<configuration>
							<arguments>install</arguments>
						</configuration>
					</execution>

					<execution>
						<id>npm run build</id>
						<goals>
							<goal>npm</goal>
						</goals>
						<configuration>
							<arguments>run build</arguments>
						</configuration>
					</execution>
				<!--  Run the test cases 
					<execution>
						<id>testing</id>
						<goals>
							<goal>npm</goal>
						</goals>
						<configuration>
							<arguments>run-script test</arguments>
						</configuration>
						<phase>generate-resources</phase>
					</execution>
				-->
				</executions>
			</plugin>

		</plugins>
	</build>

</project>
