<%-- 
    Document   : product
    Created on : 2018-7-15, 13:45:35
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    </head>
    
    <h2>解忧零食铺-从json生成零食页面</h2>
    <body>
        <p>将零食数据（保存到本地 news.json）, 使用jQeury生成了HTML表格页面进行展示</p>
        <p><a href="car.jsp">查看购物车</a></p> 
        <p><a href="ProductList.jsp">查看详情</a></p> 
        <center>
		<table id="news" border="1">
			<tbody></tbody>
		</table>
        </center>
    </body>
    <script>
         var url = "./news.json";
		 //.getJSON() 相当于简写的 .ajax()
		 $.getJSON(url, function(data) {
		 			var tbl_body = "";
		 			var odd_even = false;
		 			$.each(data, function() {
		 				var tbl_row = "";
		 				$.each(this, function(k, v) {
		 					tbl_row ="";
		 					tbl_row += "<td>" + v.title + "</td>";
		 					tbl_row += "<td>" + v.source + "</td>";
		 					tbl_row += "<td>" + v.digest + "</td>";
		 					tbl_row += "<td> <img height=50 width=100 src=" + v.imgsrc + "></td>";
		 					tbl_body += "<tr class=\"" + (odd_even ? "odd" : "even") + "\">" + tbl_row + "</tr>";
		 					odd_even = !odd_even;
		 					console.log(v)
		 				})
		 				
		 			})
		 			$("#news tbody").html(tbl_body);
		 		});
	</script>
</html>
