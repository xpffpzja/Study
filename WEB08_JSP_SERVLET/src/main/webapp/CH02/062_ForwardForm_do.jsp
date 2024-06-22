<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%  
String sAge = request.getParameter("age");
int age = Integer.parseInt(sAge);

//19세 이하는 되돌아감. 10세 이상이면 통과 페이지로 이동
// 20세 미만일때 "입장 불가합니다." 라는 alert창 표시하고 되돌아감.

if(age<20){
	
%>

<script type="text/javascript">
		alert("20세 미만이므로 입장이 불가합니다.");
		history.go(-1); //뒤로 버튼을 클릭한 효과
		// location.href='061_ForwardForm.jsp';
</script>	
<!-- html head body 등이 없다고 해서 다른 태그를 사용 못하는게 아님. 그들은 양식일뿐 html태그는 어디서든 사용이 가능. 자바스크립트 포함. -->

<%	
}else{

	// 063_ForwardResult.jsp로 이름과 나이를 갖고감.
	
	// request객체에는 Attribute라는 저장소(HashMap 형식과 비슷한 멤버변수)가 있음.
	// 전달할 데이터를 Attribute에다가 각 자료의 이름과 값을 같이 저장하고,
	// forward(이동)하면 목적지에 해당 데이터가 같이 이동.
	
	//Attribute라는 저장소에 "name"이라는 이름으로 "홍길동"이라는 값을 저장해두고 이동(forward)함.
	// 이때 현재 페이지의 request와 response도 같이 이동함.(forward의 특징)
	request.setAttribute("name", "홍길동"); // "name"이 key, "홍길동" value
	
	
	// request와 response를 담고 이동(forward)할 객체를 생성
	RequestDispatcher rd = request.getRequestDispatcher("063_ForwardResult.jsp");
	
	//현재의 request와 response를 갖고 객체에 설정된 목적지로 이동
	rd.forward(request, response);
	
	// 현재 페이지의 request객체의 수명은 forward로 전달될 다음페이지 까지.
	// forward 방식으로 이동된 페이지는 한글에 대한 "인코딩 작업이 필요가 없음."
	
}
 %>