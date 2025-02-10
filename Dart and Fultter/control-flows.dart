void main() {
  // 조건이 충족되었는지 확인하기
  bool isFootball = true;

  if (isFootball) {
    print('Go football');
  } else {
    print('Go Sports!');
  }

  bool isTrue = true;

  // while loop 조건이 참일 때 실행
  while (isTrue) {
    print('Hello');
    isTrue = false;
  }

  // do-while loop: 조건이 참이든 거짓이든 한 번은 실행
  do {
    print('Hello 2');
  } while (isTrue);
}