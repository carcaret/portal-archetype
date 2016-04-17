<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Login Page</title>
		<link type="text/css" href="<c:url value='/resources/css/easyui/metro-blue/easyui.css'/>" rel="stylesheet" />
		<link type="text/css" href="<c:url value='/resources/css/easyui/color.css'/>" rel="stylesheet" />
		<link type="text/css" href="<c:url value='/resources/css/easyui/icon.css'/>" rel="stylesheet" />
		
		<script type="text/javascript" src="<c:url value='/resources/js/jquery/jquery-1.11.3.min.js'/>"> </script>
		<script type="text/javascript" src="<c:url value='/resources/js/easyui/jquery.easyui.min.js'/>"> </script>
		<script>
			$(document).ready(function() {
				$('#login-box').dialog({
					title: 'Login',
					modal : true,
					draggable : false,
					closable : false,
					height : 260,
					width : 300,
					buttons : [ {
						text : 'Login',
						iconCls : 'icon-ok',
						handler : function() {
							$("#loginForm").submit();
						}
					} ]
				});
		
				$("html").keydown(function(e) {
					if (e.keyCode == '13') {
						$("#loginForm").submit();
					}
				});
			});
		</script>
	</head>
	<body onload='document.loginForm.username.focus();'>
	
		<div id="login-box">
			<h2>Login with Username and Password</h2>

			<c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
	
			<form id='loginForm'
				action="<c:url value='j_spring_security_check' />" method='POST'>
				<table>
					<tr>
						<td>User:</td>
						<td><input type='text' name='username' value=''></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type='password' name='password' /></td>
					</tr>
				</table>
	
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	
	</body>
</html>