<%@page import="test.board.dao.ImageDao"%>
<%@page import="test.board.dto.ImageDto"%>
<%@page import="test.board.dao.FileDao"%>
<%@page import="javax.activation.FileDataSource"%>
<%@page import="test.board.dto.FileDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일을 저장할 폴더의 절대 경로를 얻어온다.
	String realPath=application.getRealPath("/upload");
	//콘솔에 테스트로 출력해보기
	System.out.println(realPath);
	//최대 업로드 사이즈
	int sizeLimit=1024*1000*50;  //50 Mbyte
	//cos.jar 라이브러리에 있는 클래스를 이용해서 객체 생성하기
	MultipartRequest mr=new MultipartRequest(request,
			realPath,
			sizeLimit,
			"utf-8",
			new DefaultFileRenamePolicy());
	//업로드된 파일에 대한 정보는 mr 객체를 통해서 얻어온다.
	String name=mr.getParameter("name");
	// upload 폴더에 저장된 파일명
	String saveFileName=mr.getFilesystemName("pic");
	//컨텍스트 경로
	String cPath=application.getContextPath();
	// <img /> 요소에 로딩할 이미지 경로 구성하기 
	String imgSrc=cPath+"/upload/"+saveFileName;
	//파일의 정보를 ImageDto 객체에 담아서
	ImageDto dto=new ImageDto();
	dto.setName(name);
	dto.setImgSrc(imgSrc);
	//DB 에 저장하기
	boolean isSuccess=ImageDao.getInstance().insert(dto);
	//응답한다.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/gallery/upload.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p>이미지를 업로드 했습니다.</p>
	<a href="list.jsp">목록보기</a>
<%}else{ %>
	<p>업로드 실패!</p>
	<a href="uploadform.jsp">업로드 폼</a>
<%} %>
</body>
</html>






