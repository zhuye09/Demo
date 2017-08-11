package cn.sendto.hotel.control;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class RandomValidateCode {
	//放到Session空间的Key
		private static final String RANDOMvALIDATEcODE = "RANDOMvALIDATECODEKEY";
	    
		private Random random = new Random();
		//随机数产生的字符串
		private String randString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		private int width = 70;//图片的宽度
		private int height = 26;//图片的高度
		private int lineSize = 100;//干扰线数量
		private int stringNum = 5;//产生的随机数的数量
		
		/**
		 * 获得字体
		 * */
		private Font getFont(){
			return new Font("Fixedsys",Font.CENTER_BASELINE,18);
		}
		
		/**
		 * 获得颜色
		 * */
		private Color getRandColor(int fc,int bc){
			if(fc > 255) fc = 255;
			if(bc > 255) bc = 255;
			int r = fc + random.nextInt(bc-fc-16);
			int g = fc + random.nextInt(bc-fc-14);
			int b = fc + random.nextInt(bc-fc-18);
			return new Color(r,g,b);
		}
		
		/**
		 * 生成随机图片
		 * @throws IOException 
		 * @throws ServletException 
		 * */
		public String getRandcode(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
			//创建图片
			HttpSession session = request.getSession();
			BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
			Graphics g = image.getGraphics();
			g.fillRect(0, 0, width, height);
			g.setFont(new Font("Times new Roman", Font.ROMAN_BASELINE,18));
			g.setColor(getRandColor(110,133));
			
			//绘制干扰线
			for(int i = 0; i < lineSize; i++){
				drowLine(g);
			}
			String randomString = "";
			for(int i = 0; i < stringNum; i++){
				randomString = drowString(g,randomString,i);
			}
			//将随机数产生的字符存放到Session中，用于验证
			//session.removeAttribute(RANDOMCODEKEY);
			session.setAttribute("CheckCode", randomString);
			g.dispose();
			ImageIO.write(image, "JPEG", response.getOutputStream());	
			return randomString;
		}
		
		/**
		 *绘制字符串 
		 * */
		private String drowString(Graphics g, String randomString, int i) {
			g.setFont(getFont());
			g.setColor(new Color(random.nextInt(101),random.nextInt(111),random.nextInt(121)));
			String rand = String.valueOf(getRandomString(random.nextInt(randString.length())));
			randomString+=rand;
			g.translate(random.nextInt(3), random.nextInt(3));
			g.drawString(rand, 13*i,16);
			
			return randomString;
		}
		
		/**
		 * 获得随机数字
		 * */
		private String getRandomString(int num) {
			return String.valueOf(randString.charAt(num));
		}
		
		/**
		 * 绘制干扰线
		 * */
		private void drowLine(Graphics g) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int x1 = random.nextInt(13);
			int y1 = random.nextInt(15);
			g.drawLine(x, y, x+x1, y+y1);
		}
}
