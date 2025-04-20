import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Financial Literacy Tips',
          style: TextStyle(
            fontFamily: 'Roboto', // Use a consistent font
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green, // Use your brand color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            _TipCard(
              title: 'Create a Budget',
              content:
                  'Start by creating a budget to track your income and expenses. This will help you identify areas where you can save money.',
              icon: Icons.account_balance,
            ),
            _TipCard(
              title: 'Save Before You Spend',
              content:
                  'A good rule of thumb is to save a portion of your income (e.g., 10-20%) before you spend on anything else.  Treat savings like a non-negotiable expense.',
              icon: Icons.savings,
            ),
            _TipCard(
              title: 'Track Your Spending',
              content:
                  'Keep a record of all your expenses, no matter how small. This will help you see where your money is going and identify areas where you can cut back.',
              icon: Icons.track_changes,
            ),
            _TipCard(
              title: 'Set Financial Goals',
              content:
                  'Determine your short-term and long-term financial goals.  This could be anything from saving for a down payment on a house to paying off debt or retirement.',
              icon: Icons.g_mobiledata_outlined,
            ),
            _TipCard(
              title: 'Avoid Unnecessary Debt',
              content:
                  'Be cautious about taking on debt, especially high-interest debt like credit cards.  Prioritize paying off existing debt.',
              icon: Icons.credit_card_off,
            ),
            _TipCard(
              title: 'Invest for the Future',
              content:
                  'Consider investing your money to grow it over time.  Learn about different investment options and seek advice from a financial advisor if needed.',
              icon: Icons.trending_up,
            ),
            _TipCard(
              title: 'Emergency Fund',
              content:
                  'Build an emergency fund to cover unexpected expenses, such as medical bills or job loss. Aim for 3-6 months of living expenses.',
              icon: Icons.warning,
            ),
            _TipCard(
              title: 'Review Finances Regularly',
              content:
                  'Make it a habit to review your finances regularly (e.g., monthly) to track your progress, adjust your budget, and stay on top of your financial goals.',
              icon: Icons.calendar_month,
            ),
          ],
        ),
      ),
    );
  }
}

class _TipCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const _TipCard({
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.green, // Consistent icon color
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto', // Use a consistent font
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto', // Use a consistent font
                      color: Colors.black87,
                      height: 1.5, // Improve line spacing
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
