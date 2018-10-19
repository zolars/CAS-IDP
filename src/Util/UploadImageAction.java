package Util;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.*;

public class UploadImageAction extends ActionSupport {
    private File uploadFile;
    private String uploadFileFileName;
    private String uploadFileContentType;

    private static final long serialVersionUID = 1L;

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    public void setUploadFileContentType(String uploadFileContentType) {
        this.uploadFileContentType = uploadFileContentType;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public String getUploadFileContentType() {
        return uploadFileContentType;
    }

    @Override
    public String execute() throws Exception {
        if (uploadFile != null) {

            String dataDir = ServletActionContext.getRequest().getRealPath("/upload");
            InputStream is = new FileInputStream(uploadFile);

            File folder = new File(dataDir);
            File destFile = new File(dataDir, "ElectricSystemImg.jpg");
            uploadFile.renameTo(destFile);

            if (!folder.exists()) {
                try {
                    folder.mkdirs();
                } catch (Exception e){}
            }

            if (destFile.exists()) {
                destFile.delete();
            }

            //把图片写入到上面设置的路径里
            OutputStream os = new FileOutputStream(destFile);
            byte[] buffer = new byte[400];
            int length = 0;
            while ((length = is.read(buffer)) > 0) {
                os.write(buffer, 0, length);
            }
            is.close();
            os.close();

        } else {
            return INPUT;
        }
        return SUCCESS;
    }
}