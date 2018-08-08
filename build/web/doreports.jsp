<%@page import="moira.Profile"%>
<%@page import="moira.Model"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
   Model model=new Model();
   ArrayList<Profile> profiles=new ArrayList<Profile>();
   File file ;
   String fileName="";
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   String filePath = model.getBaseDirectory();

   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("c:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                fileName = fi.getName();
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath + "reports.csv") ;
                fi.write( file ) ;
                out.println("Uploaded Filename: " + filePath + fileName + "<br>");
            }
         }
         out.println("</body>");
         out.println("</html>");
         profiles=model.processReport(filePath +"reports.csv");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>
<%@include file="header.jsp" %>
        <div class="clearfix"></div>
        <!-- //w3_agileits_top_nav-->

        <!-- /inner_content-->
        <div class="inner_content">
            <!-- /inner_content_w3_agile_info-->

            <!-- breadcrumbs -->
            <div class="w3l_agileits_breadcrumbs">
                <div class="w3l_agileits_breadcrumbs_inner">
                    <ul>
                        <li><a href="main-page.html">Home</a><span>«</span></li>
                        <li>Customers <span>«</span></li>
                        <li>Reports</li>
                    </ul>
                </div>
            </div>
            <!-- //breadcrumbs -->

            <div class="inner_content_w3_agile_info two_in">
                <h2 class="w3_inner_tittle">Reports</h2>

                <!--/forms-->
                <div class="forms-main_agileits">

                    <div class="graph-form agile_info_shadow">
                        <h3 class="w3_inner_tittle two">Customer Churn Reports</h3>
                        <table class="table table-stripped">
                            <tr>
                                <td>Phone Number</td>
                                <td>Internet Plan</td>
                                <td>Voice</td>
                                <td>Preferred Plan</td>
                                <td>Churn</td>
                                <td>Action</td>
                            </tr>   
                  <%
                  int x=profiles.size();           
                  for(int c=0;c< x; c++){     
                  String choice="None";
                  Profile profile=profiles.get(c);
                  if(profile.getInternetPlan().contains("yes")){
                  choice="Internet";
                  }
                  if(profile.getVoice().contains("yes")){
                  choice ="Voice calls";                  
                  }
                  if(profile.getVoice().contains("yes") && profile.getInternetPlan().contains("yes")){
                  choice="Internet and Voice";
                  }
                  out.print("<tr><td>"+profile.getNumberFormat()+"</td><td>"+profile.getInternetPlan()+"</td><td>"+profile.getVoice()+"</td><td>"+choice+"</td><td>"+profile.getChurn()+"</td><td><a href='' class='btn btn-sm btn-primary'>Send Promotion</a></td></tr>");
                  }
                  %>          
                        </table>

                    </div>
                </div> 
                <!--//forms-->											   


            </div>
            <!-- //inner_content_w3_agile_info-->
        </div>
        <!-- //inner_content-->
    </div>
    <%@include file="footer.jsp" %>
