part of '{{feature_name.snakeCase()}}_bloc.dart';

@freezed
abstract class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State({
    @Default({{feature_name.pascalCase()}}Status.initial) {{feature_name.pascalCase()}}Status status,
    {{#states}}
      {{#required}}
          required {{{type}}} {{name}},
      {{/required}}
      {{^required}}
        {{#use_default}}
            @Default('{{default}}') {{{type}}} {{name}},
        {{/use_default}}
        {{^use_default}}
            {{{type}}}? {{name}},
        {{/use_default}}
      {{/required}}
    {{/states}}
  }) = _{{feature_name.pascalCase()}}State;
}

enum {{feature_name.pascalCase()}}Status {
  initial,
  loading,
  success,
  failure,
}
