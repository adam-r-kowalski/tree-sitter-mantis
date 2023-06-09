"fn" @keyword.function

[
  "mut"
  "linear"
  "consume"
  "struct"
  "test"
] @keyword

[
  "undefined"
] @constant.builtin

[
  "if"
  "else"
  "else if"
] @conditional

(primitive_type) @type.builtin

(integer) @number

(float) @float

(identifier) @variable

(comment) @comment @spell

(string) @string

(function_definition name: (identifier) @function)

(struct_definition name: (identifier) @type.definition)

(call function: (identifier) @function.call)

((identifier) @constant.builtin
	(#any-of? @constant.builtin "assert" "foreign_import" "foreign_export"))

(method_call
  (member field: (identifier) @method.call))

(parameter name: (identifier) @parameter)

[
  "+"
  "-"
  "*"
  "/"
  "%"
  ">"
  "<"
  "=="
] @operator

[
  "["
  "]"
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

["," "." ":"] @punctuation.delimiter
