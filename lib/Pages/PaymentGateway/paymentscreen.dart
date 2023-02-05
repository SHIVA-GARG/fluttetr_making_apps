import 'package:flutter/material.dart';
import 'upiScreen.dart';
import 'package:upi_india/upi_india.dart';

class paymentScreen extends StatefulWidget {
  const paymentScreen({required this.title, super.key});
  final String title;
  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => upiScreen()));
            },
            child: Text('Making Payment')),
      ),
    );
  }
}
