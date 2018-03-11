package club.codingirls.service.impl;

import club.codingirls.entity.User;
import club.codingirls.mapper.RegisterMapper;
import club.codingirls.service.RegisterService;
import club.codingirls.util.EmailUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Resource
    private RegisterMapper registerMapper;

    @Override
    public boolean emailExist(User user)throws Exception {
        int count = registerMapper.exist(user.getEmail());

        return count >= 1;
    }

    @Override
    public void register(User user)throws Exception {
        String availableCode = UUID.randomUUID().toString().replace("-", "");
        user.setActivationCode(availableCode);
        registerMapper.insert(user);
        EmailUtil.register(user.getEmail(), user.getActivationCode());
    }
}
