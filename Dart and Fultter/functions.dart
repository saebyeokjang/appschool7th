void main() {
  // main function
  // 실습: 함수 선언 및 호출

  // 함수 호출
  getCurrentDateTime();

  var hourDifference = -7;
  getCurrentDateTimeWithDifference(hourDifference);

  printGreetingNamed();
  printGreetingNamed(personName: "Rich");
  printGreetingNamed(personName: "Mary", clientId: 001);
}

void printGreetingNamed({String personName = 'Stranger', int clientId = 999}) {
  if (personName.contains('Stranger')) {
    print('Employee: $clientId, Stranger danger!');
  } else {
    print('Employee: $clientId, Hello $personName');
  }
}

// 함수 선언
void getCurrentDateTime() {
  // 현재 시간을 가져오는 함수
  var currentTime = DateTime.now();
  print('Current time: $currentTime');
}

// 파라미터가 있는 함수 선언
void getCurrentDateTimeWithDifference(int hourDifference) {
  // 현재 시간을 가져오는 함수
  var timeNow = DateTime.now();
  // 시간 차이를 계산
  var timeDifference = timeNow.add(Duration(hours: hourDifference));

  print('Current time: $timeNow');
  print('Time with Difference: $timeDifference');
}