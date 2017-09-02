package club.codingirls.service.impl;

import club.codingirls.entity.User;
import club.codingirls.mapper.UserMapper;
import club.codingirls.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public void register(User user) throws Exception {
        userMapper.insert(user);
    }
}
