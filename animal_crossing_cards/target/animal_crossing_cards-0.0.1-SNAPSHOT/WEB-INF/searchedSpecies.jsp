<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${searched} Results</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
                
</head>
<body>
    <div class="container"> 
        <div class="mt-3 d-flex gap-2 mb-5">
            <a href= "/home" class="btn">Dashboard</a>
            <form action="/search/" method="POST">
                <div class="d-flex align-items-center ms-5">
                    <input class="form-control" type="search" name ="search" placeholder="Please search by name, species, or gender">
                    <button type="submit" class="btn ms-2">Search Animals</button>
                </div>
            </form>
        </div>
        <div class="d-flex flex-wrap gap-4">
            <c:forEach items='${animals}' var='n'>
                <a href="/show/${n.id}">
                    <div class="card">
                        <h2> ${n.name}</h2>
                        <img src="${n.img_url}" alt="picture of acnh character">
                    </div>
                </a>
            </c:forEach>

            <c:forEach items='${animalnames}' var='n'>
                <a href="/show/${n.id}">
                    <div class="card">
                        <h2> ${n.name}</h2>
                        <img src="${n.img_url}" alt="picture of acnh character">
                    </div>
                </a>
            </c:forEach>

            
            <c:forEach items='${gender}' var='n'>
                <a href="/show/${n.id}">   
                    <div class="card">
                        <h2> ${n.name}</h2>
                        <img src="${n.img_url}" alt="picture of acnh character">
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</body>
</html>