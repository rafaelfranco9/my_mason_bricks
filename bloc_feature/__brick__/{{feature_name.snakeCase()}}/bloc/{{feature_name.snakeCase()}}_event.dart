part of '{{feature_name.snakeCase()}}_bloc.dart';

@freezed
class {{feature_name.pascalCase()}}Event with _${{feature_name.pascalCase()}}Event {
  {{#events}}
    const factory {{feature_name.pascalCase()}}Event.{{name.camelCase()}}({{#parameters}}{{{type}}} {{name}},{{/parameters}}) = _{{feature_name.pascalCase()}}Event{{name.pascalCase()}};
  {{/events}}
}