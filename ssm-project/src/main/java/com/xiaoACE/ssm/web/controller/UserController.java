package com.xiaoACE.ssm.web.controller;

import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;


    //查询所有用户
    @RequestMapping("listAllUser.do")
    public String listAllUser(Model model){

        List<User> users = userService.listAllUser();
        //靠model对象将users数据传到user.jsp
        model.addAttribute("users",users);
        return "/index/user/user";
    }

    //搜索指定用户
    @RequestMapping(value = "searchUser.do")
    public Object searchUser(Model model,String value){

        System.out.println("I Got value! :" + value);

        List<User> users = userService.getUserListByInput(value);
        //靠model对象将users数据传到user.jsp
        model.addAttribute("users",users);

        //测试用的
        //return "/index/user/searchedUserList";

        return "/index/user/user";
    }



    //增加用户
    @RequestMapping(value = "toAddUser.do")
    public String toAddUser(){
        return "/index/user/addUser";
    }

    @RequestMapping(value = "addUser.do",method = RequestMethod.POST)
    public String addUser(User newUser){

        if (userService.selectUserByAccount(newUser.getAccount()) != null){
            //非空，账户已存在，跳回到用户列表
            return "redirect:listAllUser.do";
        }else {
            newUser.setDel(false);
            newUser.setEnable(true);
            userService.insert(newUser);
            return "redirect:listAllUser.do";
        }
    }


    //修改用户
    @RequestMapping(value = "toUpdateUser.do")
    public String toUpdate(Integer id,Model model){
        User user = userService.find(id);
        model.addAttribute(user);
        return "/index/user/updateUser";
    }

    @RequestMapping(value = "updateUser.do",method = RequestMethod.POST)
    public String update(User user, Integer id){
        userService.update(user);
        return "redirect:listAllUser.do";
    }


    //删除用户

    //(这个删除是真的删，当然，在生产环境里应该使用一个flag来标记)(never for use)

    //@RequestMapping(value = "deleteUser.do")
    //public String update(Integer id){
    //    userService.delete(id);
    //    return "redirect:listAllUser.do";
    //}

    //假删除
    @RequestMapping(value = "deleteUser.do")
    public String update(Integer id){
        userService.delete(id);
        return "redirect:listAllUser.do";
    }


}
