package me.liuhui.mall.common.service.impl;

import lombok.extern.slf4j.Slf4j;
import me.liuhui.mall.common.base.vo.ResultVO;
import me.liuhui.mall.common.config.FilePathProperties;
import me.liuhui.mall.common.service.FileService;
import me.liuhui.mall.common.service.dto.SaveAdHtmlDTO;
import me.liuhui.mall.common.service.dto.TempToAdDTO;
import me.liuhui.mall.common.service.dto.UploadFileDTO;
import me.liuhui.mall.common.service.vo.FileVO;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Date;

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

    @Resource
    private FilePathProperties filePathProperties;

    @Override
    public ResultVO<FileVO> uploadTemp(UploadFileDTO dto) throws IOException {
        String path = filePathProperties.getTempPath() + "/" + DateFormatUtils.format(new Date(), "yyyy-MM-dd") + "/" + System.currentTimeMillis() + "." + FilenameUtils.getExtension(dto.getFilename());
        File targetFile = new File(filePathProperties.getBasePath() + path);
        if (!targetFile.getParentFile().exists()) {
            boolean mkdirs = targetFile.getParentFile().mkdirs();
            log.info("创建父目录{}{}", targetFile.getAbsolutePath(), mkdirs ? "成功" : "失败");
        }
        FileUtils.copyInputStreamToFile(dto.getInputStream(), targetFile);
        FileVO vo = new FileVO();
        vo.setPath(path);
        vo.setUrl(filePathProperties.getDomain() + path);
        return ResultVO.buildSuccessResult(vo);
    }

    @Override
    public ResultVO<FileVO> tempToAd(TempToAdDTO dto) {
        File tempFile = new File(filePathProperties.getBasePath() + dto.getTempFilePath());
        if (!tempFile.exists()) {
            return ResultVO.buildFailResult("未找到源文件");
        }
        String name = FilenameUtils.getName(dto.getTempFilePath());
        String path = filePathProperties.getAdPath() + "/image/" + dto.getAdSpaceId() + "/" + DateFormatUtils.format(new Date(), "yyyy-MM-dd") + "/" + name;
        File targetFile = new File(filePathProperties.getBasePath() + path);
        try {
            FileUtils.copyFile(tempFile, targetFile);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        FileVO vo = new FileVO();
        vo.setPath(path);
        vo.setUrl(filePathProperties.getDomain() + path);
        return ResultVO.buildSuccessResult(vo);
    }

    @Override
    public ResultVO<FileVO> saveAdHtml(SaveAdHtmlDTO dto) {
        String path = filePathProperties.getAdPath() + "/html/" + dto.getAdSpaceId() + "/" + dto.getNo() + ".html";
        try {
            FileUtils.writeStringToFile(new File(filePathProperties.getBasePath() + path), dto.getHtml(), StandardCharsets.UTF_8);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        FileVO vo = new FileVO();
        vo.setPath(path);
        vo.setUrl(filePathProperties.getDomain() + path);
        return ResultVO.buildSuccessResult(vo);
    }
}
