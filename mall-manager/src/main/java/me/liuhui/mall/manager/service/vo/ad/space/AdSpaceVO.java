package me.liuhui.mall.manager.service.vo.ad.space;


import lombok.Data;


/**
 *
 */

@Data
public class AdSpaceVO {


    /**
     * id       db_column: id
     */
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


}






