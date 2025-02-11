void main() {
  // String 타입의 리스트 선언
  List<String> months = [
    'January',
    'February',
    'March',
  ];

  // 리스트에 요소 추가
  months.add('April');

  // 리스트의 모든 요소 출력
  months.forEach(print);

  // 인덱스를 사용하여 리스트 요소 접근
  print(months[0]); // January 출력

  // 리스트의 길이 확인
  print(months.length); // 4 출력
}