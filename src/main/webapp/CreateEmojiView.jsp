<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creación nuevo emoji</title>
</head>
<body>
<p/> <p/>
CREAR NUEVO EMOJI
<p/> <p/>

    <form action="/insert" method="post" acceptcharset="utf-8">
            <input type="text" name="code" id="code" maxLength="64"
                size="10" required placeholder="Código emoji" />
            <input type="text"
                name="user" id="user" maxLength="128" required size="20"
                placeholder="Email usuario" />
            <input type="text" name="desc" id="desc"
                maxLength="255" required size="20" placeholder="Descripción emoji" />
           <input type="text" name="translation" id="translation"
				maxLength="255" required size="20" placeholder="Traducción" />
            <input type="submit" value="Guardar Emoji" />
            
        </form>

	<c:if test="${estado == 1}">
	<p/> <p/>
		EMOJI QUE SE HA CREADO
	<p/> <p/>
	<table>
		<tr>
            <tr>
            	<th>Emoji</th>
            	<td>${idemoji}</td>
            </tr>
             <tr>
            	<th>Autor</th>
            	<td>${autor}</td>
            </tr>
             <tr>
            	<th>Descripción</th>
            	<td>${desc}</td>
            </tr>
             <tr>
            	<th>Traducción</th>
            	<td>${trad}</td>
            </tr>
        </tr>
      </table>
      </c:if>
</body>
</html>