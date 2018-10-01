<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- 动态获取应用名      当前设置了/  替代应用名 -->  
<c:set var="path" value="${pageContex.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>dtxz-MS</title>

	<link href="${pageContext.request.contextPath}/public/ms/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/public/ms/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/public/ms/assets/css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/js/jquery-migrate-1.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/ms/assets/js/bui.js"></script>

</head>
<body>
<!-- 头部分 -->
    <div class="header">
        <div class="dl-title">
        	<div>大题小做管理系统</div>
            <!-- <img src="${pageContext.request.contextPath}/public/ms/assets/img/main-top.png" /> -->
        </div>
    </div>
    <!-- 内容部分 -->
    <div class="content">
        <div class="dl-main-nav">
            <div class="dl-inform">
                <div class="dl-inform-title">
                    <s class="dl-inform-icon dl-up"></s>
                </div>
            </div>
            <!-- 上面导航栏 -->
            <ul id="J_Nav" class="nav-list ks-clear">
                <li class="nav-item dl-selected">
                    <div class="nav-item-inner nav-home">管理菜单</div>
                </li>
                <li style="float:right;width:150px;color:white;margin-top:10px;">
                    <div>
                       	 登录帐号：<span class="dl-log-user">${loginAdmin.getAccount()}</span>
                        <a href="javascript:;" title="退出系统" class="dl-log-quit" onclick="location='/ms/loginUI.do'">[退出]</a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 下面菜单导航 -->
        <ul id="J_NavContent" class="dl-tab-conten">
        </ul>
    </div>
</body>

</html>
<script>
	BUI.use('common/main', function() {
	    /** 定义导航菜单配置信息数组 */
	    var config = [{
	        id: '1', // 唯一标识符id
	        homePage: '11', // 当前显示的菜单id
	        menu: [{
	            text: '用户管理', // 主菜单
	            items: [{
	                id: '11',
	                text: '用户查询',
	                href: '${pageContext.request.contextPath}/ms/user/userSearch.do'
	            },{
	                id: '12',
	                text: '用户认证',
	                href: '${pageContext.request.contextPath}/ms/user/userCertificate.do'
	            }]
	        }, {
	            text: '题目管理', // 主菜单
	            items: [{
	                id: '21',
	                text: '题目查询',
	                href: '${pageContext.request.contextPath}/ms/question/essaySearch.do'
	            }]
	        }, {
	            text: '流量分析', // 主菜单
	            items: [{
	                id: '31',
	                text: '流量分析',
	                href: '${pageContext.request.contextPath}/ms/data/flowannaly.do'
	            }]
	        }]
	    }];
	    /** 显示导航菜单 */
	    new PageUtil.MainPage({
	        modulesConfig: config
	    });
	});
</script>