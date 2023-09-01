import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '{{feature_name.snakeCase()}}_view.dart';

class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  static const route = '{{feature_name.snakeCase()}}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<{{feature_name.pascalCase()}}Bloc>(
        create: (context) => {{feature_name.pascalCase()}}Bloc(),
        child: const {{feature_name.pascalCase()}}View(),
      ),
    );
  }
}

