<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@include file="Head.jsp" %>
<body>
<%@ include file="Navbar.jsp" %>


<!-- Form  -->
<div class="w-50 mx-auto">
	
<h3 class="mt-3">Fill the form to add new Note : </h3>

<form class=" mt-4" method="post" action="/project/AddNoteServlet">
  <div class="mb-3">
    <label for="title" class="form-label">Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="title" required>
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Content</label>
    <textarea class="form-control" name="content" required></textarea>
  </div>
  <div class="mb-3">
  <button type="submit" class="btn btn-primary form-control">Submit</button>
  </div>
</form>
</div>


</body>
</html>