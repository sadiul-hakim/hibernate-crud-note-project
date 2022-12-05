<%@page import="com.hakim.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.hakim.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	Session s=FactoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");

	List<Note> notes=q.list();
	
	s.close();
%>

<!DOCTYPE html>
<html>
<%@include file="Head.jsp" %>
<body>
<%@include file="Navbar.jsp" %>

<div class="w-50 mx-auto mt-3">
	<h3>All Notes : </h3>
	<%for(Note n:notes){ %>
		<div class="card mb-2">
			<div class="card-header">
				<h3 class="card-title"><%= n.getTitle() %></h3>
			</div>
			<div class="card-body">
			<img src="img/note.png" alt="note pic" class="mb-1 mx-auto"/>
				<p class="card-text"><%= n.getContent() %></p>
			</div>
			<div class="card-footer">
				<a href="/project/DeleteNoteServlet?id=<%=n.getId()%>" class="btn btn-danger">Delete</a>
				<a href="EditPage.jsp?id=<%=n.getId() %>" class="btn btn-primary">Edit</a>
			</div>
		</div>
	<%} %>
</div>

</body>
</html>