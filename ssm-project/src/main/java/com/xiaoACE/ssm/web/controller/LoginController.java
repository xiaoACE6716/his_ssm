package com.xiaoACE.ssm.web.controller;

import com.xiaoACE.ssm.commons.utils.Contants;
import com.xiaoACE.ssm.commons.utils.ReturnObject;
import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    //跳转登录页面
    @RequestMapping("/toLogin.do")
    public String toLogin(){
        return "login/login";
    }

    //执行登录操作
    @RequestMapping("/login.do")
    public @ResponseBody Object login(String loginAccount, String password, HttpSession httpSession){
        //将账号与密码存入map
        Map<String,Object> map = new HashMap<>();

        //为什么不用Map.of?因为java8没有Map.of
//        map.of(
//                "loginAccount",loginAccount,
//                "password",password
//        );

        map.put("loginAccount",loginAccount);
        map.put("password",password);
        //
        User user = userService.queryUserByAccountAndPassword(map);
        //
        ReturnObject returnObject = new ReturnObject();

        if (user == null){
            //登录失败，用户名或密码错误甚至用户不存在
            returnObject.setCode(Contants.RETURN_OBJECT_CODE_FAIL);
            returnObject.setMessage("登录失败，用户名或密码错误");
        }else {
            //用户存在。判断账户状态
            if (!user.getEnable()){
                returnObject.setCode(Contants.RETURN_OBJECT_CODE_FAIL);
                returnObject.setMessage("登录失败，账号已被停用");
            }else if (user.getDel()){
                returnObject.setCode(Contants.RETURN_OBJECT_CODE_FAIL);
                returnObject.setMessage("登录失败，账号已被删除");
            }else {
                //登录成功
                returnObject.setCode(Contants.RETURN_OBJECT_CODE_SUCCESS);
                returnObject.setMessage("登录成功");

                //将user信息存入session里，以供前端使用
                httpSession.setAttribute(Contants.SESSION_USER,user);
            }
        }
        return returnObject;
    }

    //登录完跳转到主页
    @RequestMapping("/toIndex.do")
    public String toIndex(){
        return "/index/index";
    }

}
