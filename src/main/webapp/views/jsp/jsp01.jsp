<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
  $(function(){
    jsp01.init(${num});
  });
</script>


<div class="col-sm-8 text-left">
  <div class="container">
    <h1 id="jsp01">JSP01</h1>
    <h2>${num}</h2>
    <h2><fmt:parseNumber integerOnly="true" type="number" value="${num}"/></h2>
    <h2><fmt:formatNumber value="${num}" type="currency" /></h2>
    <h2><fmt:formatNumber type="number" pattern="###.###$" value="${num}" /></h2>
    <h2><fmt:formatDate  value="${cdate}" pattern="yyyy-MM--dd"/></h2>  <!--서버의 시간-->
    <h2>${cust.id}</h2>   <!--getter & setter 없으면 이렇게 못 써요-->
    <h3><c:out value="${cust.name}"/></h3>
    <h3><c:out value="${cust.id}"/></h3><!--jstl 방식-->
    <h3>${num*2}</h3>
    <c:set var="mynum" value="${num*3}"/>
    <h5><c:out value="${mynum}"/></h5>
  </div>
</div>
