import 'dart:math';

void main() {
  // 1️⃣ 중복 없이 번호를 추첨하여 복권을 발급 하는 기능

  Set<int> mySix = {};

  while (mySix.length < 6) {
    int a = Random().nextInt(45) + 1;
    mySix.add(a);
  }

  List<int> mySixList = mySix.toList();

  print('발급한 로또 번호 : $mySixList');

  // 2️⃣ 발급한 복권의 번호와 당첨 번호 비교 기능

  // 당첨 번호

  Set<int> lottoSix = {};

  while (lottoSix.length < 6) {
    int a = Random().nextInt(45) + 1;
    lottoSix.add(a);
  }

  List<int> lottoSixList = lottoSix.toList();

  print('당첨 번호 : $lottoSixList');

  // 당첨 여부

  int match = 0;

  for (int i = 0; i < 6; i++) {
    if (lottoSixList.contains(mySixList[i])) {
      match += 1;
    }
  }

  switch (match) {
    case >= 5:
      print('당첨 여부 : 1등');
    case 4:
      print('당첨 여부 : 2등');
    case 3:
      print('당첨 여부 : 3등');
    case <= 2:
      print('당첨 여부 : 당첨 실패!');
  }

  // 3️⃣ 발급한 로또를 초기화 할 수 있는 기능

  mySixList.clear();
  print('현재 발급한 로또 번호 : $mySixList');

  // 4️⃣ 사용자가 원하는 번호를 지정하여 복권을 발급 하는 가능

  // 1. 선택 번호가 범위(1~45)를 벗어나면 예외 처리
  // 2. 선택 번호가 이미 선택된 번호와 중복되면 예외 처리
  // 3. 6개 초과하여 선택하면 예외 처리

  List<int> selectSix = [];

  void selectNumber(int number) {
    try {
      if (number < 1 || 45 < number) {
        throw Exception('번호는 1~45 안에서 선택해야 합니다');
      } else if (selectSix.contains(number) == true) {
        throw Exception('번호가 중복되었습니다');
      } else if (selectSix.length >= 6) {
        throw Exception('번호는 6개까지 선택 가능합니다');
      } else {
        selectSix.add(number);
      }
    } catch (e) {
      print(e);
    }
  }

  selectNumber(49); // 예외1 발생 예시
  selectNumber(2);
  selectNumber(2); // 예외2 발생 예시
  selectNumber(4);
  selectNumber(7);
  selectNumber(10);
  selectNumber(35);
  selectNumber(9);
  selectNumber(13); // 예외3 발생 예시

  print('선택한 로또 번호 : $selectSix');
}
