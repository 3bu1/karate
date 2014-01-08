package insertion_content;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import org.apache.commons.fileupload.FileItemStream;

public class Fileupload {
					
	
			public static boolean processfile(String path , FileItemStream item){
				try {
					File f = new File(path+File.separator+"images");
					if(!f.exists())	f.mkdir();
						File savedfile = new File(f.getAbsolutePath()+File.separator+item.getName());
					FileOutputStream fos = new FileOutputStream(savedfile);
					InputStream is = item.openStream();
					int x= 0;
					byte[] b = new byte[1024];
					while((x=is.read(b))!=-1){
						fos.write(b,0,x);
					}
					fos.flush();
					fos.close();
					return true;
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				return false;
			}
}
