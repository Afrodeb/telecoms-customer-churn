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
                <h2 class="w3_inner_tittle">Upload CSV file</h2>

                <!--/forms-->
                <div class="forms-main_agileits">

                    <div class="graph-form agile_info_shadow">
                        <h3 class="w3_inner_tittle two">Build customer profile below </h3>
                        <div class="form-body">
                            <form action="doreports.jsp" method="post" enctype = "multipart/form-data"> 
                                <div class="form-group"> 
                                    <label for="exampleInputEmail1">File</label> 
                                    <input type="file" name="file" class="form-control"> 
                                </div> 
                                <button type="submit" class="btn btn-default">Submit</button> 
                            </form> 
                        </div>

                    </div>
                </div> 
                <!--//forms-->											   


            </div>
            <!-- //inner_content_w3_agile_info-->
        </div>
        <!-- //inner_content-->
    </div>
                                    <%@include file="footer.jsp" %>