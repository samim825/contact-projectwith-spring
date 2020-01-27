package com.example.demo.dao;

import com.example.demo.model.User;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by User on 1/20/2020.
 */
public interface UserDao extends CrudRepository<User, Integer> {
}
