import 'package:flutter/material.dart';

class LeftNavigationItem {
  final IconData icon;
  final String label;
  final String route;
  final bool isSelected;

  LeftNavigationItem({
    required this.icon,
    required this.label,
    required this.route,
    required this.isSelected
  });

  LeftNavigationItem copyWith({
      IconData? icon,
      String? label,
      String? route,
      bool? isSelected
    }) {
      return LeftNavigationItem(
        icon: icon ?? this.icon, 
        label: label ?? this.label, 
        route: route ?? this.route,
        isSelected: isSelected ?? this.isSelected 
    );
  }
}