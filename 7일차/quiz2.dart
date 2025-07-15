// localhost:8080 으로 접근할 수 있는 서버를 생성하고,
// 크롬 검색창에서 localhost:8080/capital=Korea 과 같이 입력했을 때,
// 다음과 같이 출력이 되는 기능을 만드세요.
// [Korea의 수도는 Seoul 입니다.]
// 단, 수도가 입력되지 않은 경우는 다음과 같이 출력되어야 합니다.
// [유효하지 않은 수도를 입력하셨습니다.]
import 'dart:io';

void main() async {
  // 수도 정보를 담은 Map
  Map<String, String> capital = {
    "Korea": "Seoul",
    "Japan": "Tokyo",
    "China": "Beijing",
    "Canada": "Ottawa",
    "Austrailia": "Canberra",
  };

  // 서버 시작
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('서버가 http://localhost:8080 에서 실행 중입니다.');

  await for (HttpRequest request in server) {
    // 요청 URL에서 파라미터 추출
    String path = request.uri.path; // 예: /capital=Korea
    String responseText;

    if (path.startsWith('/capital=')) {
      String country = path.substring('/capital='.length);
      if (capital.containsKey(country)) {
        responseText = '$country의 수도는 ${capital[country]} 입니다.';
      } else {
        responseText = '유효하지 않은 수도를 입력하셨습니다.';
      }
    } else {
      responseText = '유효하지 않은 요청입니다.';
    }

    // 응답 전송
    request.response
      ..statusCode = HttpStatus.ok
      ..headers.contentType = ContentType.text
      ..write(responseText)
      ..close();
  }
}
