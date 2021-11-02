<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   fieldset{
	 width: 400px;
	 /* height: 300px; */
   }
</style>
</head>
<body>
   <form action="basic1reuslt.jsp">
     <fieldset  id="fieldset1">
        <legend>필수항목</legend>
        <ul>
           <li>
              <label>신발Size(Cm)</label>
              <input id="size" name="size" type="number" min="200" max="300" autofocus="autofocus">
           </li>
           <li>
              <label>이름</label>
              <input id="name" name="name" type=text required="required"  maxlength="4">
           </li>   
           <li>
              <label>이메일</label>
              <input id="email" name="email" type="email" placeholder="example@xxx.yyy" required="required">
           </li>   
        </ul>
     </fieldset> 
      <fieldset  id="fieldset2">
        <legend>선택항목</legend>
        <ul>
          <li>
            <label>연락처</label>
            <input type="tel" name="tel" placeholder="00xx-000x-0000" pattern="[0-9]{2,4}-[0-9]{3,4}-[0-9]{4}">
          </li>
          <li>
            <label>생일</label>
            <input type="date" min="1980-01-01" max="2021-08-20" name="birth">
          </li>
          <li>
             <label>홈페이지</label>
             <input type="url" name="homepage">
          </li>
          <li>
             <label>좋아하는색</label>
             <input type="color" name="color">
          </li>
          <li>
             <label>성별</label>
             <input type=text list=genderlist name="gender" id="gender">
             <datalist id="genderlist">
               <option value="male" label="남">
               <option value="female" label="여">               
             </datalist>
          </li>          
          <li>
             <label>좋아하는과일</label>
             <input type=text list=list name="fruit" id="flist">
             <datalist id="list">
               <option value="딸기" label="딸기">
               <option value="포도" label="포도">               
               <option value="수박" label="수박">               
               <option value="멜론" label="멜론">               
             </datalist>
          </li>          
        </ul>        
      </fieldset> 
      <input type="submit">Submit
   </form>
</body>
</html>















