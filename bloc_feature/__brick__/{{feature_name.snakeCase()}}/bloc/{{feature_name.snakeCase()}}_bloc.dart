import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name.snakeCase()}}_bloc.freezed.dart';
part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event,{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc() : super(const {{feature_name.pascalCase()}}State()) {
    {{#events}}
    on<_{{feature_name.pascalCase()}}Event{{name.pascalCase()}}>(_on{{feature_name.pascalCase()}}Event{{name.pascalCase()}});
    {{/events}}
  }

  {{#events}}
    FutureOr<void> _on{{feature_name.pascalCase()}}Event{{name.pascalCase()}}(
      _{{feature_name.pascalCase()}}Event{{name.pascalCase()}} event,
      Emitter<{{feature_name.pascalCase()}}State> emit,
    ) {
      emit(state.copyWith());
    }
  {{/events}}

}
