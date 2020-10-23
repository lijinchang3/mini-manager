package me.liuhui.mall.common.service.impl;

import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.common.service.FileService;
import me.liuhui.mall.common.service.dto.UploadFileDTO;
import me.liuhui.mall.common.service.vo.TempFileVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;

import java.io.File;
import java.io.IOException;

/**
 * Created on 2020/10/22 16:30
 * <p>
 * Description: [TODO]
 * <p>
 * Company: []
 *
 * @author [清远]
 */
@Slf4j
@Service
public class FileServiceImpl implements FileService {

    @Value("${file.tempPath}")
    private String tempPath;
    @Value("${file.domain}")
    private String fileDomain;

    @Override
    public ResultVO<TempFileVO> uploadTemp(UploadFileDTO dto) throws IOException {
        String path = "/images/" + dto.getFilename();
        File targetFile = new File(ClassUtils.getDefaultClassLoader().getResource("static").getPath() + path);
        if (!targetFile.getParentFile().exists()) {
            boolean mkdirs = targetFile.getParentFile().mkdirs();
            log.info("创建父目录{}{}", targetFile.getAbsolutePath(), mkdirs ? "成功" : "失败");
        }
        FileUtils.copyInputStreamToFile(dto.getInputStream(), targetFile);
        TempFileVO vo = new TempFileVO();
        vo.setPath(path);
        vo.setUrl(fileDomain + path);
        return ResultVO.buildSuccessResult(vo);
    }
}
