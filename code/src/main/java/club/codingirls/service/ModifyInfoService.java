package club.codingirls.service;

import club.codingirls.entity.User;

public interface ModifyInfoService {
    void resetPassword(User user)throws Exception;

    void resendEmail(User user)throws Exception;
}
