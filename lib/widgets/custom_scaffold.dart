import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), //making back button white in color
        backgroundColor: Colors.transparent,
        elevation: 0, //removing shadows
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset( //background image fits the whole screen
            'assets/image/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!, //so that this can be used in all screens
          ),
        ],
      ),
    );
  }
}
