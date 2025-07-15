import 'dart:io';
import 'dart:convert';

void printHttpServerActivated(HttpServer server) {
  var ip = server.address.address;
  var port = server.port;

  print('\$ Server activated in ${ip}:${port}');
}

void printHttpRequestInfo(HttpRequest request) async {
  var ip = request.connectionInfo!.remoteAddress.address;
  var port = request.connectionInfo!.remotePort;
  var method = request.method;
  var path = request.method;
  print("\$ $method $path from $ip:$port");

  if (request.headers.contentLength != -1) {
    print("\> content-type   : ${request.headers.contentType}");
    print("\> content-length : ${request.headers.contentLength}");
  }
}

void httpGetHandler(HttpRequest request) async {
  if (request.uri.path == '/') {
    var content = "Hello, World!";
    request.response
      ..headers.contentType = ContentType('text', 'plain', charset: "utf-8")
      ..headers.contentLength = content.length
      ..statusCode = HttpStatus.ok
      ..write(content);
  } else if (request.uri.path.contains('/add')) {
    var vars = request.uri.path.split(',');
    var result = int.parse(vars[1]) + int.parse(vars[2]);
    var content = "${vars[1]} + ${vars[2]} = $result";
    request.response
      ..headers.contentType = ContentType('text', 'plain', charset: "utf-8")
      ..headers.contentLength = content.length
      ..statusCode = HttpStatus.ok
      ..write(content);
  } else if (await File(request.uri.path.substring(1)).exists() == true) {
    var file = File(request.uri.path.substring(1));
    var content = await file.readAsString();
    request.response
      ..headers.contentType = ContentType('text', 'plain', charset: "utf-8")
      ..headers.contentLength = content.length
      ..statusCode = HttpStatus.ok
      ..write(content);
  } else {
    var content = "Unsupported URI";
    request.response
      ..headers.contentType = ContentType('text', 'plain', charset: "utf-8")
      ..headers.contentLength = content.length
      ..statusCode = HttpStatus.notFound
      ..write(content);
  }
  await request.response.close();
}

Future main() async {
  var ip = InternetAddress.loopbackIPv4;
  var port = 4040;

  var server = await HttpServer.bind(ip, port);

  // HTTP 에서 가장 많이 사용할 메서드 4가지
  // 1. GET : 우리가 서버에게 어떤것을 (읽겠다) 라고 보내는 요청
  // 2. POST : 우리가 서버에게 어떤 것을 쓰겠다 (생성하겠다) 라고 보내는 요청
  // 3. PUT : 우리가 서버에게 어떤 것을 쓰겠다 (수정하겠다) 라고 보내는 요청
  // 4. DELETE : 우리가 서버에게 어떤 것을 (삭제하겠다) 라고 보내는 요청
}
