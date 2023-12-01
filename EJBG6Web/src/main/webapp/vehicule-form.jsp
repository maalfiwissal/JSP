<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicule Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        body {
            background-color: #ffffff; /* Light blue background color */
        }

        header {
            background-color: #000000; /* Bootstrap's blue color */
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            margin-top: 30px;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 20px;
            
        }

        label {
            font-weight: bold;
            color: #004080; /* Dark blue label color */
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        button {
            margin-top: 10px;
            background-color: #000000; /* Black color */
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 4px;
        }
        
        
        .card-body button {
    background-color: #000000; /* Black color */
    
}
        
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #000000;"> <!-- Dark blue navigation bar -->
            <div>
                <a href="#" class="navbar-brand"> Vehicule App </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Vehicules</a></li>
            </ul>
        </nav>
    </header>

    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${vehicule != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${vehicule == null}">
                    <form action="insert" method="post">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${vehicule != null}">
                            Edit Vehicule
                        </c:if>
                        <c:if test="${vehicule == null}">
                            Add New Vehicule
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${vehicule != null}">
                    <input type="hidden" name="id" value="<c:out value='${vehicule.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>Vehicule Matricule</label> <input type="text" value="<c:out value='${vehicule.matricule}' />" class="form-control" name="matricule" required="required">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
