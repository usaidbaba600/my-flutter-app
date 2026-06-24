import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.grey),

      body: Center(
        child: Text("Main Content Area"), // your main content
      ),

      // ✅ Toolbar fixed at bottom
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildIconButton(Icons.not_interested_rounded, Colors.grey),
            _buildTextButton("+", Colors.black),
            _buildTextButton("-", Colors.black),
            _buildTextButton("×", Colors.black),
            _buildTextButton("÷", Colors.black),
            _buildTextButton("%", Colors.black),
            _buildIconButton(Icons.add_circle_outline, Colors.blue),
            _buildIconButton(Icons.bookmark_border, Colors.green),
            _buildIconButton(Icons.delete_outline, Colors.red),
          ],
        ),
      ),
    );
  }

  // 🔘 For text symbols (+, −, ×, ÷, %)
  Widget _buildTextButton(String symbol, Color color) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(85, 65),
        side: BorderSide(color: Colors.grey, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {},
      child: Text(
        symbol,
        style: TextStyle(
          fontSize: 26,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // 🔘 For Material icons (bookmark, trash, prohibition, etc.)
  Widget _buildIconButton(IconData icon, Color color) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(85, 65),
        side: BorderSide(color: Colors.grey, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {},
      child: Icon(icon, color: color, size: 28),
    );
  }
}
