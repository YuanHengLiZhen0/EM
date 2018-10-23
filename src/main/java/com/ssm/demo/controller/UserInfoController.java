package com.ssm.demo.controller;

import com.ssm.demo.model.UserInfo;
import com.ssm.demo.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;

    /**
     * 用户登入
     * @param userInfo
     * @return
     */
    @RequestMapping("/login")
    public String login(UserInfo userInfo, Model model){
        String msg="";
        //根据登入账号判断该用户是否存在

        UserInfo user = userInfoService.selectUserByLoginName(userInfo.getLoginName());
        if(user==null){
            msg="该用户不存在！";
        }else{
            if(user.getPassword().equals(userInfo.getPassword())){
                //验证成功进入主界面
                model.addAttribute("userInfo",user);
                return "/main";
            }else{
                msg="密码错误！";
            }
        }
        model.addAttribute("msg",msg);
        return "/login";
    }

    /**
     * 用户注册
     * @param userInfo
     * @return
     */
    @RequestMapping("/register")
    public String register(UserInfo userInfo,Model model){
        try {
            UserInfo user = userInfoService.selectUserByLoginName(userInfo.getLoginName());
            if(user!=null){
                model.addAttribute("msg","注册失败,该登入名已存在！");
            }else{
                userInfoService.insertUser(userInfo);
                model.addAttribute("msg","注册成功，请登入！");
            }
        }catch (Exception e){
            model.addAttribute("msg","注册失败！");
            e.printStackTrace();
        }
        return "/login";
    }


}
