<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<style>
    a{
        text-decoration: none;
        list-style: none;
    }
    img{
        width: 150px;
    }
</style>
<title>${ani.name}s Info</title>
</head>
<body>
    <div class="container">
    <a href= "/home" class="btn btn-primary">Dashboard</a>
        <h1>Name: ${ani.name}</h1> 
        <h1>Gender: ${ani.gender}</h1> 
        <h1>Species: ${ani.species}</h1> 
        <h1>Catchphrase: ${ani.catchphrase}</h1> 
        <h1>Personality: ${ani.personality}</h1> 
        <h1>Birthday: ${ani.bday}</h1>
        <h1>Hobby: ${ani.hobby}</h1>
        <img src="${ani.img_url}" alt="animal crossing character">
        <img src="${ani.icon_url}" alt="animal crossing character icon">
    </div>
</body>
</html>