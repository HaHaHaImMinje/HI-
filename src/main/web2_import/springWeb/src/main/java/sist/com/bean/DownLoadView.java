package sist.com.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;
@Component(value="downLoad")
public class DownLoadView  extends AbstractView{
	public DownLoadView() {
	  this.setContentType("application/download;utf-8");	
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType(this.getContentType());
		File file=(File)model.get("downLoadFile");
		response.setContentLength((int)file.length());
		String fileName="";
		String userAgent=request.getHeader("User-Agent");
		fileName=new String(file.getName().getBytes("UTF-8"));
		response.setHeader("Content-Disposition", "attachment;fileName=\""+fileName+"\";");
		response.setHeader("Content-Transfer-Encoding","binary");
		
		OutputStream out=response.getOutputStream();
		FileInputStream fis=null;
		
		try {
			fis=new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			// TODO: handle exception
		}
		out.flush();
	
		
	}
	

}











