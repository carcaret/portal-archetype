<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" href="<c:url value='/resources/css/easyui/metro-blue/easyui.css'/>" rel="stylesheet" />
		<link type="text/css" href="<c:url value='/resources/css/easyui/color.css'/>" rel="stylesheet" />
		<link type="text/css" href="<c:url value='/resources/css/easyui/icon.css'/>" rel="stylesheet" />
		<link type="text/css" href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" />
		
		<script type="text/javascript" src="<c:url value='/resources/js/jquery/jquery-1.11.3.min.js'/>"> </script>
		<script type="text/javascript" src="<c:url value='/resources/js/easyui/jquery.easyui.min.js'/>"> </script>
		
		<title>Consola de Aministraci�n</title>
	</head>

	<body>
		<div class="easyui-layout" fit="true">
			<div id="westPanel" region="west" collapsible="false" style="width: 200px;"
				title="<center>Men�</center>">
				<div class="easyui-accordion" style="height: 100%;">
					<div title="About" data-options="iconCls:'icon-ok'"	style="overflow: auto; padding: 10px;">
						<h3 style="color: #0099FF;">Accordion for jQuery</h3>
						<p>Accordion is a part of easyui framework for jQuery. It lets
							you define your accordion component on web page more easily.</p>
					</div>
					<div title="Help" data-options="iconCls:'icon-help'" style="padding: 10px;">
						<p>The accordion allows you to provide multiple panels and
							display one or more at a time. Each panel has built-in support for
							expanding and collapsing. Clicking on a panel header to expand or
							collapse that panel body. The panel content can be loaded via ajax
							by specifying a 'href' property. Users can define a panel to be
							selected. If it is not specified, then the first panel is taken by
							default.</p>
					</div>
					<div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding: 10px;">TreeMenu</div>
				</div>
			</div>
			<div id="centerPanel" region="center" style="width: 100%;" title="<center>�rea trabajo</center>">�rea trabajo</div>
		</div>
	</body>
</html>
