<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
    String state=request.getParameter("state");
    
%>
<%
  if(state.equals("dom")){
%>
Definition and Usage
The getElementsByTagName() method returns a collection of an elements's child elements with the specified tag name, as a NodeList object.
The NodeList object represents a collection of nodes. The nodes can be accessed by index numbers. The index starts at 0.
Tip: You can use the length property of the NodeList object to determine the number of child nodes with the specified tag name, then you can loop through all nodes and extract the info you want.

Tip: The parametervalue "*" returns all of the element's child elements.
<%
  }else{
%>

Definition and Usage
The click() method simulates a mouse-click on an element.

This method can be used to execute a click on an element as if the user manually clicked on it.
<%
  }
%>