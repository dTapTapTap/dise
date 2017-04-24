<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creación nuevo emoji</title>

<style type="text/css">

button {
	font: 700 1em Tahoma, Arial, Verdana, sans-serif;
	color: #fff; background-color: #59B0E5;
	border: 1px solid #0074a5;
	border-top: 1px solid #004370;
	border-left: 1px solid #004370;
	cursor: pointer;
}

button {
	width: auto;				/* IE */
	overflow: visible;			/* IE */
	padding: 3px 8px 2px 6px; 	/* IE */
}

button[type] {
	padding: 4px 8px 4px 6px; 	/* firefox */
}

</style>

</head>
<body>
<p/> <p/>
	EMOJIS CREADOS POR UN USUARIO
<p/> <p/>

    <form action="/lstuser" method="post" acceptcharset="utf-8">
            <input type="text" name="usrmail" id="usrmail" maxLength="64"
                size="30" required placeholder="Introduzca email del usuario" />
            <input type="submit" value="Buscar Emojis" />       
    </form>

	<c:if test="${estado == 2}">
	<p/> <p/>
		EMOJIS CREADOS POR ${usrmail}
	<p/> <p/>
	<table>
	<c:forEach items="${emojis}" var="emoji" varStatus="loop">
		<tr>
			<tr>
        		<td><c:out value=" EMOJI NÚMERO: ${loop.count}" /></td>
            </tr>
			<tr>
            	<th>Emoji</th>
            	<td>${emoji.idemoji}</td>
            </tr>
            <tr>
            	<th>Autor</th>
            	<td>${emoji.nomuser}</td>
            </tr>
            <tr>
            	<th>Descripción</th>
            	<td>${emoji.descemoji}</td>
            </tr>
            <tr>
            	<th>Traducción</th>
            	<td>${emoji.trademoji}</td>
            </tr>
            <tr>
            	<td>
            		<form action="/delemoj" method="post">
            		<input type="hidden" name="emojidx" value="${loop.index}">
            		<p><button type="submit"><img src="http://aurea.es/demos/ico/delete.gif" alt="x" /> Eliminar</button></p>
            		</form>
            	</td>
            </tr>
		</tr>
	</c:forEach>
      </table>
      </c:if>
      
</body>
</html>