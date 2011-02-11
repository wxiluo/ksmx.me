<%inherit file="base.mako" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    
    ${self.head()}
</head>

<body>

<div id="wrapper" class="container_12">
    ${self.header()}
    
    <div id="content">
    
        ${self.nav()}
        
    <div id="main" class="grid_8 alpha">
    
        ${next.body()}
    
    </div> <!-- end main -->
    
    <div id="sidebar" class="grid_4 omega">
        ${self.sidebar()}
    </div> <!-- end sidebar -->
    
    </div> <!-- end content -->
    
    <footer id="footer" class="grid_12">
        ${self.footer()}
    </footer> <!-- end footer -->

    <div class="clear"></div>

</div> <!-- end wrapper -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>

</body>
</html>
<%def name="head()">
  <%include file="head.mako" />
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="nav()">
  <%include file="nav.mako" />
</%def>
<%def name="sidebar()">
  <%include file="sidebar.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
