<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp" %>

<!-- Category Form Started -->
<br>
<br>
<br>
<br>
<c:if test="${flag}">
	<form action="../UpdateCategory" method="post">
</c:if>
<c:if test="${!flag}">
	<form action="AddCategory" method="post">
</c:if>

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2" align="center">Category Details</td>
		
		<c:if test="${flag}">
			<input type="hidden" name="catid" value="${category.catid}" />
		</c:if>
	</tr>
	<tr>
		<td>Category Name</td>
		<c:if test="${flag}">
			<td><input type="text" name="catname"
				value="${category.catname}" /></td>
		</c:if>
		<c:if test="${!flag}">
			<td><input type="text" name="catname" /></td>
		</c:if>
	</tr>
	<tr>
		<td>Category Description</td>
		<c:if test="${flag}">
			<td><input type="text" name="catdesc"
				value="${category.catdesc}" /></td>
		</c:if>
		<c:if test="${!flag}">
			<td><input type="text" name="catdesc" /></td>
		</c:if>
	</tr>
	<tr>
		<td colspan="2"><c:if test="${flag}">
				<input type="submit" value="UpdateCategory" />
			</c:if> <c:if test="${! flag}">
				<input type="submit" value="AddCategory" />
			</c:if></td>
	</tr>
</table>
</form>
<!-- Category Form Completed -->

<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${catdetail}" var="category">
		<tr bgcolor="cyan">
			<td>${category.catid}</td>
			<td>${category.catname}</td>
			<td>${category.catdesc}</td>
			<td><a href="<c:url value="deleteCategory/${category.catid}"/>">Delete</a>
				<a href="<c:url value="updateCategory/${category.catid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>