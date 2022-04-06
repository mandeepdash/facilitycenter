
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ImageUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String folderName="uploadedfiles";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		writer.write("call POST with multipart form data");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("application/json");        
            if (!ServletFileUpload.isMultipartContent(request)) {
			throw new IllegalArgumentException("Request is not multipart, please 'multipart/form-data' enctype for your form.");
		}
            
        //String uploadPath = getServletContext().getRealPath("/").replace("\\", "/")+folderName+"/";
        String uploadPath = getServletContext().getRealPath("/").replace("\\", "/");
        if(!uploadPath.endsWith("/")){
            uploadPath = uploadPath+"/";
        }
        uploadPath = uploadPath+folderName+"/";

        checkDir(uploadPath); // create upload directory if not created
        
		ServletFileUpload uploadHandler = new ServletFileUpload(new DiskFileItemFactory());
		PrintWriter out = response.getWriter();
		
		try 
		{
			List<FileItem> items = uploadHandler.parseRequest(request);
			for (FileItem item : items) 
			{
				if (!item.isFormField()) 
				{
                    //System.out.println(item.getName());
                    String fileName = item.getName();
                    fileName=createUniqueFileName(fileName);
                    
                  //you can use isDoc() or checkNone() instead of isImage() as per your requirement
                     if(isImage(getExt(fileName))) // Store file in server if it is a valid image file.
                    // if(checkNone(getExt(fileName))) // Store file in server if it is a valid image file.
                    {
                    	File file = new File(uploadPath, fileName); 
                        System.out.println("FilePath:"+file.getAbsolutePath());
			item.write(file);
                        
                        String size = formatSize(item.getSize());
                        out.write("{\"name\":\""+ fileName + "\",\"size\":\"" + size + "\",\"type\":\"" + item.getContentType() + "\",\"url\":\"" + folderName+"/"+ fileName + "\"}");
						//You can use above write() or use below JSONWriter()
						/* 
	                    new JSONWriter(response.getWriter())
	                      .object()
	                        .key("name")
	                        .value(fileName)
	                        .key("type")
	                        .value(item.getContentType())
	                        .key("size")
	                        .value(item.getSize())
	                      .endObject();
	                    response.flushBuffer();
						*/                                        
				 		break; // assume we only get one file at a time
		            }
		            else
		            {
		               out.write("{\"error\":\" Invalid File ("+item.getName()+"): upload image file only \"}"); 
		            }
			}
		}
	}catch (Exception e) {
			e.printStackTrace();
	}
     finally {
		out.close();
	}

}//END: 
        
private String createUniqueFileName(String fileName) {
	if(fileName.contains("\\"))
        fileName= fileName.substring(fileName.lastIndexOf("\\")+1); //(IE contains absulute path : extract only file name)
	long currentTimeMillis = System.currentTimeMillis();
	fileName = currentTimeMillis+"."+getExt(fileName);
    return fileName;
}

private String getExt(String fileName) {
	String ext = null;
	int ind=fileName.lastIndexOf(".");
	if(ind>0)
		ext=fileName.substring(ind+1);	// eg: return jpg/png/docx
	else
		ext="tmp";
   return ext;
}


private void checkDir(String uploadPath) {

	File file =new File(uploadPath);
	if(!file.exists())
		file.mkdirs();
		
	}

private static String formatSize(long size)
{
    String size1="";
    if(size<1024)
        size1=size+" bytes";
    if(size>=1024 && size<(1024*1024))
        size1=((size/1024)+"."+(size%1024))+" KB";
    if(size>=(1024*1024) )
        size1=((size/(1024*1024))+"."+(size%(1024*1024)))+" MB";
    return size1;

}
//used for checking file must be an image
 boolean isImage(String ext)  
{
    boolean flag=false;  
/*  You can put  your required extension to upload only required file type  */
    if(ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("jpeg") || ext.equalsIgnoreCase("png") || ext.equalsIgnoreCase("gif") || ext.equalsIgnoreCase("bmp"))
        flag=true;
    return flag;
}
 boolean isDoc(String ext)  //document file
 {
     boolean flag=false;  
 /*  You can put  your required extension to upload only required file type  */
     if(ext.equals("doc") || ext.equals("docx") || ext.equals("pdf") || ext.equals("ppt") || ext.equals("pptx"))
         flag=true;
     return flag;
 }
 boolean checkNone(String ext)  //allow all file type
 {     
     return true;
 }
        
}
