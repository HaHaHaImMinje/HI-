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
        <legend>�ʼ��׸�</legend>
        <ul>
           <li>
              <label>�Ź�Size(Cm)</label>
              <input id="size" name="size" type="number" min="200" max="300" autofocus="autofocus">
           </li>
           <li>
              <label>�̸�</label>
              <input id="name" name="name" type=text required="required"  maxlength="4">
           </li>   
           <li>
              <label>�̸���</label>
              <input id="email" name="email" type="email" placeholder="example@xxx.yyy" required="required">
           </li>   
        </ul>
     </fieldset> 
      <fieldset  id="fieldset2">
        <legend>�����׸�</legend>
        <ul>
          <li>
            <label>����ó</label>
            <input type="tel" name="tel" placeholder="00xx-000x-0000" pattern="[0-9]{2,4}-[0-9]{3,4}-[0-9]{4}">
          </li>
          <li>
            <label>����</label>
            <input type="date" min="1980-01-01" max="2021-08-20" name="birth">
          </li>
          <li>
             <label>Ȩ������</label>
             <input type="url" name="homepage">
          </li>
          <li>
             <label>�����ϴ»�</label>
             <input type="color" name="color">
          </li>
          <li>
             <label>����</label>
             <input type=text list=genderlist name="gender" id="gender">
             <datalist id="genderlist">
               <option value="male" label="��">
               <option value="female" label="��">               
             </datalist>
          </li>          
          <li>
             <label>�����ϴ°���</label>
             <input type=text list=list name="fruit" id="flist">
             <datalist id="list">
               <option value="����" label="����">
               <option value="����" label="����">               
               <option value="����" label="����">               
               <option value="���" label="���">               
             </datalist>
          </li>          
        </ul>        
      </fieldset> 
      <input type="submit">Submit
   </form>
</body>
</html>















