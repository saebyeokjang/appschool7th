import '../../../../test_dart_sample.dart';
import 'package:test/test.dart';

void main() {
  // 'Travel Distance' 테스트 케이스 정의
  test('Travel Distance', () {
    // Arrange
    var distance = 10.0;
    var expectedDistance = distance;

    // Act
    var travel = Travel(distance);
    var result = travel.distance;

    // Assert
    expect(result, expectedDistance);
  });
}