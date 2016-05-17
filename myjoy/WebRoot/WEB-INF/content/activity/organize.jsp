<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.joy1joy.app.bean.TUsers"%>
<%
	String path = request.getContextPath();
	if (!"".equals(path)) {
		if (!path.endsWith("/")) {
			path = path + "/";
		}
	} else {
		path = "/";
	}
%>
<%
	Object o = request.getSession().getAttribute("users");
	String userID="";
	if (null != o) {
		TUsers user = (TUsers) o;
		userID = user.getUserid();
		}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>首页 - 动一动</title>
<meta name="keywork" value="动一动，户外活动，学习，周末无聊，周末干嘛，有趣">
<link rel='icon' href="<%=path%>images/favcion.ico" type=‘image/x-ico’ />
<meta name="description" content="网站描述">
<jsp:include page="../base/base_import_jquery1.11.2.jsp"></jsp:include>

		<link rel="stylesheet" type="text/css"
			href="<%=path%>resCss/person.css">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>resCss/style.css">
		<jsp:include page="../base/base_import_jquery1.11.2.jsp" />
		
<link href="<%=path%>css/pagination.css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>js/jquery.pagination.js"></script>
<script type="text/javascript" src="<%=path%>js/activity/organize.js"></script>
</head>

<body>

	<jsp:include page="../base/joy1joy_header.jsp"></jsp:include>

	<div class="main wrap">

		  <div class="main wrap">

			<!--
    <div class="topic-block"> </div>
    -->

			<div class="jumbotron">
				<div class="container">
					<div class="row clearfix">
	
						<div class="col-md-4 user-info">
							<div class="user-name">
								<%=userID%>
							</div>
							<div></div>
							<div class="fans">
								<a href="#"> 粉丝 <span>3</span> </a>
								<a href="/user/focus-list?user_name=JOY1JOY" class="left-border">
									关注 <span>17</span> </a>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="container person-wrap">
				<div class="row">
					<div class="col-sm-8 col-md-4 col-md-2 bs-docs-sidebar">
						<ul class="nav nav-list bs-docs-sidenav">
							<li>
								<a href="<%=path%>at/joinAt.action"><i class="icon-chevron-right"></i> 已报名活动</a>
							</li>
							<li class="active">
								<a href="<%=path%>at/organize.action"><i class="icon-chevron-right"></i> 已组织活动</a>
							</li>
							<li>
								<a href="#"><i class="icon-chevron-right"></i> 已发布话题</a>
							</li>
							
						</ul>
					</div>



					<div class="col-sm-12 col-md-10 col-md-8 ">

						<div class="container-fluid">
							<div class="row-fluid">

								<div class="container">

									<div class="col-sm-12 col-md-12 col-md-12">
										<div class="col-sm-12 col-md-4 col-md-4 thumImages">
											<img alt="140x140" src="../images/22.jpg" />
										</div>
										<div class="col-sm-12 col-md-10 col-md-8">
											<h3>
												h3. 这是一套可视化布局系统.
											</h3>
											<p>
												<em>Git</em>2016-04-12
											</p>
										</div>
									</div>

									<div class="col-sm-12 col-md-12 col-md-12">
										<div class="col-sm-12 col-md-4 col-md-4 thumImages">
											<img alt="140x140" src="../images/22.jpg" />
										</div>
										<div class="col-sm-12 col-md-10 col-md-8">
											<h3>
												h3. 这是一套可视化布局系统.
											</h3>
											<p>
												<em>Git</em>是一个分布式的版本控制系统，最初由
												<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>

	<input type="hidden" id="totalPages" value="${totalPages}">


	<div class="footer-placeholder"></div>


	<jsp:include page="../base/joy1joy_footer.jsp"></jsp:include>


</body>
</html>