import 'package:flutter/material.dart';

class CustomButtonContainer extends StatelessWidget {
  final VoidCallback onTap;

  const CustomButtonContainer({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 51,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF018354),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Refresh results",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.sync_outlined, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
