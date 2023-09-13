import 'package:flutter/material.dart';

class RecepieButtonHandler extends StatelessWidget {
  final VoidCallback onTap;

  const RecepieButtonHandler({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(Text("Recepie handler button clciked "));
      },
      child: Container(
        width: 150,
        height: 51,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF323232),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "View Recepie",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
