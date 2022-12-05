<%@page import="com.hakim.entities.Note"%>
<%@page import="com.hakim.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	int id=Integer.parseInt(request.getParameter("id"));
    	Session s=FactoryProvider.getFactory().openSession();
    	Note note=(Note)s.get(Note.class, id);
    	
    	
    %>
    
<!DOCTYPE html>
<html>
<%@include file="Head.jsp" %>
<body>
<%@include file="Navbar.jsp" %>
	<div class="w-50 mt-3 mx-auto">
		<h3>Edit Note Here : </h3>
		<form method="post" action="/project/EditNoteServlet">
			<div class="my-3">
				<label for="title">Title : </label>
				<input type="text" name="title" readonly id="title" class="form-control" value="<%= note.getTitle()%>"/>
			</div>
			<div class="my-3">
				<label for="content">Content  : </label>
				<textarea name="content" class="form-control" required rows="5">
					<%= note.getContent()%>
				</textarea>
			</div>
			<input type="hidden" name="id" value="<%= id%>"/>
			<div class="my-3">
				<button class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
</body>
</html>