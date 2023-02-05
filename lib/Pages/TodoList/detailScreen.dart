import 'package:flutter/material.dart';
import 'package:makingapps/Pages/PaymentGateway/paymentscreen.dart';

class detailPage extends StatelessWidget {
  const detailPage({required this.title, required this.description, super.key});

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              description,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => paymentScreen(title:title)));
                },
                child: Text(
                  'Make Payment for this $title',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ))
          ],
        ),
      ),
    );
  }
}
