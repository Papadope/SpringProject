<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer List Page</title>
        <!-- External Sources -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <!-- Internal File for CSS Styles and Images-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel='icon' href='img/favicon.ico' type='img/java'/>
    </head>
    <body>
        <!-- Navigation Section -->
        <div class="pos-f-t">
            <div class="collapse" id="navbarToggleExternalContent">
                <div class="bg-dark p-4">
                    <h4 class="text-white">Main Menu</h4>
                    <a href="index.html" id="menu">Home</a><br>
                    <a href="getAllTrainers" id="menu">See all Trainers</a><br>
                    <a href="preCreate" id="menu">Create Trainer</a><br>
                </div>
            </div>
            <nav class="navbar navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
        </div>
        <!-- MastHead Section -->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">Welcome to Trainer APP</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5" style="color: white">This project is made with Bootstrap | JQuery | JPA | JSTL | SpringBoot | MySQL | Maven | Hibernate and of course our favorite JAVA!</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="preCreate">Create a Trainer now!</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- Download Section -->
        <section class="page-section bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Free Download Source Code</h2>
                <a class="btn btn-light btn-xl" href="">Comming Soon!</a>
            </div>
        </section>
        <!-- Trainers List Section -->
        <section>
            <div class="container">
                <div class="card">
                    <h3 class="card-header text-center font-weight-bold py-4">Trainer List</h3>
                    <div class="card-body">
                        <div id="table" class="table-editable">
                            <span class="text-center font-weight-bold">${message}</span>
                            <span class="table-add float-right mb-3 mr-2"><a href="preCreate">Create Trainer</a> <i> <span
                                        class="glyphicon glyphicon-plus"></span></i></a></span>
                            <table class="table table-bordered table-responsive-md table-striped text-center">
                                <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">First Name</th>
                                        <th class="text-center">Last Name</th>
                                        <th class="text-center">Subject</th>
                                        <th class="text-center">Delete</th>
                                        <th class="text-center">Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${TrainerList}" var="t">
                                        <tr>
                                            <td> ${t.trainerid}</td>
                                            <td> ${t.firstname}</td>
                                            <td> ${t.lastname}</td>
                                            <td> ${t.subject}</td>
                                            <td><form action="delete" method="POST">
                                                    <input name="TrainerID" value="${t.trainerid}" type="hidden">
                                                    <input type="submit" value="DELETE" class="btn btn-danger btn-rounded btn-sm my-0"></form> </td>
                                            <td> <form action="preUpdateTrainer" method="POST">
                                                    <input name="TrainerID" value="${t.trainerid}" type="hidden">
                                                    <input type="submit" value="UPDATE" class="btn btn-primary btn-rounded btn-sm my-0"></form> </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>  
                        </div>
                    </div>
                </div>
        </section>
    </body>
</html>
