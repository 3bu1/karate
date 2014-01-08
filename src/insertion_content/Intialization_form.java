package insertion_content;

import java.io.PrintWriter;
import java.util.ArrayList;

public class Intialization_form implements java.io.Serializable
 {

	private String name="";
	private String username_email="";
	private String username_pw="";
	private String Phone_number="";
	private String username_add="";
	private String username_city="";
	private String username_state="";
	private String username_Sex="";
	private String username_Belt="";
	private String username_Art="";
	private String username_Achievement="";
	private String username_description="";
	private String iframe="";
	private String title="";
	private String gallery="";
	private String imageinfo="";
	
	
	public Intialization_form()
	{
		
		
	}
	
	 public void setname(String value)
	    {
		 name = name.concat(value + ",,,");
	    }
	 public String getname() { return name; }
	 
	 public void setusername_email( String value )
	    {
		 username_email = username_email.concat(value + ",,,");
	    }
	 public String getusername_email() { return username_email; }
	 
	 public void setusername_pw(String value){
		 username_pw= username_pw.concat(value + ",,,");
	 }
	 public String getusername_pw() { return username_pw; }
	 

	 public void setPhone_number(String value){
		 Phone_number= Phone_number.concat(value + ",,,");
	 }
	 public String getPhone_number(){
		 return Phone_number;
	 }
	 public void setusername_add(String value){
		 username_add= username_add.concat(value + ",,,");;
	 }
	 public String getusername_add(){
		 return username_add;
	 }
	 public void setusername_city(String value){
		 username_city= username_city.concat(value + ",,,");;
	 }
	 public String getusername_city(){
		 return username_city;
	 }
	 public void setusername_state(String value){
		 username_state= username_state.concat(value + ",,,");;
	 }
	 public String getusername_state(){
		 return username_state;
	 }
	 public void setusername_Sex(String value){
		 username_Sex = username_Sex.concat(value + ",,,");
	 }
	 public String getusername_Sex(){
		 return username_Sex;
	 }
	 public void setusername_Belt(String value){
		 username_Belt= username_Belt.concat(value + ",,,");
	 }
	 public String getusername_Belt(){
		 return username_Belt;
	 }
	 public void setusername_Art(String value){
		 username_Art= username_Art.concat(value + ",,,");
	 }
	 public String getusername_Art(){
		 return username_Art;
	 }
	 public void setusername_Achievement(String value){
		 username_Achievement= username_Achievement.concat(value + ",,,");
	 }
	 public String getusername_Achievement(){
		 return username_Achievement;
	 }
	 
	 public void setusername_description(String value){
		 username_description= username_description.concat(value + ",,,");
	 }
	 public String getusername_description(){
		 return username_description;
	 }
	 public void setiframe(String result){
		iframe =iframe.concat(result + ",,,");
		  /*ArrayList username = new ArrayList();
		 username.add(iframe);
		 java.util.Iterator it = username.iterator();
		 while (it.hasNext()) {
			iframe = (String[]) it.next();
		}
		  x = iframe;*/
	 }
	 public String getiframe(){
		
		 
		return iframe;
	 }

	public void settitle(String value) {
	
		title = title.concat(value + ",,,");
	}
	 public String gettitle(){
			
		 
			return title;
		 }
	 public void setimage(String value){
		 
		gallery = gallery.concat(value + ",,,");
	 
	 }
	 public String getimage(){
		 return gallery;
	 }

	public void setimageinfo(String value) {
		
		imageinfo=imageinfo.concat(value+",,,");
	}
	public String getimageinfo(){
		return imageinfo;
	}
	 
}
