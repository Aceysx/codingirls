package club.codingirls.mapper;

import club.codingirls.entity.User;

public interface RegisterMapper {

    int exist(String email);

    void insert(User user);

    void activationCode(String code);
}
