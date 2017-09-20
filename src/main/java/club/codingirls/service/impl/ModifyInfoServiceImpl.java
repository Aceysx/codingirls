package club.codingirls.service.impl;

import club.codingirls.entity.User;
import club.codingirls.mapper.ModifyInfoMapper;
import club.codingirls.service.ModifyInfoService;
import club.codingirls.util.Constant;
import club.codingirls.util.EmailUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;

@Service
public class ModifyInfoServiceImpl implements ModifyInfoService {

    @Resource
    private ModifyInfoMapper modifyInfoMapper;

    @Override
    public void resetPassword(User user)throws Exception {
        user.setPassword(Constant.DEFAULT_PASSWORD);
        modifyInfoMapper.resetPassword(user);
        EmailUtil.resetPassword(user.getEmail());
    }

    @Override
    public void resendEmail(User user) throws Exception {
        String availableCode = UUID.randomUUID().toString().replace("-", "");
        user.setActivationCode(availableCode);
        modifyInfoMapper.updateActivationCode(user);
        EmailUtil.register(user.getEmail(), user.getActivationCode());
    }
}
