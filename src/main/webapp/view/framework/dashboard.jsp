<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.cn.qpm.framework.dashboard.model.TopNarPoint"%>
<%@page import="com.cn.qpm.framework.dashboard.model.DashboardFactory"%>
<%@page import="com.cn.qpm.framework.dashboard.model.DashboardEntry"%>
<%@page import="com.cn.qpm.usermanage.model.LoginUser"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="qpm" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	/*获取用户信息和对应该权限的控制台实体信息，这个.jsp将会把这个控制台信息翻译过来，形成页面*/
  	LoginUser user = (LoginUser)request.getSession().getAttribute(LoginUser.class.getName());
  	//out.write(user.toString());
  	DashboardEntry entry = DashboardFactory.getInstance().getDashboardEntry(user.getAuthority());
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title><%="WebSchool-"+user.getName()+"-控制台" %></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="/view/common/head.jsp"></jsp:include>
  </head>
  
  
  
  <body>
  	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
          <a class="navbar-brand" href="#">
          	<span class="<%=entry.getIcon()%>" ></span>
         	 WebSchool
          </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        
          <ul class="nav navbar-nav navbar-left">
          	<!-- 作为扩展点 -->
          	<%for (TopNarPoint point : entry.getTopkids()){ %>
          	
          		<li><a href="<%=point.getUrl() %>">
          		<%if(StringUtils.isNotBlank(point.getIcon())){
          			out.write("<span class=\""+point.getIcon()+"\"></span>");
          		}%>
          		<%=point.getTitle() %>
          		</a>
          	<%} %>
          	
          </ul>
        
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                    <li class="active">
                        <a href="#">
                            <i class="glyphicon glyphicon-th-large"></i>
                          	  首页         
                        </a>
                    </li>
                    <li>
                        <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                           <i class="glyphicon glyphicon-cog"></i>
                          	  系统管理
                       	        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>菜单管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#物料管理" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-credit-card"></i>
                          	  物料管理        
                        </a>
                        <ul id="物料管理" class="nav nav-list collapse secondmenu">
                        	<li><a href="#a" data-toggle="collapse">
                        			<i class="glyphicon glyphicon-user"></i>
                        			用户管理
                        		</a>
                        		<ul id="a" class="nav nav-list collapse secondmenu">
                        			<li><a>aaa</a></li>
                        		</ul>
                        	</li>
                        </ul>
                    </li>

                    <li>
                        <a href="./grid.html">
                            <i class="glyphicon glyphicon-globe"></i>
                            	分发配置
                            <span class="label label-warning pull-right">5</span>
                        </a>
                    </li>

                    <li>
                        <a href="./charts.html">
                            <i class="glyphicon glyphicon-calendar"></i>
                          	  图表统计
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-fire"></i>
                            	关于系统
                        </a>
                    </li>

                </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	<iframe id="mainiframe" frameborder="0" scrolling="no" width="100%" height="100%" src=""></iframe>
        </div>
      </div>
    </div>
  </body>
</html>
