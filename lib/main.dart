import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0A0E14) ,
        body: Center(
          child: StatisticsDashboard(),
        ),
      ),
    );
  }
}

class StatisticsDashboard extends StatelessWidget {
  const StatisticsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF0A0E14),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://storage.googleapis.com/a1aa/image/90vX778wDsyoPaXp-W702YS4aPPVJmUFjBgNLCna0cY.jpg'),
                radius: 20,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anna,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "it's your statistic",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTimeButton('Day'),
              _buildTimeButton('Week'),
              _buildTimeButton('Month'),
              _buildTimeButton('Year'),
            ],
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              'https://storage.googleapis.com/a1aa/image/ywvg2F_uePS04ivarbXjYWyXma3tSVhDGjAXHqtTOGg.jpg',
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Image.network(
                  'https://storage.googleapis.com/a1aa/image/sOOgwco8zG5sN9a2hN_WIrfUe5ym9rp4b-LVDts2cPY.jpg',
                  height: 200,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text(
                  '\$1,499.23',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          _buildExpenseItem('Food', Colors.yellow, '\$779.23'),
          _buildExpenseItem('Subscriptions', Colors.purple, '\$280.00'),
          _buildExpenseItem('Education', Colors.pink, '\$260.00'),
          _buildExpenseItem('Beauty', Colors.blue, '\$120.00'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.grey),
              Icon(Icons.bar_chart, color: Colors.grey),
              Icon(Icons.account_balance_wallet, color: Colors.grey),
              Icon(Icons.settings, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeButton(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildExpenseItem(String category, Color color, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(width: 8),
              Text(
                category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
       ),
          ),
        ],
      ),
    );
  }
}