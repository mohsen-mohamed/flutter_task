import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({required this.title, required this.onTab, required this.color, Key? key}) : super(key: key);
  final String title;
  final VoidCallback onTab;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(110, 45)),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      ),
      child: FittedBox(child: Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600))),
    );
  }
}
