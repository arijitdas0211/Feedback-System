<nav class="navbar navbar-expand-lg bg-body-tertiary shadow-sm">
  <div class="container">
    <a class="navbar-brand fs-3 fw-bold" href="<%= application.getContextPath() %>/index.jsp">Feedback</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      	<!-- Home Page -->
        <li class="nav-item m-2">
          <a class="nav-link active" href="<%= application.getContextPath() %>/index.jsp">HOME</a>
        </li>
      	<!-- About Page -->
        <li class="nav-item m-2">
          <a class="nav-link active" href="<%= application.getContextPath() %>/about.jsp">ABOUT</a>
        </li>
      </ul>

    </div>
  </div>
</nav>
