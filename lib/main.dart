import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Stack(
        children: [
          // Phần này làm mờ hình tròn
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      Colors.green.withOpacity(0.5), // Thay đổi opacity nếu cần
                ),
              ),
            ),
          ),
          // Phần này chứa nội dung của bạn
          Center(
            child: Text(
              'Nội dung của bạn ở đây',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    ),
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Color(0xff121212),
    ),
  ));
}
