<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 
 <spring:url var="css" value="/resources/css"/>
 <spring:url var="js" value="/resources/js"/>
 <spring:url var="images" value="/resources/images"/>
    
  <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OnTheShop - ${title}</title>
    <script type="text/javascript">
      window.menu='${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap core Theme -->
    <link href="${css}/theme.css" rel="stylesheet">
    

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
    <div class="wrapper">

                       <!-- Navigation -->
       <%@include file="./shared/navbar.jsp" %>
     
     
                              <!-- Page Content -->
    <div class="content">                         
    <!-- Home -->
    <c:if test="${userClickHome==true}">
       <%@include file="home.jsp" %>
    </c:if>
    
    <!-- About --> 
    <c:if test="${userClickAbout==true}">
       <%@include file="About.jsp" %>
    </c:if>
    
    <!-- Contact -->
     <c:if test="${userClickContact==true}">
       <%@include file="Contact.jsp" %>
    </c:if>
   </div>
    
    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>
   
   
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    
     <!--Self Coded JavaScript-->
    <script src="${js}/myapp.js"></script>
   
   </div><!-- Wrapper Class -->
  </body>
</html>
