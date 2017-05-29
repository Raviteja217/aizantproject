<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
System.out.println("getParameter");
String connectionURL = "jdbc:h2:tcp://localhost/~/aizantForms";

System.out.println("getParameters of data base");
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("org.h2.Driver");
con = DriverManager.getConnection(connectionURL, "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
}
System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update user set password='"+Newpass+"' where id='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>