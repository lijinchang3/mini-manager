package me.liuhui.mall.manager.service.dto.order;

import lombok.Data;
import me.liuhui.mall.common.base.dto.PageDTO;

import java.util.Date;

@Data
public class ListOrderDTO extends PageDTO {


    private Integer id;

    private String no;

    private Integer status;

    private Double totalAmount;

    private Double payAmount;

    private Double refundAmount;

    private Integer totalQuantity;

    private Integer consumerUserId;

    private String consigneeTel;

    private String consigneeCellphone;

    private String consigneeName;

    private String consigneeAddress;

    private Date minCreateTime;
    private Date maxCreateTime;

    private Date minPayTime;
    private Date maxPayTime;

    private Integer logisticid;

    private String logisticNo;


}
