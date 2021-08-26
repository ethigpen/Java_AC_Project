<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
                crossorigin="anonymous">
            <style>
                body {
                    background-color: rgb(250, 248, 231);
                }

                a {
                    text-decoration: none;
                    list-style: none;
                }

                img {
                    width: 350px;
                }

                input {
                    width: 350px;
                }

                .icon {
                    width: 50px;
                }
                h1,h3{
                    color: ${ani.text_color};
                }
                .main{
                    width: 65%;
                    background-color: ${ani.bubble_color};
                }
            </style>
            <title>${ani.name}s Info</title>
        </head>

        <body>
            <div class="container ">
                <div class="mt-3 d-flex gap-2">
                    <a href="/home" class="btn btn-primary">Dashboard</a>
                    <form action="/search/" method="POST">
                        <div class="d-flex align-items-center ms-5">
                            <input type="search" name="search" placeholder="Please search by name, species, or gender">
                            <button type="submit" class="btn btn-primary">Search Animals</button>
                        </div>
                    </form>
                </div>
                <div class="main mt-3 d-flex gap-lg-5 p-lg-3">
                    <div>
                        <h1>Name:<img class="icon" src="${ani.icon_url}" alt="animal crossing character icon">
                            ${ani.name} <img class="icon" src="${ani.icon_url}" alt="animal crossing character icon">
                        </h1>
                        <h3>Species: ${ani.species}</h3>
                        <h3>Gender: ${ani.gender}</h3>
                        <h3>Personality: ${ani.personality}</h3>
                        <h3>Birthday: ${ani.bday}</h3>
                        <h3>Hobby: ${ani.hobby}</h3>
                        <h3>Catchphrase: ${ani.catchphrase}</h3>
                    </div>
                    <div >
                        <img src="${ani.img_url}" alt="animal crossing character">
                    </div>
                </div>
            </div>

        </body>

        </html>