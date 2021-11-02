<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
Definition and Usage
The getElementsByTagName() method returns a collection of an elements's child elements with the specified tag name, as a NodeList object.
The NodeList object represents a collection of nodes. The nodes can be accessed by index numbers. The index starts at 0.
Tip: You can use the length property of the NodeList object to determine the number of child nodes with the specified tag name, then you can loop through all nodes and extract the info you want.