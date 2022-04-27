# user-mgmt-jsp-servlet-hibernate-mysql
A user management web app using JSP, Servlet, Hibernate and MySQL. Performs basic CRUD operations on user records contains information such as id, name, email and country.

Reference: https://www.javaguides.net/2019/03/jsp-servlet-hibernate-crud-example.html

File hierarchy:

- src
  - **User.java**: the model that maps to 'User' table in database
  - **HibernateUtil.java**: contains database connection info, configures hibernate
  - **UserDAO.java**: handles basic database operations -- create new user, update user info, delete user, retrieve single user and all users
  - **UserServlet.java**: handles requests from jsp pages. Dispatches database operations specified in UserDAO, or redirect to add/edit page depends on the request received 
- WebContent
  - **user-list.jsp**: a view layer to list all users. Display the response received from UserServlet, also give option to add, edit or delete a user record
  - **user-form.jsp**: the form for creating or updating a user depends on whether the user exists in the response received
  - **Error.jsp**: basic error page to display error message if occurred
