<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                crossorigin="anonymous">
            <style>
                * {
                    margin 0;
                    padding 0;
                }

                .card {
                    width: 155px;
                    height: 200px;
                    border: 2px solid black;
                    display: flex;
                    justify-content: start;
                    align-items: center;
                }

                .card:hover {
                    transform: scale(1.15);
                    transition: .5s;
                }

                img {
                    width: 125px
                }

                a {
                    text-decoration: none;
                    list-style: none;
                    color: black;
                }
            </style>
            <title>Welcome</title>
        </head>

        <body>
            <div class="container">
                <div class="mt-3 d-flex ">
                    <h1>All Animals</h1>
                    <div class="d-flex align-items-center ms-5">
                        <label for="filter">Filter: </label>
                        <select class="form-select">
                            <option value="species">Species</option>
                            <option value="gender">Gender</option>
                            <option value="personality">Personality</option>
                            <option value="hobby">Hobby</option>
                        </select>
                    </div>
                </div>
                <div class="d-flex flex-wrap gap-4">
                    <c:forEach items='${allanimals}' var='nd'>
                        <div class="card">
                            <h2> <a href="/show/${nd.id}">${nd.name}</a></h2>
                            <img src="${nd.img_url}" alt="picture of acnh character">
                        </div>
                    </c:forEach>
                </div>
            </div>
        </body>

        </html>