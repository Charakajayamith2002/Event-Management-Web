<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>DreamMakers Event Planning</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        
        

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: black">
                    <div>
                        <a href="Dashboard.jsp" class="navbar-brand"> Event Management  </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Home</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Add New Event
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>User Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User Email</label> <input type="email" value="<c:out value='${user.email}' />" class="form-control" name="email" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User mobilenumber</label> <input type="text" value="<c:out value='${user.mobilenumber}' />" class="form-control" name="mobilenumber" pattern="[0-9]{10}"required>
                        </fieldset>
                        
                        <%--  <fieldset class="form-group">
                            <label>User Country</label> <input type="text" value="<c:out value='${user.eventdetails}' />" class="form-control" name="country">
                        </fieldset> --%>
                           <fieldset class="form-group">
                        <label>User details</label>
                        <textarea class="form-control" name="eventdetails"><c:out value='${user.eventdetails}' /></textarea>
                       </fieldset>
                        
                         <fieldset class="form-group">
                            <label>User payment</label> <input type="text" value="<c:out value='${user.payment}' />" class="form-control" name="payment" required="required">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>