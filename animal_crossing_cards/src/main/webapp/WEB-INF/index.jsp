<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                crossorigin="anonymous">
            <link rel="stylesheet" href="css/style.css">
            <title>Welcome</title>
        </head>

        <body>
            <div class="container">
                <div class="mt-3 d-flex">
                    <h1>All Animals</h1>
                    <form action="/search/" method="POST">
                        <div class="d-flex align-items-center ms-5">
                            <input type="search" name ="search" placeholder="Please search by name, species, or gender">
                            <button type="submit" class="btn btn-primary">Search Animals</button>
                        </div>
                    </form>
                </div>
                <div class="d-flex flex-wrap gap-4">
                    <c:forEach items='${allanimals}' var='nd'>
                        <a href="/show/${nd.id}">
                            <div class="card">
                                <h2> ${nd.name}</h2>
                                <img src="${nd.img_url}" alt="picture of acnh character">
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </body>
        </html>