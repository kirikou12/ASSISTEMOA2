package action;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.DAODemande;
import dao.DAOFile;
import dao.hibernate.DAODemandeHBM;
import dao.hibernate.DAOFileHBM;


public class ActionUpload extends Action {

	DAOFile daoFile = DAOFileHBM.getInstance();
	DAODemande daoDemande = DAODemandeHBM.getInstance();
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		for (FileItem item : items) {
            if (!item.isFormField()) {
            	String filename = FilenameUtils.getName(item.getName());
            	InputStream filecontent = item.getInputStream();  
            	//InputStream file = item.getInputStream();  
            	
                /*File attachement = new File();
                attachement.setName(filename);
                attachement.setSize(item.getSize());
                attachement.setData(IOUtils.toByteArray(filecontent));
                daoFile.save(attachement);*/      	
            	
                
                //copierFichier(file, filename);
             } 
		}
		
		
		return null;
	}
	
	private void copierFichier(InputStream file, String filename) throws IOException {
		//How to get the object being sent within xhr.send(object);
		//http://stackoverflow.com/questions/2422468/how-to-upload-files-to-server-using-jsp-servlet/2424824#2424824
		byte buf[] = new byte[4096];
		BufferedInputStream bis = new BufferedInputStream(file);
		   FileOutputStream fos = new FileOutputStream("C:\\temp\\"+filename);
		   int bytesRead = 0;
		   while((bytesRead = bis.read(buf)) != -1) {
		       fos.write(buf, 0, bytesRead);
		   }

		   fos.flush();
		   fos.close();
		   bis.close();
	}
}
