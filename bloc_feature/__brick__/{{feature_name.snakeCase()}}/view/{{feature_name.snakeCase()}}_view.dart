import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("{{feature_name}}"),
      ],
    );
  }
}
