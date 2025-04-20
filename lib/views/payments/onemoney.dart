import 'package:flutter/material.dart';
import 'dart:async';
import '../../core/constants/colors.dart';

class OneMoneyPaymentScreen extends StatefulWidget {
  @override
  _OneMoneyPaymentScreenState createState() => _OneMoneyPaymentScreenState();
}

class _OneMoneyPaymentScreenState extends State<OneMoneyPaymentScreen> {
  final TextEditingController _phoneController = TextEditingController();
  bool _isProcessing = false;

  void _simulatePayment() async {
    if (_phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your OneMoney number')),
      );
      return;
    }

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('OneMoney PIN Required'),
        content: Text('Please enter your OneMoney PIN on your mobile device.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          )
        ],
      ),
    );

    setState(() => _isProcessing = true);
    await Future.delayed(Duration(seconds: 2));
    setState(() => _isProcessing = false);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Payment Successful'),
        content: Text('Your payment has been confirmed via OneMoney.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text('Done'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OneMoney Payment"), backgroundColor: zbGreen),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter OneMoney Mobile Number"),
            SizedBox(height: 8),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g. 0712345678',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: _isProcessing ? null : _simulatePayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: zbGreen,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: _isProcessing
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text('Make Payment', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}