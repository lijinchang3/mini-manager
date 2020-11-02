package me.liuhui.mall.manager.service.dto.user;

import lombok.Data;
import me.liuhui.mall.common.base.dto.PageDTO;

import java.util.Date;

@Data
public class ListUserDTO extends PageDTO {


    private Integer id;

    private String username;

    private String email;

    private String password;

    private Integer type;

    private Integer status;

    private Date minLastLoginTime;
    private Date maxLastLoginTime;

    private Date minRegisterTime;
    private Date maxRegisterTime;


}
