<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script type="text/javascript">
          $(document).ready(function(){               
                    $.ajax({
                         url: "http://localhost:8082/SpringRestCrud/employee/orglist",
                         data: "f=pjson",
                         success: function (data) {
                              console.log(data);
                              createTable(data);
                         }
                    }); 
          });
          
          function createTable(response){
     
        
          var tbl = document.getElementById("tableDiv");
          var tblBody = document.createElement("tbody");

          var header = tbl.createTHead();
          var headerRow = header.insertRow(0);
          var headerCell = document.createElement("th");
          headerCell.innerHTML = "Name";
          headerRow.appendChild(headerCell);
          var headerCell2 = document.createElement("th");
          headerCell2.innerHTML = "Alias";
          headerRow.appendChild(headerCell2);

          JSON.parse(response).fields.forEach(function(field){
            var row = document.createElement("tr");
            var cell = document.createElement("td");
            var cell2 = document.createElement("td");
            cell.innerHTML = field.name;
            cell2.innerHTML = field.alias;
            row.appendChild(cell);
            row.appendChild(cell2);
            tblBody.appendChild(row);
          });
          
          tbl.appendChild(tblBody);
        }          
  </script>   
</head>
<body>
   <table id="tableDiv"></table>
</body>
</html> 