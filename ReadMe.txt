JSP LANGUAGE

<%! int n; %> DECLARATION
<% n++; %> SCRIPTLET
<%= n %> EXPRESSION
${n} EXPRESSION NEW STANDARD ANY NULL WILL BE ""
OR
<jsp:Decl/scriptlet/exp> // </jsp:Decl/scriptlet/exp>
----------------------------------------------------------------
<jsp:include></jsp:include> INCLUDE A NEW PAGE


SERVLET or JEMVC

Redirect or Forward when we send a response to the user
From servlet a jsp we use forward
Redirect will create a new request without external parameters

SpringMVC 

Used to create rest services