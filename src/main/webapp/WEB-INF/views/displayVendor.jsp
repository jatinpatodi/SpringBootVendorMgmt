<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" http-equiv="Content-Type"content="text/html"/>
    <title>Display All Locations</title>
</head>
<body>
<!-- here method saveLocation will be mapped to controller via RequestMapping -->
<h2>Display All Vendors</h2>
<table border="1">
    <tr bgcolor="#7fffd4">
        <th>id</th>
        <th>code</th>
        <th>name</th>
        <th>type</th>
        <th>email</th>
        <th>phone</th>
        <th>Address</th>
        <th>Action1</th>
        <th>Action2</th>
    </tr>
    <c:forEach items="${vendors}" var="vendor">
        <tr>
            <td>${vendor.id}</td>
            <td>${vendor.code}</td>
            <td>${vendor.name}</td>
            <td>${vendor.type}</td>
            <td>${vendor.email}</td>
            <td>${vendor.phone}</td>
            <td>${vendor.address}</td>
            <td><a href="deleteVendor?id=${vendor.id}">Delete</a></td>    <!--This is how you can pass parameter -->
            <td><a href="editVendor?id=${vendor.id}">Edit</a></td>
        </tr>
    </c:forEach>
</table>
${msg}
<br/>
<a href="createVendor">Create Vendor</a>
</body>
</html>