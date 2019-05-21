package com.example.eldercare.controller;

import com.example.eldercare.entity.ResultMap;
import com.example.eldercare.service.IService;
import com.example.eldercare.utlis.FileUploadUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@RestController
@Api(value = "服务接口", description = "服务接口")
@RequestMapping(value = "service")
@CrossOrigin
public class ServiceController {

    @Resource
    private IService iService;

    @ApiOperation(value = "添加服务", notes = "添加服务")
    @RequestMapping(value = "addService", method = RequestMethod.POST)
    public ResultMap addService(String service_imageUrl, String service_name, float service_price, String service_description, String service_hot, String service_type) {
        if (iService.addService(service_name, service_price, service_imageUrl, service_description, service_hot, service_type) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }


    @ApiOperation(value = "通过ID获取服务", notes = "通过ID获取服务")
    @RequestMapping(value = "getServiceById/{id}", method = RequestMethod.POST)
    public ResultMap getServiceById(@PathVariable Integer id) {
        if (iService.getServiceById(id) != null) {
            return ResultMap.ok(iService.getServiceById(id));
        }
        return ResultMap.fail(null);
    }


    @ApiOperation(value = "获取某类型的全部服务", notes = "获取某类型的全部服务")
    @RequestMapping(value = "getServiceByType", method = RequestMethod.POST)
    public ResultMap getServiceByType(String type) {
        if (iService.getServiceByType(type) != null) {
            return ResultMap.ok(iService.getServiceByType(type));
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "获取热门服务", notes = "获取热门服务")
    @RequestMapping(value = "getServiceByHot/{hot}", method = RequestMethod.POST)
    public ResultMap getServiceByHot(@PathVariable String hot) {
        if (iService.getServiceByHot(hot) != null) {
            return ResultMap.ok(iService.getServiceByHot(hot));
        }
        return ResultMap.fail(null);
    }


    @ApiOperation(value = "更新服务", notes = "更新服务")
    @RequestMapping(value = "updateService", method = RequestMethod.POST)
    public ResultMap updateService(String avatar, String name, float price, String description, String hot, String type, Integer id) throws IOException {
        if (iService.updateService(name, price, avatar, description, hot, type, id) == 1) {
            return ResultMap.ok(null);
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "删除服务", notes = "删除服务")
    @RequestMapping(value = "deleteServiceById", method = RequestMethod.POST)
    public ResultMap deleteServiceById(Integer id) {
        if (iService.deleteServiceById(id) == 1) {
            return ResultMap.ok(iService.deleteServiceById(id));
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "获取服务的总数", notes = "获取服务的总数")
    @RequestMapping(value = "getServiceCount", method = RequestMethod.POST)
    public ResultMap getServiceCount() {
        return ResultMap.ok(iService.getServiceCount());
    }


    @ApiOperation(value = "管理员分页获取服务", notes = "分页获取服务")
    @RequestMapping(value = "getServiceByPageByAdmin", method = RequestMethod.POST)
    public ResultMap getServiceByPage(Integer page, Integer pagesize) {
        if (iService.getServiceByPage(page, pagesize) != null) {
            return ResultMap.ok(iService.getServiceByPage(page, pagesize));
        }
        return ResultMap.fail(null);
    }


    @ApiOperation(value = "通过Name获取服务", notes = "通过Name获取服务")
    @RequestMapping(value = "getServiceByName", method = RequestMethod.POST)
    public ResultMap getServiceByName(String serviceName) {
        if (iService.getServiceByName(serviceName) != null) {
            return ResultMap.ok(iService.getServiceByName(serviceName));
        }
        return ResultMap.fail(null);
    }

    @ApiOperation(value = "上传服务图片", notes = "上传服务图片")
    @RequestMapping(value = "uploadServicePic", method = RequestMethod.POST)
    public ResultMap uploadServicePic(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
        return ResultMap.ok(FileUploadUtils.upLoadPicture(file, "upload/service_img", request));
    }

}
