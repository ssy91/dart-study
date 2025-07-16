// quiz1.dart 에서 구현한 사용자DB 를 이용하여 등록된 사용자만이 도서관에서 책을 대여하고, 반납할 수 있는 프로그램을 구현하고자 합니다.
// 도서관에서 대여할 수 있는 종류들은 library 변수에 속해있으며, 현재 대여중인 책들은 RentalStatus 변수에 담겨 있습니다.
// 이미 대여중인 책은 다른 사용자들은 대여할 수 없어야 합니다.
// 도서를 대여하게 될 경우, RentalStatus 에 해당 도서의 value 는 해당 사용자의 ID 로 변경되어야 하며,
// 도서를 반납하게 될 경우, 해당 도서의 value 는 null 로 변경되어야 합니다.
// 한 사용자는 한 도서를 대여한 경우, 추가적으로 대여를 할 수 없습니다.
// 도서를 대여하는 API 는 다음과 같은 구조로 구현되어야 합니다. POST 127.0.0.1:3000/library/rental/{책ID}/{사용자ID}
// 도서를 반납하는 API 는 다음과 같은 구조로 구현되어야 합니다. POST 127.0.0.1:3000/library/return/{책ID}/{사용자ID}

import 'dart:convert';
import 'dart:io';

void create(Map database, HttpRequest request) async {
  // 생성 코드 작성
  var content = await utf8.decoder.bind(request).join();
  var transaction = jsonDecode(content) as Map;
  var key, value;
  print("\> content       : $content");
  transaction.forEach((k, v) {
    key = k;
    value = v;
  });
  if (database.containsKey(key) == false) {
    database[key] = value;
    content = "Success < $transaction created >";
  } else {
    content = "Fail < $key already exit >";
  }

  printAndSendHttpResponse(database, request, content);
}

void read(Map database, HttpRequest request) async {
  // 조회 코드 작성
  var key = request.uri.pathSegments.last;
  var content, transaction;

  if (database.containsKey(key) == true) {
    transaction = {};
    transaction[key] = database[key];
    content = "Success < $transaction retrieved >";
  } else {
    content = "Fail < $key not-exit >";
  }

  printAndSendHttpResponse(database, request, content);
}

void update(Map database, HttpRequest request) async {
  var content = await utf8.decoder.bind(request).join();
  var transaction = jsonDecode(content) as Map;
  var key, value;

  print("\> content        : $content");

  transaction.forEach((k, v) {
    key = k;
    value = v;
  });

  if (database.containsKey(key) == true) {
    database[key] = value;
    content = "요청 성공 < $transaction updated >";
  } else {
    content = "요청 실패 < $key not-exist >";
  }
  printAndSendHttpResponse(database, request, content);
}

void delete(Map database, HttpRequest request) async {
  var key = request.uri.pathSegments.last;
  var content, value;

  if (database.containsKey(key) == true) {
    value = database[key];
    database.remove(key);
    content = "요청 성공 < {$key, $value} deleted >";
  } else {
    content = "요청 실패 < $key not-exist >";
  }
  printAndSendHttpResponse(database, request, content);
}

// 도서 대여 기능
void rentBook(
  Map users,
  Map library,
  Map rentalStatus,
  HttpRequest request,
) async {
  var segmets = request.uri.pathSegments;
  var bookId = segmets[2];
  var userId = segmets[3];

  String content;

  if (users.containsKey(userId)) {
    content = "Fail < 사용자 $userId 등록되지 않음 >";
  } else if (library.containsKey(bookId)) {
    content = "Fail < 도서 $bookId 존재하지 않음 >";
  } else if (rentalStatus.containsValue(userId)) {
    content = "Fail < 사용자 $userId 는 이미 도서를 대여 중 >";
  } else if (rentalStatus[bookId] != null) {
    content = "Fail < 도서 $bookId 는 이미 대여 중 >";
  } else {
    rentalStatus[bookId] = userId;
    content = "Success < 도서 $bookId 가 사용자 $userId 에게 대여됨 >";
  }

  printAndSendHttpResponse(users, request, content);
}

// 도서 반납 기능
void returnBook(
  Map users,
  Map library,
  Map rentalStatus,
  HttpRequest request,
) async {
  var segmets = request.uri.pathSegments;
  var bookId = segmets[2];
  var userId = segmets[3];

  String content;

  if (users.containsKey(userId)) {
    content = "Fail < 사용자 $userId 등록되지 않음 >";
  } else if (library.containsKey(bookId)) {
    content = "Fail < 도서 $bookId 존재하지 않음 >";
  } else if (rentalStatus[bookId] != userId) {
    content = "Fail < 도서 $bookId 는 사용자 $userId 에게 대여되지 않음 >";
  } else {
    rentalStatus[bookId] = null;
    content = "Success < 도서 $bookId 반납완료 >";
  }

  printAndSendHttpResponse(users, request, content);
}

Future main() async {
  Map users = {};

  Map library = {
    "001": "차라투스트라는 이렇게 말했다.",
    "002": "용의자 X 의 헌신",
    "003": "정의란 무엇인가",
    "004": "존재와 시간",
    "005": "죽음의 수용소에서",
  };

  Map rentalStatus = {
    "001": null,
    "002": null,
    "003": null,
    "004": null,
    "005": null,
  };

  var database = <dynamic, dynamic>{};
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  ;

  printHttpServerActivated(server);

  await for (HttpRequest request in server) {
    if (request.uri.path.contains('/user') == true) {
      printHttpRequestInfo(request);

      try {
        switch (request.method) {
          // 메서드들에 대한 CASE 작성
          case 'POST':
            create(users, request);
            break;
          case 'GET':
            read(users, request);
            break;
          case 'PUT':
            update(users, request);
            break;
          case 'DELETE':
            delete(users, request);
            break;

          default:
            print("\$ 지원하지 않는 메서드입니다.");
            break;
        }
      } catch (err) {
        print("\$ 요청 수행 중 에러가 발생했습니다.");
      }
    } else {
      printAndSendHttpResponse(
        database,
        request,
        "${request.method} {에러: 지원하지 않는 API 입니다.}",
      );
    }
  }
}

void printHttpServerActivated(HttpServer server) {
  var ip = server.address.address;
  var port = server.port;

  print('\$ Server activated in $ip:$port');
}

void printHttpRequestInfo(HttpRequest request) async {
  var ip = request.connectionInfo!.remoteAddress.address;
  var port = request.connectionInfo!.remotePort;
  var method = request.method;
  var path = request.uri.path;

  print('\$ $method $path from $ip:$port');

  if (request.headers.contentLength != -1) {
    print('\> content-type: ${request.headers.contentType}');
    print('\> content-lendth: ${request.headers.contentLength}');
  }
}

void printAndSendHttpResponse(
  Map database,
  HttpRequest request,
  String content,
) async {
  print("\$ $content \n current DB      : $database");
  request.response
    ..headers.contentType = ContentType('text', 'plain', charset: 'utf-8')
    ..headers.contentLength = content.length
    ..statusCode = HttpStatus.ok
    ..write(content);

  await request.response.close();
}
