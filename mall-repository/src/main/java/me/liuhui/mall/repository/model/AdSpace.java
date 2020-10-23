package me.liuhui.mall.repository.model;


import me.liuhui.mall.repository.model.annotation.Pk;
import lombok.Data;

import java.util.Date;

/**
 *
 */

@Data
public class AdSpace {


    /**
     * id       db_column: id
     */

    @Pk
    private Long id;

    /**
     * 广告名称       db_column: name
     */

private String name;

    /**
     * 广告编号       db_column: no
     */

private String no;

    /**
     * 模板名称       db_column: template_name
     */

private String templateName;

    /**
     * 容量       db_column: number
     */

private Integer number;

    /**
     * 类型       db_column: type
     */

private Integer type;

    /**
     * 图片       db_column: pic_width
     */

private Integer picWidth;

    /**
     * picHeight       db_column: pic_height
     */

    private Integer picHeight;
    private Date createTime;







}






