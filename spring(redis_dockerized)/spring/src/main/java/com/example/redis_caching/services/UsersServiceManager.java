package com.example.redis_caching.services;

import com.example.redis_caching.config.ApplicationUser;
import com.example.redis_caching.entities.User;
import com.example.redis_caching.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UsersServiceManager implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username)  {
        Optional<User> user = userRepository.findById(1L);
        if (!user.isPresent() || !user.get().getEmail().equals(username)) {
            throw new UsernameNotFoundException("user not found!!!");
        }
        return new ApplicationUser(user.get());
    }
}