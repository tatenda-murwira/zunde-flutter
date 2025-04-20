import 'package:flutter/material.dart';
import 'dart:async';
import '../../core/constants/colors.dart';

class BankPaymentScreen extends StatelessWidget {
  final TextEditingController _accountName = TextEditingController();
  final TextEditingController _bankName = TextEditingController();
  final TextEditingController _accountNumber = TextEditingController();

  void _submitPayment(BuildContext context) async {
    if (_accountName.text.isEmpty || _bankName.text.isEmpty || _accountNumber.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please complete all fields')),
      );
      return;
    }

    await Future.delayed(Duration(seconds: 2));
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Payment Complete'),
        content: Text('Your bank transfer has been recorded.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bank Payment'), backgroundColor: zbGreen),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _accountName,
              decoration: InputDecoration(
                labelText: 'Account Holder Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _bankName,
              decoration: InputDecoration(
                labelText: 'Bank Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _accountNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _submitPayment(context),
              child: Text('Submit Payment', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: zbGreen,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
