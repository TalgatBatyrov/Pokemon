import 'package:flutter/material.dart';

class PropertyList extends StatelessWidget {
  final List<String> names;
  final String title;
  const PropertyList({
    super.key,
    required this.names,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: names
              .map((item) => Card(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
