// 1️⃣ 조건문 - if 문 사용

String testResult(int score) {
  String grade = '';
  if (score >= 90) {
    grade = 'A등급';
  } else if (score > 80) {
    grade = 'B등급';
  } else {
    grade = 'C등급';
  }
  return '이 학생의 점수는 $score점 이며, 등급은 $grade입니다!';
}

void main() {
  print(testResult(84));
}

/*
2️⃣ 조건문 - switch 문 사용

String testResult (int score){
  String grade = '';
  
  switch (score) {
    case >= 90:
      grade = 'A등급';
    case > 80:
      grade = 'B등급';
    default:
      grade = 'C등급';
  }
  return '이 학생의 점수는 $score점 이며, 등급은 $grade입니다!';
}

3️⃣ late 사용해 변수 선언 / Lists + for 문 활용

String testResult (int score){
  late String grade;
  List<String> gradeList = ['A등급', 'B등급', 'C등급'];
  
  if (score >= 90) {
    grade = gradeList[0];
  } else if (score > 80) {
    grade = gradeList[1];
  } else {
    grade = gradeList[2];
  }
  return '이 학생의 점수는 $score점 이며, 등급은 $grade입니다!';
}

*/
