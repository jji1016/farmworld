<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <jsp:include page="header.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<form class="row g-3" action="/user/login" method="get">
  <div id="user_border">
    <div class="col-auto">
      <input
        type="text"
        readonly=""
        class="form-control-plaintext"
        id="staticId"
        value="���̵�(�̸���)"
      />
    </div>
    <div class="col-auto">
      <label for="user_id" class="visually-hidden"></label>
      <input
        type="email"
        class="form-control"
        id="user_id"
        placeholder="���̵�(�̸���)"
      />
    </div>
    <div class="col-auto">
    
      <button type="submit" class="btn btn-primary">�α���</button>
    </div>
  </div>
  <div class="col-auto">
  	<a>
    	<button type="button" class="btn btn-primary">���̵� ã��</button>
    </a>
  </div>
  <div class="col-auto">
  	<a>
    	<button type="button" class="btn btn-primary">��й�ȣ ã��</button>
    </a>
  </div>
  <div class="col-auto">
  	<a href="join.jsp">
    	<button type="button" class="btn btn-primary">ȸ������</button>
    </a>
  </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>