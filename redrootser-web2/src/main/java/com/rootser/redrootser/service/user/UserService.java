package com.rootser.redrootser.service.user;

import java.util.Collection;
import java.util.Optional;

import com.rootser.redrootser.domain.User;
import com.rootser.redrootser.domain.UserCreateForm;

public interface UserService {

    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Collection<User> getAllUsers();

    User create(UserCreateForm form);

}
