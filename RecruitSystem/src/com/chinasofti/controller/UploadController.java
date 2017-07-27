package com.chinasofti.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UploadController {
	private static final long serialVersionUID = 1L;

	@RequestMapping("/simpleFileupload.action")
	public void simpleFileupload(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 1、创建一个DiskFileItemFactory工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 2、创建一个文件上传解析器
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 解决上传文件名的中文乱码
		upload.setHeaderEncoding("UTF-8");
		factory.setSizeThreshold(1024 * 500);// 设置内存的临界值为500K
		File linshi = new File("D:\\img\\");// 当超过500K的时候，存到一个临时文件夹中
		factory.setRepository(linshi);
		upload.setSizeMax(1024 * 1024 * 5);// 设置上传的文件总的大小不能超过5M
		try {
			// 1. 得到 FileItem 的集合 items
			List<FileItem> /* FileItem */ items = upload.parseRequest(request);

			// 2. 遍历 items:
			for (FileItem item : items) {
				// 若是一个一般的表单域, 打印信息
				if (item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("utf-8");

					System.out.println(name + ": " + value);

				}
				// 若是文件域则把文件保存到 e:\\files 目录下.
				else {
					String fileName = item.getName();
					long sizeInBytes = item.getSize();
					System.out.println(fileName);
					System.out.println(sizeInBytes);

					InputStream in = item.getInputStream();
					byte[] buffer = new byte[1024];
					int len = 0;

					fileName = "D:\\img\\" + fileName;// 文件最终上传的位置
					System.out.println(fileName);
					OutputStream out = new FileOutputStream(fileName);

					while ((len = in.read(buffer)) != -1) {
						out.write(buffer, 0, len);
					}

					out.close();
					in.close();
				}
			}

		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}

	// @RequestMapping
	// protected void doGet(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	// // 得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
	// String savePath =
	// this.getServletContext().getRealPath("/WEB-INF/upload");
	// // 上传时生成的临时文件保存目录
	// String tempPath = this.getServletContext().getRealPath("/WEB-INF/temp");
	// File file = new File(tempPath);
	// if (!file.exists() && !file.isDirectory()) {
	// System.out.println("目录或文件不存在！");
	// file.mkdir();
	// }
	// // 消息提示
	// String message = "";
	// try {
	// // 使用Apache文件上传组件处理文件上传步骤：
	// // 1、创建一个DiskFileItemFactory工厂
	// DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
	// // 设置工厂的缓冲区的大小，当上传的文件大小超过缓冲区的大小时，就会生成一个临时文件存放到指定的临时目录当中。
	// diskFileItemFactory.setSizeThreshold(1024 * 100);
	// // 设置上传时生成的临时文件的保存目录
	// diskFileItemFactory.setRepository(file);
	// // 2、创建一个文件上传解析器
	// ServletFileUpload fileUpload = new
	// ServletFileUpload(diskFileItemFactory);
	// // 解决上传文件名的中文乱码
	// fileUpload.setHeaderEncoding("UTF-8");
	// // 监听文件上传进度
	// fileUpload.setProgressListener(new ProgressListener() {
	// public void update(long pBytesRead, long pContentLength, int arg2) {
	// System.out.println("文件大小为：" + pContentLength + ",当前已处理：" + pBytesRead);
	// }
	// });
	// // 3、判断提交上来的数据是否是上传表单的数据
	// if (!fileUpload.isMultipartContent(request)) {
	// // 按照传统方式获取数据
	// return;
	// }
	// // 设置上传单个文件的大小的最大值，目前是设置为1024*1024字节，也就是1MB
	// fileUpload.setFileSizeMax(1024 * 1024);
	// // 设置上传文件总量的最大值，最大值=同时上传的多个文件的大小的最大值的和，目前设置为10MB
	// fileUpload.setSizeMax(1024 * 1024 * 10);
	// //
	// 4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
	// List<FileItem> list = fileUpload.parseRequest(request);
	// for (FileItem item : list) {
	// // 如果fileitem中封装的是普通输入项的数据
	// if (item.isFormField()) {
	// String name = item.getFieldName();
	// // 解决普通输入项的数据的中文乱码问题
	// String value = item.getString("UTF-8");
	// String value1 = new String(name.getBytes("iso8859-1"), "UTF-8");
	// System.out.println(name + " " + value);
	// System.out.println(name + " " + value1);
	// } else {
	// // 如果fileitem中封装的是上传文件，得到上传的文件名称，
	// String fileName = item.getName();
	// System.out.println(fileName);
	// if (fileName == null || fileName.trim().equals("")) {
	// continue;
	// }
	// // 注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：
	// // c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
	// // 处理获取到的上传文件的文件名的路径部分，只保留文件名部分
	// fileName = fileName.substring(fileName.lastIndexOf(File.separator) + 1);
	// // 得到上传文件的扩展名
	// String fileExtName = fileName.substring(fileName.lastIndexOf(".") + 1);
	// if ("zip".equals(fileExtName) || "rar".equals(fileExtName) ||
	// "tar".equals(fileExtName)
	// || "jar".equals(fileExtName)) {
	// request.setAttribute("message", "上传文件的类型不符合！！！");
	// request.getRequestDispatcher("/message.jsp").forward(request, response);
	// return;
	// }
	// // 如果需要限制上传的文件类型，那么可以通过文件的扩展名来判断上传的文件类型是否合法
	// System.out.println("上传文件的扩展名为:" + fileExtName);
	// // 获取item中的上传文件的输入流
	// InputStream fis = item.getInputStream();
	// // 得到文件保存的名称
	// fileName = mkFileName(fileName);
	// // 得到文件保存的路径
	// String savePathStr = mkFilePath(savePath, fileName);
	// System.out.println("保存路径为:" + savePathStr);
	// // 创建一个文件输出流
	// FileOutputStream fos = new FileOutputStream(savePathStr + File.separator
	// + fileName);
	// // 获取读通道
	// FileChannel readChannel = ((FileInputStream) fis).getChannel();
	// // 获取读通道
	// FileChannel writeChannel = fos.getChannel();
	// // 创建一个缓冲区
	// ByteBuffer buffer = ByteBuffer.allocate(1024);
	// // 判断输入流中的数据是否已经读完的标识
	// int length = 0;
	// // 循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
	// while (true) {
	// buffer.clear();
	// int len = readChannel.read(buffer);// 读入数据
	// if (len < 0) {
	// break;// 读取完毕
	// }
	// buffer.flip();
	// writeChannel.write(buffer);// 写入数据
	// }
	// // 关闭输入流
	// fis.close();
	// // 关闭输出流
	// fos.close();
	// // 删除处理文件上传时生成的临时文件
	// item.delete();
	// message = "文件上传成功";
	// }
	// }
	// } catch (FileUploadBase.FileSizeLimitExceededException e) {
	// e.printStackTrace();
	// request.setAttribute("message", "单个文件超出最大值！！！");
	// request.getRequestDispatcher("/message.jsp").forward(request, response);
	// return;
	// } catch (FileUploadBase.SizeLimitExceededException e) {
	// e.printStackTrace();
	// request.setAttribute("message", "上传文件的总的大小超出限制的最大值！！！");
	// request.getRequestDispatcher("/message.jsp").forward(request, response);
	// return;
	// } catch (FileUploadException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// message = "文件上传失败";
	// }
	// request.setAttribute("message", message);
	// request.getRequestDispatcher("/message.jsp").forward(request, response);
	// }

}
