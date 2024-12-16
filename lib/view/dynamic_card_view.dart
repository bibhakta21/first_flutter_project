import 'package:first_flutter_project/common/mysnackbar.dart';
import 'package:first_flutter_project/view/card_view.dart';
import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i <= 10; i++)
                GestureDetector(
                  onTap: () {
                    showMySnackBar(
                      context,
                      'Card $i clicked', // Corrected parameter name
                    );
                  }, // Added missing semicolon
                  child: MyCard(
                    text: "Card $i",
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
