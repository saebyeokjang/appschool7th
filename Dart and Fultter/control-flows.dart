void main() {
  // 조건이 충족 되었는지 확인하기
  bool isFootball = true;

  // if-else statement: 조건이 참이면 if 블록 실행, 거짓이면 else 블록 실행
  if (isFootball) {
    print('Go football');
  } else {
    print('Go Sports!');
  }

  bool isTrue = true;

  // while loop: 조건이 참일 때 실행
  while (isTrue) {
    print('Hello');
    isTrue = false;
  }

  // do-while loop: 조건이 참이든 거짓이든 한 번은 실행
  do {
    print('Hello 2');
  } while (isTrue);

  // switch statement: 다양한 조건을 비교할 때 사용
  int myValue = 2;

  switch (myValue) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    default:
      print('Error: Value not defined?');
  }

  // 슬래시, 별, 쉼표, 세미콜론 등이 상수 변수인 경우...

  String charCode = '1';

  switch (charCode) {
    case '/' || '*' || '+' || '-':
      print('Mathematical operator');
    default:
      print('Unknown');
  }

  int numValue = 5;

  switch (numValue) {
    // 0부터 9까지의 숫자인 경우, 비교 연산자와 논리 연산자를 사용할 수 있음
    case >= 0 && <= 9:
      print('Single digit number');
    default:
      print('Unknown');
  }

  // switch statement with return
  print(smallSwitchReturn(1));

  // for loop: 반복 횟수가 정해진 경우 사용
  int maxIterations = 5;
  for (var i = 0; i < maxIterations; i++) {
    print('Iteration: $i');
  }

  // forEach loop: 배열, 리스트, 맵 등의 요소를 반복할 때 사용
  List daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  // 기본 함수 사용
  daysOfWeek.forEach((day) {
    print(day);
  });

  // forEach loop with arrow function: 람다 함수를 사용하여 간단하게 표현
  daysOfWeek.forEach((day) => print(day));

  // forEach loop with function reference: 함수 참조를 사용하여 간단하게 표현
  daysOfWeek.forEach(print);
}

String smallSwitchReturn(int intValue) {
  return switch (intValue) {
    1 => "value is 1",
    2 => "value is 2",
    _ => "another value"
  };
}