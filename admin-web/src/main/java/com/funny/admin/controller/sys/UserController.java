package com.funny.admin.controller.sys;

import com.funny.admin.domain.sys.User;
import com.funny.admin.domain.sys.condition.UserCondition;
import com.funny.admin.domain.sys.enums.UserStatusEnum;
import com.funny.admin.service.sys.UserService;
import com.funny.result.JsonResult;
import com.github.pagehelper.PageInfo;
import com.google.common.base.Strings;
import com.sun.tracing.dtrace.ModuleName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.funny.admin.controller.BaseController;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@ModuleName("用户管理")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;


    @RequestMapping("/user/list")
    public ModelAndView getUserList(HttpServletRequest request, UserCondition condition) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/user/user_list");
        condition.setPageSize(10);
        PageInfo<User> pageInfo = userService.getPageUserList(condition);

        modelAndView.addObject("statusList", UserStatusEnum.values());
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.addObject("userList", pageInfo.getList());
        modelAndView.addObject("condition", condition);
        return modelAndView;
    }

    @RequestMapping("/user/add")
    public ModelAndView add(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/user/user_edit");
        return modelAndView;
    }

    @RequestMapping("/user/getUserById")
    public ModelAndView getUserById(HttpServletRequest request, Long id) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUserById(id);
        modelAndView.addObject("user", user);
        modelAndView.setViewName("/admin/user/user_edit");
        return modelAndView;
    }

    @RequestMapping("/user/save")
    @ResponseBody
    public JsonResult saveUser(HttpServletRequest request, User user) {
        JsonResult jsonResult = checkUser(user);
        if (!jsonResult.isSuccess()) {
            return jsonResult;
        }
        try {
            if (user.getId() != null) {
                user.setUpdateBy(1L);
                user.setUpdateTime(new Date());
                userService.updateUser(user);
            } else {
                user.setCreateBy(1L);
                user.setCreateTime(new Date());
                user.setUserStatus(1);
                user.setYn(1);
                userService.addUser(user);
            }
            jsonResult.setSuccess();
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult.setReturncode(500);
            jsonResult.setMessage("保存失败");
        }
        return jsonResult;
    }

    @RequestMapping("/user/delete")
    @ResponseBody
    public JsonResult deleteUser(HttpServletRequest request, Long id) {
        JsonResult jsonResult = new JsonResult();
        try {
            userService.deleteUser(id);
            jsonResult.setSuccess();
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult.setReturncode(500);
            jsonResult.setMessage("删除失败");
        }
        return jsonResult;
    }

    private JsonResult checkUser(User user) {
        JsonResult jsonResult = new JsonResult();
        if (Strings.isNullOrEmpty(user.getUserName())) {
            jsonResult.setReturncode(500);
            jsonResult.setMessage("用户名不能为空!");
            return jsonResult;
        }
        if (Strings.isNullOrEmpty(user.getRealName())) {
            jsonResult.setReturncode(500);
            jsonResult.setMessage("姓名不能为空!");
            return jsonResult;
        }
        if (Strings.isNullOrEmpty(user.getMobile())) {
            jsonResult.setReturncode(500);
            jsonResult.setMessage("手机不能为空!");
            return jsonResult;
        }
        if (Strings.isNullOrEmpty(user.getEmail())) {
            jsonResult.setReturncode(500);
            jsonResult.setMessage("邮箱不能为空!");
            return jsonResult;
        }
        jsonResult.setSuccess();
        return jsonResult;
    }

}
