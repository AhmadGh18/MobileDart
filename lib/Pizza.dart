class Pizza {
  String name;
  double _price; // Make it private by adding an underscore
  String size="";
  String url;
  List<String> toppings = [];
  double finalPrice = 0;
double qntty=1;
  Pizza(this.name, this._price, this.url);

  double checkPrice() {
    if(this.size=="small"){
      _price=20*qntty;
    }
    if (this.size =="medium") {
      _price =40*qntty;
    } else if (this.size == "large") {
      _price = 60*qntty;
    }
    finalPrice = _price;
    return _price;
  }
  void setSize(String size){
    this.size=size;
  }
  void setqntty(double qn){
    this.qntty=qn;

    if(this.qntty<1){
      qntty=1;
    }
  }

  void addTopping(String tops) {
    toppings.add(tops);
    finalPrice += 10;
  }
  String toString(){
    return "Price : "+finalPrice.toString();
  }
}

List<Pizza> pizza = [
  Pizza("Pepperoni", 20, "assets/pizza1.jpg"),
  Pizza("Chicken Pizza", 40, "assets/pizza2.jpg"),
  Pizza("Spicy Pizza", 10, "assets/pizza3.jpg"),
  Pizza("Meat Pizza", 15, "assets/pizza4.jpg"),
];
