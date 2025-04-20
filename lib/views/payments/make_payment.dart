import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../payments/ecocash.dart';
import '../payments/onemoney.dart';
import '../payments/visa.dart';
import '../payments/mastercard.dart';
import '../payments/bank_card.dart';


class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController _referenceController = TextEditingController();
  String _selectedMethod = 'EcoCash';

  final List<String> _paymentMethods = [
    'EcoCash',
    'OneMoney',
    'Visa Card',
    'MasterCard',
    'Bank Card',
  ];

  void _navigateToPaymentPage() {
    switch (_selectedMethod) {
      case 'EcoCash':
        Navigator.push(context, MaterialPageRoute(builder: (_) => EcoCashPaymentScreen()));
        break;
      case 'OneMoney':
        Navigator.push(context, MaterialPageRoute(builder: (_) => OneMoneyPaymentScreen()));
        break;
      case 'Visa Card':
        Navigator.push(context, MaterialPageRoute(builder: (_) => VisaPaymentScreen()));
        break;
      case 'MasterCard':
        Navigator.push(context, MaterialPageRoute(builder: (_) => MasterCardPaymentScreen()));
        break;
      case 'Bank Card':
        Navigator.push(context, MaterialPageRoute(builder: (_) => BankPaymentScreen()));
        break;
    }
  }

  void _confirmPayment() {
    String reference = _referenceController.text.trim();
    if (reference.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a reference code')),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Payment Confirmed'),
          content: Text('Your payment via $_selectedMethod has been recorded.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            )
          ],
        ),
      );
    }
  }

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
              'Select Payment Method',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _selectedMethod,
              items: _paymentMethods.map((method) {
                return DropdownMenuItem(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMethod = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: OutlinedButton(
                onPressed: _navigateToPaymentPage,
                child: Text('Proceed to $_selectedMethod Page'),
              ),
            ),
            SizedBox(height: 24),
            // Card(
            //   elevation: 2,
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            //   child: Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text('Amount: \$10', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            //         SizedBox(height: 8),
            //         Text('Reference: TX12345678 (sample)'),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: 24),
            Text('Enter Reference Code from your Payment Receipt'),
            SizedBox(height: 8),
            TextField(
              controller: _referenceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g., TX12345678',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: _confirmPayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: zbGreen,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
