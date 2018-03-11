package club.codingirls.service;

import club.codingirls.entity.User;

public interface RegisterService {
    boolean emailExist(User user)throws Exception;

    void register(User user)throws Exception;

}
