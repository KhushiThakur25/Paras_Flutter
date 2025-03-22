import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      builder:
          (context, child) => Theme(
            data: ThemeData.light().copyWith(
              primaryColor: const Color.fromARGB(255, 49, 1, 62),
            ),
            child: child!,
          ),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _predictNumerology(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Numerology App",
          style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 49, 1, 62),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 49, 1, 62),
              const Color.fromARGB(255, 161, 19, 149),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: const Color.fromARGB(255, 31, 0, 54),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      "Select Your Birth Date",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () => _selectDate(context),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 240, 197, 68),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _selectedDate != null
                                  ? DateFormat(
                                    'dd-MM-yyyy',
                                  ).format(_selectedDate!)
                                  : 'Tap to choose date',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 185, 181, 181),
                                fontSize: 16,
                              ),
                            ),
                            const Icon(
                              Icons.calendar_today,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
                backgroundColor: const Color.fromARGB(255, 31, 0, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Get Prediction',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Powered by Brainmentors Pvt Ltd",
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 219, 219),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
