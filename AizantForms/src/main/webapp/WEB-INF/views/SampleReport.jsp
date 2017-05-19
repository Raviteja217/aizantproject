
<%@  page contentType="application/pdf"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import ="net.sf.jasperreports.engine.*"%>
<%@ page import ="net.sf.jasperreports.engine.data.*"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.util.*"%>
<%@ page  import="java.util.Map"%>
<%@ page  import="org.springframework.context.annotation.Bean"%>

<%@ page  import="org.springframework.jdbc.datasource.DriverManagerDataSource"%>
<%

try{
	
String jrxmlFile=session.getServletContext().getRealPath("/reports/sampleReport.jrxml");
InputStream input = new FileInputStream(new File(jrxmlFile));
JasperReport report = JasperCompileManager.compileReport(input);

JasperPrint print = JasperFillManager.fillReport(report,new HashMap<String,Object>(),new JREmptyDataSource());
JasperExportManager.exportReportToPdfStream(print,response.getOutputStream());
response.getOutputStream().flush();
response.getOutputStream().close();
}
catch(Exception e){
e.printStackTrace();
}

%>
