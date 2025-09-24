import 'dart:math';

void main() {

// 1️⃣ 중복 없이 번호를 추첨하여 복권을 발급 기능
  
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
  
  for (int i=0; i<6; i++) {
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
  
}