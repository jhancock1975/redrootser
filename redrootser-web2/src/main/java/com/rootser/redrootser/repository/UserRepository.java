package com.rootser.redrootser.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rootser.redrootser.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findOneByEmail(String email);
}
