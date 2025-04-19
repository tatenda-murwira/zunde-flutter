
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class PaymentScreen extends StatelessWidget {
  final TextEditingController _referenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Page'),
        backgroundColor: zbGreen,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pay via Mobile Money or Bank Transfer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount: \$10', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 8),
                    Text('Bank: ZB Bank'),
                    Text('Account Number: 123456789'),
                    Text('Mobile Money: +263 712 345 678 (EcoCash)'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text('Enter Reference Code from your Payment Receipt'),
            SizedBox(height: 8),
            TextField(
              controller: _referenceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g., TX12345678',
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String reference = _referenceController.text.trim();
                  if (reference.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter a reference code')),
                    );
                  } else {
                    // Simulate payment confirmation and go back
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Payment Confirmed'),
                        content: Text('Your payment has been recorded.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          )
                        ],
                      ),
                    );
                  }
                },
                child: Text('Confirm Payment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: zbGreen,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}