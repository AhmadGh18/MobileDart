import 'package:flutter/material.dart';
import 'Pizza.dart';

class SinglePizza extends StatefulWidget {
  final Pizza selectedPizza;

  const SinglePizza({Key? key, required this.selectedPizza}) : super(key: key);

  @override
  _SinglePizzaState createState() => _SinglePizzaState();
}

class _SinglePizzaState extends State<SinglePizza> {
  String? selectedSize; // Use nullable String to handle unselected state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Details'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Image(
            image: AssetImage(widget.selectedPizza.url),
          ),
          Text(
            'Pizza Name: ${widget.selectedPizza.name}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Radio(
                value: 'small',
                groupValue: selectedSize,
                onChanged: (value) {
                  setState(() {
                    widget.selectedPizza.setSize("small");

                    selectedSize = value as String?;
                    // Handle the state change based on the new value
                  });
                },
              ),
              Text("Small"),
              Radio(
                value: 'medium',
                groupValue: selectedSize,
                onChanged: (value) {
                  setState(() {
                    widget.selectedPizza.setSize("medium");

                    selectedSize = value as String?;
                    // Handle the state change based on the new value
                  });
                },
              ),
              Text("Medium"),
              Radio(
                value: 'large',
                groupValue: selectedSize,
                onChanged: (value) {
                  setState(() {
                    selectedSize = value as String?;
                    widget.selectedPizza.setSize("large");
                  });
                },
              ),
              Text("Large"),
              // Add more details as needed
            ],
          ),
          SizedBox(height: 20),

          Row(
            children: [
              ElevatedButton(
                    onPressed: () {
                    setState(() {
                 widget.selectedPizza.setqntty(widget.selectedPizza.qntty+1);

                   });
                },
                child: Text('+'),
              ),
              SizedBox(width: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.selectedPizza.setqntty(widget.selectedPizza.qntty-1);

                  });
                },
                child: Text('-'),
              )





            ],
          ),
          Column(
            children: [
              Text("Details",style: TextStyle(fontSize: 40),),
              Text('size $selectedSize',style: TextStyle(fontSize: 40),),
              Text('Price ${widget.selectedPizza.checkPrice()} ',style: TextStyle(fontSize: 40),),
              Text('qntyy ${widget.selectedPizza.qntty.toInt()}', style: TextStyle(fontSize: 40),),

            ],
          ),
        ],
      ),
    );
  }
}
