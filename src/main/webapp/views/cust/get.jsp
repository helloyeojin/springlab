<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

  $(function(){
    register_form.init();
  });
</script>

<div class="col-sm-8 text-left">
  <div class = "container">
    <h1>Profile  Page</h1>
    <form id="update_form" name="update_form">
      <div class="form-group"><label class="form-label">ID: </label>
        <input type="text" name= "id" id="id" value="${gcust.id}"/></div>

      <div class="form-group"><label class="form-label">PW: </label><input type="text" id="pwd" name="pwd" value="${gcust.pwd}"/></div>
      <div class="form-group"><label class="form-label">이름: </label><input type="text" id="name" name="name" value="${gcust.name}"/></div>
      <button type="button" id="update_btn">Update</button>
      <button type="button" id="remove_btn">Delete</button>
    </form>

  </div>
</div>

