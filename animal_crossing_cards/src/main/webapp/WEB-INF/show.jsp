<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                crossorigin="anonymous">
            <link rel="stylesheet" href="/css/style.css">
            <title>${ani.name}s Info</title>

        </head>

        <body>
            <div class="container ">
                <div class="mt-3 d-flex gap-2 mb-5">
                    <a href="/home" class="btn">Dashboard</a>
                    <form action="/search/" method="POST">
                        <div class="d-flex align-items-center ms-5">
                            <input class="form-control" type="search" name="search" placeholder="Please search by name, species, or gender">
                            <button type="submit" class="btn ms-2">Search Animals</button>
                        </div>
                    </form>
                </div>
                <div class="mt-3 d-flex gap-lg-5 p-lg-3" >
                    <div class="main" style="background-color: ${ani.bubble_color};">
                        <h1 style="color: ${ani.text_color};">Name:<img class="icon" src="${ani.icon_url}" alt="animal crossing character icon">
                            ${ani.name} <img class="icon" src="${ani.icon_url}" alt="animal crossing character icon">
                        </h1>
                        <h3 style="color: ${ani.text_color};">Species: ${ani.species}</h3>
                        <h3 style="color: ${ani.text_color};">Gender: ${ani.gender}</h3>
                        <h3 style="color: ${ani.text_color};">Personality: ${ani.personality}</h3>
                        <h3 style="color: ${ani.text_color};">Birthday: ${ani.bday}</h3>
                        <h3 style="color: ${ani.text_color};">Hobby: ${ani.hobby}</h3>
                        <h3 style="color: ${ani.text_color};">Catchphrase: ${ani.catchphrase}</h3>
                    </div>
                    <div>
                        <img class="bigimg" src="${ani.img_url}" alt="animal crossing character">
                    </div>
                </div>
            </div>

        </body>

        </html>