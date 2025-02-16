import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white.withValues(
            alpha: 0.1,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Icon(
            Icons.search,
          size: 26,
        ),
      ),
    );
  }
}