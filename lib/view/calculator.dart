  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';

  class CalculatorView extends StatefulWidget {
    const CalculatorView({super.key});

    @override
    State<CalculatorView> createState() => _CalculatorViewState();
  }

  class _CalculatorViewState extends State<CalculatorView> {
    int x = 0;
    int y = 0;
    num z = 0;

    final displayOneController = TextEditingController();
    final displayTwoController = TextEditingController();

    @override
    void initState(){
      super.initState();
      displayOneController.text = x.toString();
      displayTwoController.text = y.toString();
    }

    num _getNumber(TextEditingController controller){
      return num.tryParse(controller.text) ??0;
    }

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            CalculatorDisplay(hint: "Enter First Number", controller:displayOneController),
            const SizedBox(height: 30),
            CalculatorDisplay(hint: "Enter Last Number", controller:displayTwoController),
            Text(
              z.toString(),
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            // const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () { 
                    setState(() {
                    final a = _getNumber(displayOneController);
                    final b = _getNumber(displayTwoController);
                    z=a+b;
                    });
                  },
                  child: Icon(CupertinoIcons.add),
                ),
                FloatingActionButton(
                  onPressed: () { 
                    setState(() {
                    final a = _getNumber(displayOneController);
                    final b = _getNumber(displayTwoController);
                    z=a-b;
                    });
                  },
                  child: Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  onPressed: () { 
                    setState(() {
                    final a = _getNumber(displayOneController);
                    final b = _getNumber(displayTwoController);
                    z=a*b;
                    });
                  },
                  child: Icon(CupertinoIcons.multiply),
                ),
                FloatingActionButton(
                  onPressed: () { 
                    setState(() {
                    final a = _getNumber(displayOneController);
                    final b = _getNumber(displayTwoController);
                    z = b != 0 ? a / b : 0; 
                    });
                  },
                  child: Icon(CupertinoIcons.divide),
                ),
                FloatingActionButton.extended(
                  onPressed: () { 
                    setState(() {
                      x =0;
                      y =0;
                      z =0;
                      displayOneController.clear();
                      displayTwoController.clear();
                    });
                    z= x/y;
                  },
                  label: const Text("Clear"),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  class CalculatorDisplay extends StatelessWidget {
    const CalculatorDisplay({super.key, this.hint = "Enter Full Name", required this.controller});
    final String? hint;
    final TextEditingController controller;
    @override
    Widget build(BuildContext context) {
      return TextField(
        keyboardType: TextInputType.number,
        controller:controller,
        autofocus: true,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
        ),
      );
    }
  }
