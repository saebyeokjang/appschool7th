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

  // List advanced
  List<int> numbers = [1, 2, 3, 4, 5];

  // 특정 인덱스에 요소 추가
  numbers.insert(2, 10); // 1, 2, 10, 3, 4, 5

  // 값 제거
  numbers.remove(4); // 1, 2, 10, 3, 5

  // 값 제거 (인덱스 사용)
  numbers.removeAt(2); // 1, 2, 3, 5

  // 조건에 따라 필터링
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers); // 2 출력

  // 각 요소를 제곱하여 새로운 리스트 생성
  List<int> squaredNumbers = numbers.map((number) => number * number).toList();
  print(squaredNumbers); // 1, 4, 9, 25 출력

  // 영화 정보를 담는 Map 생성
  Map<String, dynamic> filmStarWars = {
    'title': 'Star Wars',
    'year': 1977,
  };

  Map<String, dynamic> filmEmpire = {
    'title': 'Empire Strikes Back',
    'year': 1980,
  };

  Map<String, dynamic> filmJedi = {
    'title': 'The Return of the Jedi',
    'year': 1983,
  };

  List listFilms = [filmStarWars, filmEmpire, filmJedi];

  Map<String, dynamic> currentFilm = listFilms[0];

  var currentFilmTitle = currentFilm['title'];
  print(currentFilmTitle); // Star Wars 출력

}