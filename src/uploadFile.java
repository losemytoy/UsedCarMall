//import com.opensymphony.xwork2.ActionSupport;
//import org.apache.commons.io.FileUtils;
//
//import java.io.File;
//import java.io.IOException;
//
//public class uploadFile extends ActionSupport {
//    private File myFile;
//    private String myFileContentType;
//    private String myFileFileName;
//    private String destPath;
//
//    public File getMyFile() {
//        return myFile;
//    }
//
//    public void setMyFile(File myFile) {
//        this.myFile = myFile;
//    }
//
//    public String getMyFileContentType() {
//        return myFileContentType;
//    }
//
//    public void setMyFileContentType(String myFileContentType) {
//        this.myFileContentType = myFileContentType;
//    }
//
//    public String getMyFileFileName() {
//        return myFileFileName;
//    }
//
//    public void setMyFileFileName(String myFileFileName) {
//        this.myFileFileName = myFileFileName;
//    }
//
//    public String execute()
//    {
//        /* Copy file to a safe location */
//        destPath = "D:\\软件工程\\期末作业\\Database_img";
//        try{
//            System.out.println("Src File name: " + myFile);
//            System.out.println("Dst File name: " + myFileFileName);
//            File destFile  = new File(destPath, myFileFileName);
//            FileUtils.copyFile(myFile, destFile);
//        }catch(IOException e){
//            e.printStackTrace();
//            return ERROR;
//        }
//        return SUCCESS;
//    }
//
//}
