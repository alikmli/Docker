package com.example.redis_caching;

import com.example.redis_caching.entities.User;
import com.example.redis_caching.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
public class RedisCachingApplication {
    @Autowired
    private UserRepository userRepository;
    @Bean
    CommandLineRunner loadTestData() {
        return args -> {
            User user = new User();
            user.setId(1L);
            user.setEmail("admin@email.com");
            user.setPassword("abc123");
            user.setRole("ROLE_ADMIN");
            userRepository.save(user);
        };
    }
    public static void main(String[] args) {
        SpringApplication.run(RedisCachingApplication.class, args);
    }

}
