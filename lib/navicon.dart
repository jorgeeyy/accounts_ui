import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final IconData icon;
  // final String label;
  final bool isActive;

  const NavIcon({
    super.key,
    required this.icon,
    // required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive ? Colors.black : Colors.red;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 26),
        const SizedBox(height: 3),
      ],
    );
  }
}
