<%@page import=" java.io.*" %>
<%@page import=" sun.misc.BASE64Decoder" %>
<%@page import="cn.sendto.hotel.services.UserService"%>
<%@page import="cn.sendto.hotel.models.UserModel"%>
<%
//实现头像上传的核心类
/*
  1:将上传的图片保存到headerimage目录下，文件名生成策略是 "用户主键值"
  2:将数据库中存储的用户头像的文件名更改成 上传头像的文件名
*/
String path=application.getRealPath("");  

String dir=new File(path).getParent(); 
//dir=D:\apache-tomcat-7.0.52\wtpwebapps\gongdan
String savePath = "/headerimages/";  //保存图片路径 可以修改
//_savePath=D:\apache-tomcat-7.0.52\wtpwebapps\gongdan\headerimages\
String _savePath = path + savePath;
File f =new File(_savePath);
if(f.exists()==false){
	f.mkdir();
}
long savePicName =((UserModel)session.getAttribute("user")).getId();
//long savePicName = new Date().getTime();
//file_src=D:\apache-tomcat-7.0.52\wtpwebapps\gongdan\headerimages\21_src.jpg
//更改头像时先保存原图，然后按用户的要求裁剪成以下三种比例的图片保存。
String file_src = _savePath + savePicName + "_src.jpg";    //保存原图

//filename162=D:\apache-tomcat-7.0.52\wtpwebapps\gongdan\headerimages\21_162.jpg
String filename162 = _savePath + savePicName + "_162.jpg";  //保存162
String filename48 = _savePath + savePicName + "_48.jpg";  //保存48
String filename20 = _savePath + savePicName + "_20.jpg";  //保存20



String pic=request.getParameter("pic");
String pic1=request.getParameter("pic1");
String pic2=request.getParameter("pic2");
String pic3=request.getParameter("pic3");



if(pic!=null&&!pic.equals("")){
	//原图
	File file = new File(file_src);
	FileOutputStream fout = null;
	fout = new FileOutputStream(file);
	fout.write(new BASE64Decoder().decodeBuffer(pic));
	fout.close();
}

//图1
File file1 = new File(filename162);
FileOutputStream fout1 = null;
fout1 = new FileOutputStream(file1);
fout1.write(new BASE64Decoder().decodeBuffer(pic1));
fout1.close();

//图2
File file2 = new File(filename48);
FileOutputStream fout2 = null;
fout2 = new FileOutputStream(file2);
fout2.write(new BASE64Decoder().decodeBuffer(pic2));
fout2.close();

//图3
File file3 = new File(filename20);
FileOutputStream fout3 = null;
fout3 = new FileOutputStream(file3);
fout3.write(new BASE64Decoder().decodeBuffer(pic3));
fout3.close();
String picUrl = ""+savePicName;
System.out.println("picUrl="+picUrl);
//告诉上传头像的界面，服务器已经将图片保存完毕，并保存万的图片状态和图片地址给浏览器
//使用JSON格式将数据返回的
out.println("{\"status\":1,\"picUrl\":\""+picUrl+"\"}");
//更改数据库中的用户头像
UserService s =new UserService();
UserModel um = (UserModel)session.getAttribute("user");
um.setHeaderimage(savePicName+"");
s.update(um);

//让session中保存的用户实体与数据库中同步
session.setAttribute("user", um);
%>