package me.liuhui.mall.repository.model;


import me.liuhui.mall.repository.model.annotation.Pk;
import lombok.Data;

import java.util.Date;

/**
 * 
 */

@Data
public class AdItem  {




    /**
     * id       db_column: id
     */

    @Pk
	private Long id;

    /**
     * adSpaceId       db_column: ad_space_id
     */

    private Integer adSpaceId;

    /**
     * 广告名称       db_column: name
     */

private String name;

    /**
     * objectid       db_column: objectid
     */

private Integer objectid;

    /**
     * 状态       db_column: status
     */

private Integer status;

    /**
     * 内容       db_column: content
     */

private String content;

    /**
     * 权重       db_column: weight
     */

private Double weight;

    /**
     * createAdminId       db_column: create_admin_id
     */

private Integer createAdminId;

    /**
     * createTime       db_column: create_time
     */

private Date createTime;







}






