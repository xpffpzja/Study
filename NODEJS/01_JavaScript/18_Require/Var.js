// node Var.js

const odd = '홀수 입니다.';
const even = '짝수 입니다.';

// jsp의 indlude와 비슷한 구조를 구성
// 자바가 있는 파일을 아무런 조치없이 include해서 사용하는 반면
// 자바스크립트는 현재 파일에서 공유하고자 하는 변수나 함수를 export해서 외부에 공유한 후에,
// 다른 파일에서 가져다 쓸수 있음. 

//module.exports = {odd:odd, even:even };
module.exports = {odd, even };

// 만들어진 객체를 modul.exports에 저장하면 그 객체는 외부로 내보내짐.
// 딱히 어느 파일로 내보낸다라는 방향은 없고,
// exports 되었다라는걸 알고 있는 파일에서 require 해서 사용.
// module 이라는 다위로, 이름은 파일이름인 Var로 exports 됨.

// node Var.js