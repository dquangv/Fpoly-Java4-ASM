package controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.dao.ShareDAO;
import com.bean.Share;

@WebServlet("/views/exportExcel")
public class ExportExcelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=shares.xlsx");

        ShareDAO shareDAO = new ShareDAO();
        List<Share> shareList = shareDAO.findAllAndGroup();

        try (Workbook workbook = new XSSFWorkbook(); OutputStream out = response.getOutputStream()) {
            Sheet sheet = workbook.createSheet("Shares");

            Row header = sheet.createRow(0);
            header.createCell(0).setCellValue("Video Title");
            header.createCell(1).setCellValue("Sender Name");
            header.createCell(2).setCellValue("Sender Email");
            header.createCell(3).setCellValue("Receiver Email");
            header.createCell(4).setCellValue("Sent Date");

            int rowIdx = 1;
            for (Share share : shareList) {
                Row row = sheet.createRow(rowIdx++);
                row.createCell(0).setCellValue(share.getVideo().getTitle());
                row.createCell(1).setCellValue(share.getUser().getFullname());
                row.createCell(2).setCellValue(share.getUser().getEmail());
                row.createCell(3).setCellValue(String.join(", ", share.getEmail()));
                row.createCell(4).setCellValue(share.getShareDate().toString());
            }

            for (int i = 0; i < 5; i++) {
                sheet.autoSizeColumn(i);
            }

            workbook.write(out);
        }
    }
}
