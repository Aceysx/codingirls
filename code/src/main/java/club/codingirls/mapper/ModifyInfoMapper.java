package club.codingirls.mapper;

import club.codingirls.entity.User;

public interface ModifyInfoMapper {
    void updateUser(User user);

    void cancel(String email);

    void resetPassword(User user);

    void updateActivationCode(User user);
}
