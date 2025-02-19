<%@ page import="java.util.Calendar" %>
<%
  Calendar cal = Calendar.getInstance();
  int hour = cal.get(Calendar.HOUR_OF_DAY);
  String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<html>
  <body>
    <h1><%= greeting %>, Ny Nguyen, Welcome to COMP367</h1>
  </body>
</html>
