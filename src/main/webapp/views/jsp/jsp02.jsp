<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="col-sm-8 text-left">
  <div class="container">
    <h1>JSP02</h1>
    <!-- JSTL if -->
    <c:if test="${rcust != null}">
      <h4>${rcust.id}</h4>  <!--c out으로도 출력할 수 있대요-->
      <c:if test="${rcust.id == 'uhmango'}">
        <h4>영업점 직원</h4>
      </c:if>
    </c:if>
    <!-- JSTL if else... -->
    <c:choose>
      <c:when test="${num == 3}">
        <h3>Num is 3</h3>
      </c:when>
      <c:when test="${num == 2}">
        <h3>Num is 2</h3>
      </c:when>
      <c:otherwise>
        <h3>Num is 1</h3>
      </c:otherwise>
    </c:choose>
    <h4>End Page</h4>
  </div>
</div>
