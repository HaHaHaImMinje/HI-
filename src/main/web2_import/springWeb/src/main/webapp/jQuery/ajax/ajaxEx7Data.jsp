<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
Highcharts.chart('container', {

		    title: {
		        text: 'Solar Employment Growth by Sector, 2010-2016'
		    },

		    subtitle: {
		        text: 'Source: thesolarfoundation.com'
		    },

		    yAxis: {
		        title: {
		            text: 'Number of Employees'
		        }
		    },

		    xAxis: {
		        accessibility: {
		            rangeDescription: 'Range: 2010 to 2017'
		        }
		    },

		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle'
		    },

		    plotOptions: {
		        series: {
		            label: {
		                connectorAllowed: false
		            },
		            pointStart: 2010
		        }
		    },

		    series: [{
		        name: 'java',		        
		        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
		    }, {
		        name: 'Oracle',
		        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
		    }, {
		        name: 'Jsp',
		        data: [55,2500,550,350,98,270,999,1050,369,270]
		    }, {
		        name: 'XML',
		        data: [100,50]
		    }, {
		        name: 'Other',
		        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
		    }],

		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 500
		            },
		            chartOptions: {
		                legend: {
		                    layout: 'horizontal',
		                    align: 'center',
		                    verticalAlign: 'bottom'
		                }
		            }
		        }]
		    }

		});