import 'package:flutter/material.dart';
import 'dart:async';
import '../../core/constants/colors.dart';


class EcoCashPaymentScreen extends StatefulWidget {
  @override
  _EcoCashPaymentScreenState createState() => _EcoCashPaymentScreenState();
}

class _EcoCashPaymentScreenState extends State<EcoCashPaymentScreen> {
  final TextEditingController _phoneController = TextEditingController();
  bool _isProcessing = false;

  void _simulatePayment() async {
    if (_phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your EcoCash number')),
      );
      return;
    }

    // Simulate pop-up password request
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('EcoCash PIN Required'),
        content: Text('Please enter your EcoCash PIN on your mobile device.'),
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
        content: Text('Your payment has been confirmed via EcoCash.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context); // go back to contribution screen
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
      appBar: AppBar(title: Text("EcoCash Payment"), backgroundColor: zbGreen),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter EcoCash Mobile Number"),
            SizedBox(height: 8),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g. 0771234567',
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

