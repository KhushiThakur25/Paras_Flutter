import 'package:calc_bmi/basic_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calc",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  String bmiResult = "";
  String category = "";
  String message = "";
  void calculateBmi() {
    final double height = double.tryParse(_heightController.text) ?? 0;
    final double weight = double.tryParse(_weightController.text) ?? 0;

    if (height > 0 && weight > 0) {
      double bmi = (weight * 100 * 100) / (height * height);

      setState(() {
        if (bmi < 18.5) {
          bmiResult = bmi.toStringAsFixed(2);
          category = "Lower weight";
          message = "";
        } else if (bmi >= 18.5 && bmi < 25) {
          bmiResult = bmi.toStringAsFixed(2);
          category = "Perfect weight";
          message = "Great Job !!";
        } else {
          bmiResult = bmi.toStringAsFixed(2);
          category = "Over weight";
          message = "";
        }
      });
    } else {
      setState(() {
        bmiResult = "";
        category = "";
        message = "Invalid Data";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI Calc"),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.calculate_rounded)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _heightController,
                decoration: const InputDecoration(
                    labelText: "Enter your Height(cm)",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _weightController,
                decoration: const InputDecoration(
                    labelText: "Enter your Weight(kg)",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: calculateBmi, child: const Text("Calculate BMI")),
              SizedBox(
                height: 10,
              ),
              Text(
                "Bmi result: $bmiResult",
                style: const TextStyle(
                    fontSize: 19,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Category: $category",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Message: $message",
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
