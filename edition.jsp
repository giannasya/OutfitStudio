<%-- 
    Document   : edition
    Created on : Jul 11, 2022, 3:54:50 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="public/assets/backend/extra.css">
        <link rel="stylesheet" href="public/assets/backend/main.css">
        
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Crimson+Text:wght@700&display=swap" rel="stylesheet">
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Edition" />
        </jsp:include>
    </head>
    </head>
    <body>
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <%
            ProductController pc = new ProductController();

            String search = "";
            ResultSet rs;

            if (request.getParameter("search") != null) {
                search = request.getParameter("search");
            } 

            if (search.equals("")) {
                rs = pc.getName();
            } else {
                rs = pc.getEdition_id(search);
            }
        %>
        <div class="row">
            <div class="col-12 col-sm-6 col-m-12 text-center slider-wrapper">
                 <p style="font-size:2.5rem; margin-top: -20px; margin-bottom: -25px;"><i style="color:#324854"><b>Outfit</b></i> <i style="color:#a08669"><b>Studio</b></i></p>
                 <p class="catalog-subtitle" style="margin-top: 25px; font-size: 2rem;">Edition</p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-m-12 col-sm-12">
            <div class="col-6 col-m-6 col-sm-6">
                <form action="users" method="GET">
                    <label style="margin-left: 121px;">Search</label>
                    <div>
                      <input class="search" type="text" name="search" value="<%= search%>">
                         <span>
                             <button class="button-search">
                                 <i class='bx bx-search-alt' style='color:rgba(249,248,248,0.99)' ></i>
                             </button>
                        </span>
                    </div>
                </form>
            </div>
            <div class="col-6 col-m-6 col-sm-6" style="margin-top: 21PX;">
                <button class="button-search" style="color: white;">
                    <i class='bx bx-add-to-queue' style='color:#fff5f5'></i>
                    Add list
                </button>
            </div>
            </div>
                <div class="row">
                    <div class="col-12 col-m-12 col-sm-12">
                        <table>
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Launch Date</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% while(rs.next()) { %>
                                <tr>
                                    <td><%= rs.getString("edition_id") %></td>
                                    <td><%= rs.getString("name") %></td>
                                    <td><%= rs.getString("launch_date") %></td>
                                    <td><%= rs.getString("description") %></td>
                                    <td>
                                        <button class="button-edit"><b>Edit</b></button>
                                        <button class="button-delete"><b>Delete</b></button>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>                   
                </div>           
        </div>
        <div class="col-12 col-m-12 col-sm-12" style="margin-top: 180px;">
            <jsp:include page='layouts/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='layouts/scripts2.js'></jsp:include>
    </body>
</html>
