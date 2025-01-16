class breakFastModell{
  final String item;
  final double price;

  breakFastModell({required this.item,required this.price});

  Map<String,dynamic> breakfastMap(){
    return {
      'Item':item,
      'Price':price,
    };
  }
}