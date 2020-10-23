package me.liuhui.mall.common.service;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.common.service.dto.UploadFileDTO;
import me.liuhui.mall.common.service.vo.TempFileVO;

import java.io.IOException;

/**
 * Created on 2020/10/22 16:26
 * <p>
 * Description: [TODO]
 * <p>
 * Company: []
 *
 * @author [清远]
 */
public interface FileService {
    /**
     * 上传临时文件
     *
     * @param dto
     * @return
     */
    ResultVO<TempFileVO> uploadTemp(UploadFileDTO dto) throws IOException;
}
