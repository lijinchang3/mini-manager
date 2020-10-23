package me.liuhui.mall.manager.service.vo.user;


import lombok.Data;

import java.util.Date;


/**
 *
 */

@Data
public class UserVO {


    /**
     * id       db_column: id
     */
    private Long id;
    /**
     * 用户名       db_column: username
     */
    private String username;
    /**
     * 邮箱       db_column: email
     */
    private String email;
    /**
     * 密码       db_column: password
     */
    private String password;
    /**
     * 类型       db_column: type
     */
    private Integer type;
    /**
     * 状态       db_column: status
     */
    private Integer status;
    /**
     * 最后登录时间       db_column: last_login_time
     */
    private Date lastLoginTime;
    /**
     * 注册时间       db_column: register_time
     */
    private Date registerTime;


}






