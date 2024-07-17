<%-- 
    Document   : formulario-productos.jsp
    Created on : 3/07/2024, 09:38:21
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<link href="estilos.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Add a product</title>
        <link integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./estilos.css">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.jsp">Return to Home</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">More</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="../index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../listar-productos/listar-producto.jsp">Our Products</a>
                </li>
                <li class="nav-item dropdown">
                </li>
              </ul>
            </div>
          </div>
        </div>
    </nav>
        <br>
        <br>
        <div class="container mt-5 w-75">
            <% ArrayList<String> productos = (ArrayList) request.getAttribute("producto"); %>
            <ul class="bullets">
                <% if (productos != null) { %>
                <p style="text-align: center;">¡Supplement added successfully!</p>
                <% for (String prod : productos) { %>
                <li style="text-align: center;"><%= prod %></li>
                    <% } %>
                    <% } %>
            </ul>
        </div>
        
        <div class="container mt-5 w-75">
            <form action="SGDBProductosIN5CM/producto-servlet/"  method="post" enctype="multipart/form-data">
                <div class="form-floating">
                    <input class="form-control" id="nombreProducto" name="nombreProducto" type="text" placeholder="" />
                    <label for="nombreProducto">Name</label>
                </div>

                <div class="form-floating mt-4">
                    <textarea class="form-control" placeholder="" id="descripcionProducto" name="descripcionProducto"></textarea>
                    <label for="descripcionProducto">Description</label>
                </div>

                <div class="form-floating mt-4">
                    <input class="form-control" id="marcaProducto" name="marcaProducto" type="text" placeholder="" />
                    <label for="marcaProducto">Brand</label>
                </div>

                <div class="input-group mb-3 mt-4">
                    <span class="input-group-text">$</span>
                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="precioProducto" />
                    <span class="input-group-text">.00</span>
                </div>

                <div class="d-flex justify-content-between">
                    <input class="btn btn-success" type="submit" value="Click to add a new supplement">
                    <button type="button" class="btn btn-danger" onclick="clearForm()">Clear</button>
                </div>
            </form>
        </div>

        <script>
            function clearForm() {
                document.getElementById('nombreProducto').value = '';
                document.getElementById('descripcionProducto').value = '';
                document.getElementById('marcaProducto').value = '';
                document.getElementsByName('precioProducto')[0].value = '';
            }
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>


