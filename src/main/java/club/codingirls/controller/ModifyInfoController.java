package club.codingirls.controller;

import club.codingirls.dto.Result;
import club.codingirls.entity.User;
import club.codingirls.mapper.ModifyInfoMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class ModifyInfoController {
    @Resource
    private ModifyInfoMapper modifyInfoMapper;

    @RequestMapping("editInfo")
    @ResponseBody
    public Result modifyInfo(User user, HttpSession session) {
        try {
            User currentUser = (User)session.getAttribute("user");
            user.setEmail(currentUser.getEmail());

            modifyInfoMapper.updateUser(user);
            session.removeAttribute("user");

            return Result.success();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure();
    }
  @RequestMapping("cancel")
    @ResponseBody
    public Result cancel(HttpSession session) {
        try {
            User currentUser = (User)session.getAttribute("user");
            modifyInfoMapper.cancel(currentUser.getEmail());
            session.removeAttribute("user");

            return Result.success();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure();
    }

}
