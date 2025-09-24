void main() {
  
  Map<String, int> product = {'티셔츠': 10000, '바지': 8000, '모자': 4000};
  List<String> cart = ['티셔츠', '바지', '모자', '티셔츠', '바지'];

// 1️⃣ 구매자가 장바구니에 담은 상품 목록을 볼 수 있는 기능
  
  int totalPrice = 0;
  
  for (int i = 0; i < cart.length; i++) {
    int selectPrice = product[cart[i]]!;
    totalPrice += selectPrice;
  }
  print('장바구니에 $totalPrice원 어치를 담으셨네요!');
  
// 2️⃣ 전체 구매 예정 금액에 따른 할인 여부를 확인하는 기능
  
  if (totalPrice > 20000) {
    int discountPrice = totalPrice ~/ 10;
    print('할인금액 : $discountPrice원');
    
// 3️⃣ 구매자가 결제해야 될 최종 금액을 확인하는 기능
    
    int finalPrice = totalPrice - discountPrice;
    print('최종적으로 결제하실 금액은 $finalPrice원입니다!');
  }
  
}