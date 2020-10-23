package me.liuhui.mall.manager.service.dto.admin;

import me.liuhui.mall.common.base.dto.PageDto;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class ListAdminDTO extends PageDto {



    private String username;


    private String realName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date minCreateTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date maxCreateTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date minLastLoginTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date maxLastLoginTime;


    private Integer status;


}
