<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="col-sm-8 text-left">
  <div class="container">
    <div class="row content">
      <div class="col-sm-9 text-left">
        <h1>MY CART</h1>
        <c:set var="total" value="0"/>
        <table class="table table-hover">
          <thead>
          <tr>
            <th>IMG</th>
            <th>ITEM_ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>COUNT</th>
            <th>TOTAL</th>
            <th>REGDATE</th>
            <th>DELETE</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="obj" items="${allcart}">
            <tr>
              <td><img id="item_img" src="/uimg/${obj.item_imgname}" alt="${obj.item_imgname}" style="width:100px; height:100px"/></td>
              <td><a href="/item/get?id=${obj.item_id}">${obj.item_id}</a></td>
              <td>${obj.item_name}</td>
              <td><fmt:formatNumber value="${obj.item_price}" pattern="###,###원"/></td>
              <td>${obj.cnt}</td>
              <td>${obj.cnt * obj.item_price}</td>
              <td><fmt:formatDate  value="${obj.rdate}" pattern="yyyy-MM-dd"/></td>
              <td><a href="/item/delcart?id=${obj.id}" class="btn btn-primary" role="button">DELETE</a></td>
            </tr>
            <c:set var="total" value="${total + (obj.cnt * obj.item_price)}"/>
          </c:forEach>
          </tbody>
        </table>
        <h4>Total : <fmt:formatNumber value="${total}" pattern="###,###원"/></h4>
      </div>
    </div>  <!--row-content ends-->
  </div>
</div>