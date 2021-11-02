var httpRequest=null;
   function getXmlHttpRequest(){
	   if(window.ActiveXObject){		      
			   try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			  }catch (e) {
				// TODO: handle exception
			 } 
		} else if(window.XMLHttpRequest){			
			return new XMLHttpRequest();
		} 
	   
		
}//FUNCTION ioc(제어역행)
   
function sendRequest(url,params,callback,method){	
	httpRequest =getXmlHttpRequest();
	var httpMethod=method?method:'GET';
	if(httpMethod!='GET'&& httpMethod!='POST'){
		httpMethod='GET';
	}
	var httpParams=(params==null||params=='')?null:params;
	var httpUrl=url;
	if(httpMethod=='GET' && httpParams!=null){
		httpUrl=httpUrl+"?"+httpParams;
	}
	httpRequest.open(httpMethod,httpUrl,true);
	
	httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	
    httpRequest.onreadystatechange=callback;
    httpRequest.send(httpMethod=='POST'?httpParams:null);
    
}

   











