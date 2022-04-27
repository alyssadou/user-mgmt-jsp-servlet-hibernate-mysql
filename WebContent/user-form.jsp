<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <title>User Management Application</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
 <center>
  <h1>User Management</h1>
        <h2>
         <a href="new" class="btn btn-success">Add New User</a>
         <a href="list" class="btn btn-info">List All Users</a>
         <h2>
              <c:if test="${user != null}">
               Edit User
              </c:if>
              <c:if test="${user == null}">
               Add New User
              </c:if>
         </h2>
        </h2>
 </center>
    <div align="center">
  <c:if test="${user != null}">
   <form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
   <form action="insert" method="post">
        </c:if>
        <table class="table">
          <c:if test="${user != null}">
           <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
          </c:if>            
            <tr>
                <th>User Name: </th>
                <td>
                 <input type="text" name="name" size="45"
                   value="<c:out value='${user.name}' />"
                  />
                </td>
            </tr>
            <tr>
                <th>User Email: </th>
                <td>
                 <input type="text" name="email" size="45"
                   value="<c:out value='${user.email}' />"
                 />
                </td>
            </tr>
            <tr>
                <th>Country: </th>
                <td>
                 <input type="text" name="country" size="15"
                   value="<c:out value='${user.country}' />"
                 />
                </td>
            </tr>
            <tr>
             <td colspan="2" align="center">
              <button type="submit" class="btn btn-primary">Save</button>
             </td>
            </tr>
        </table>
        </form>
    </div>
    </div> 
</body>
</html>