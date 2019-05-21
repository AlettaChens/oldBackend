package com.example.eldercare.controller;

import com.example.eldercare.entity.ResultMap;
import com.example.eldercare.service.UserService;
import com.example.eldercare.utlis.FileUploadUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@RestController
@RequestMapping(value = "user")
@Api(value = "用户接口", description = "用户接口")
@CrossOrigin
public class UserController {
    @Resource
    private UserService userService;

    @ApiOperation(value = "用户注册", notes = "用户注册")
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public ResultMap register(String nickname, String password) {
        if (userService.register(nickname, password) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "用户登录", notes = "用户登录")
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ResultMap login(String nickname, String password) {
        if (userService.login(nickname, password) != null) {
            return ResultMap.ok(userService.login(nickname, password));
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "修改用户信息", notes = "修改用户信息")
    @RequestMapping(value = "updateInfo", method = RequestMethod.POST)
    public ResultMap updateInfo(String address, String age, String phone, String sex, String nickname, Integer userId) {
        if (userService.updateInfo(address, age, phone, sex, nickname, userId) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }


    @ApiOperation(value = "修改用户头像", notes = "修改用户头像")
    @RequestMapping(value = "/uploadImg", method = RequestMethod.POST)
    public ResultMap uploadImg(@RequestParam("file") MultipartFile file, Integer userId,
                               HttpServletRequest request) throws IOException {
        String url = FileUploadUtils.upLoadPicture(file, "upload/userImage", request);
        if (userService.updateURL(url, userId) == 1) {
            return ResultMap.ok(url);
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "获取用户数量", notes = "获取用户数量")
    @RequestMapping(value = "/getUserCount", method = RequestMethod.POST)
    public ResultMap getUserCount() {
        return ResultMap.ok(userService.getUserCount());
    }

    @ApiOperation(value = "分页获取用户", notes = "分页获取用户")
    @RequestMapping(value = "getUserByPage", method = RequestMethod.POST)
    public ResultMap getServiceByPage(Integer page, Integer pageSize) {
        if (userService.getUserByPage(page, pageSize) != null) {
            return ResultMap.ok(userService.getUserByPage(page, pageSize));
        }
        return ResultMap.fail(null);
    }
}
