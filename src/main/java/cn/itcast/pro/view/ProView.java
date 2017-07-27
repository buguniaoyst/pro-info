package cn.itcast.pro.view;

import cn.itcast.pro.domain.Proinfo;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by yst on 2017/7/20.
 */
public class ProView extends AbstractExcelView {
    @Override
    protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {
// 从model对象中获取userList
        @SuppressWarnings("unchecked")
        List<Proinfo> proList = (List<Proinfo>) model.get("proList");
        // 创建Excel的sheet
        HSSFSheet sheet = workbook.createSheet("项目进度跟踪");

        // 创建标题行
        HSSFRow header = sheet.createRow(0);
        header.createCell(0).setCellValue("班级");
        header.createCell(1).setCellValue("姓名");
        header.createCell(2).setCellValue("第1天");
        header.createCell(3).setCellValue("第2天");
        header.createCell(4).setCellValue("第3天");
        header.createCell(5).setCellValue("第4天");
        header.createCell(6).setCellValue("第5天");
        header.createCell(7).setCellValue("第6天");
        header.createCell(8).setCellValue("第7天");
        header.createCell(9).setCellValue("第8天");
        header.createCell(10).setCellValue("第9天");
        header.createCell(11).setCellValue("第10天");
        header.createCell(12).setCellValue("第11天");
        header.createCell(13).setCellValue("第12天");
        header.createCell(14).setCellValue("第13天");
        header.createCell(15).setCellValue("第14天");
        header.createCell(16).setCellValue("第15天");
        header.createCell(17).setCellValue("第16天");
        header.createCell(18).setCellValue("第17天");
        header.createCell(19).setCellValue("第18天");
        header.createCell(20).setCellValue("第19天");
        header.createCell(21).setCellValue("第20天");

        // 填充数据
        int rowNum = 1;
        for (Proinfo proinfo : proList) {
            HSSFRow row = sheet.createRow(rowNum);
            row.createCell(0).setCellValue(proinfo.getClassname());
            row.createCell(1).setCellValue(proinfo.getName());
            row.createCell(2).setCellValue(proinfo.getDay1());
            row.createCell(3).setCellValue(proinfo.getDay2());
            row.createCell(4).setCellValue(proinfo.getDay3());
            row.createCell(5).setCellValue(proinfo.getDay4());
            row.createCell(6).setCellValue(proinfo.getDay5());
            row.createCell(7).setCellValue(proinfo.getDay6());
            row.createCell(8).setCellValue(proinfo.getDay7());
            row.createCell(9).setCellValue(proinfo.getDay8());
            row.createCell(10).setCellValue(proinfo.getDay9());
            row.createCell(11).setCellValue(proinfo.getDay10());
            row.createCell(12).setCellValue(proinfo.getDay11());
            row.createCell(13).setCellValue(proinfo.getDay12());
            row.createCell(14).setCellValue(proinfo.getDay13());
            row.createCell(15).setCellValue(proinfo.getDay14());
            row.createCell(16).setCellValue(proinfo.getDay15());
            row.createCell(17).setCellValue(proinfo.getDay16());
            row.createCell(18).setCellValue(proinfo.getDay17());
            row.createCell(19).setCellValue(proinfo.getDay18());
            row.createCell(20).setCellValue(proinfo.getDay19());
            row.createCell(21).setCellValue(proinfo.getDay20());

            rowNum++;
        }
        // 设置相应头信息，以附件形式下载并且指定文件名
        response.setHeader("Content-Disposition", "attachment;filename="
                + new String("BOS物流项目跟踪.xls".getBytes(), "ISO-8859-1"));
    }

    }

