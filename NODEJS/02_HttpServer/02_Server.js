// node 02_Server.js

const http = require('http');
const fs = require('fs').promises;

const server = http.createServer(
    async(req, res)=>{
        try{
        const data = await fs.readFile('./index.html');
        res.writeHead(200, {'Content-Type' : 'text/html; charset=utf-8'});
        res.end(data);
        }catch(err){

            res.writeHead(500, {'Content-Type' : 'text/plain; charset=utf-8'});
            res.end(err.message);

        }
    }
);

server.listen(3000, ()=>{console.log('3000포트에서 서버 대기중....');});

// http 상태코드
// 2xx : 서버 전송 정상 완료.
// 3xx : 리다이렉션(다른 페이지로 이동)을 알리는 상태
// 4xx : 요청 오류를 나타냅니다. 요청 자체에 오류가 있을 때 표시됨.
// 5xx : 서버오류 - 요청은 제대로 왔지만 서버에 오류가 생겼을때 발생.






// node 02_Server.js