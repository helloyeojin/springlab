<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="col-sm-8 text-left">
  <div class="container">
    <h1>map center</h1>
    <img src="/uimg/${gmarker.img}" style="width:300px">
    <h4>${gmarker.id}</h4>
    <h4><a href="${gmarker.target}">${gmarker.title}</a></h4>
    <div class="row content">
      <div class="col-sm-8 text-left">
        <h3>MENU LIST</h3>
        <table class="table table-hover">
          <thead>
          <tr>
            <th>IMG</th>
            <th>ITEM</th>
            <th>PRICE</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="m" items="${mlist}">
            <tr>
              <td><img src="/uimg/${m.imgname}" style="width:300px"></td>
              <td>${m.item}</td>
              <td>${m.price}</td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>  <!--row-content ends-->
  </div>
</div>
