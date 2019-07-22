<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" http-equiv="Content-Type"content="text/html"/>
    <title>Create Vendor</title>
</head>
<body>
<!-- here method saveLocation will be mapped to controller via RequestMapping -->
<form action="saveVendor" method="post">
        <pre>
            Id :    <input type="text" name="id"/>
            Code :  <input type="text" name="code"/>
            Name :  <input type="text" name="name"/>
            Type :  <select name="type">
                        <Option></Option>
                        <Option>Regular</Option>
                        <Option>Contract</Option>
                    </select>
            Email : <input type="text" name="email"/>
            Phone : <input type="text" name="phone"/>
            Address:<textarea rows="4" cols="100" name="address"></textarea>
            <input type="submit" value="Save"/>
        </pre>
</form>
${msg}
<br/>
<a href="viewAll">View All Vendors</a>
</a>
</body>
</html>