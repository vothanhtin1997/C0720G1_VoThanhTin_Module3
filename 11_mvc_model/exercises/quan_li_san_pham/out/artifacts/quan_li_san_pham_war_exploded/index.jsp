<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/4/2020
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <title>Quan Li San Pham</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h2  style="text-align: center">DANH SACH KHACH HANG</h2>
<form action="" method="get" class="form" style="text-align: center">
  <table class="table">
    <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">COST</th>
      <th scope="col">NSX</th>
      <th scope="col">ACTION</th>
    </tr>
    </thead>
    <tbody>
  <c:forEach var="product" items="${listProduct}">
    <tr>
      <th scope="row"><c:out value="${product.id}"/></th>
      <td><c:out value="${product.name}"/></td>
      <td><c:out value="${product.cost}"/></td>
      <td><c:out value="${product.nsx}"/></td>
      <td>
        <a href="?action=edit&id=${product.id}" class="btn btn-warning">Edit</a>
        <a href="?action=delete&id=${product.id}" class="btn btn-danger">Delete</a>
      </td>
    </tr>
  </c:forEach>
    </tbody>
  </table>
</form>
  <div>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Create New Product</button>
    <form action="?action=create" method="post" class="form">
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">New Product</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form>
                <div class="form-group">
                  <label class="col-form-label">Id :</label>
                  <input type="hidden" class="form-control" id="recipient-name" name="id">
                </div>
                <div class="form-group">
                  <label  class="col-form-label">Name : </label>
                  <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                  <label  class="col-form-label">Cost : </label>
                  <input type="text" class="form-control" name="cost">
                </div>
                <div class="form-group">
                  <label  class="col-form-label">Nsx : </label>
                  <input type="text" class="form-control" name="nsx">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <input type="submit" class="btn btn-primary" value="CreateNew">
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
<br>
<form action="" method="get" class="form">
  <a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href="?action=findName">SearchByName: </a>
  <br>
  <input type="text" class="form-control" name="search">
</form>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>