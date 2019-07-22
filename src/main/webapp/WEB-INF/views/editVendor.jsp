<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" http-equiv="Content-Type"content="text/html"/>
    <title>Edit Vendor</title>
</head>
<body>
<!-- here method saveLocation will be mapped to controller via RequestMapping -->
<form action="updateVendor" method="post">
        <pre>
            Id :    <input type="text" name="id" value="${vendor.id}"/>
            Code :  <input type="text" name="code" value="${vendor.code}"/>
            Name :  <input type="text" name="name" value="${vendor.name}"/>
            Type :  <select name="type">
                        <Option></Option>
                        <Option ${vendor.type=='Regular'?'Selected':''}>Regular</Option>
                        <Option ${vendor.type=='Contract'?'Selected':''}>Contract</Option>
                    </select>
            Email : <input type="text" name="email" value="${vendor.email}"/>
            Phone : <input type="text" name="phone" value="${vendor.phone}"/>
            Address:<textarea rows="4" cols="100" name="address">${vendor.address}</textarea>

            <input type="submit" value="Modify"/>
        </pre>
</form>
</body>
</html>