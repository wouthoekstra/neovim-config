;; extends

(call_expression
  (member_expression
    object: (identifier) @_object (#eq? @_object "knex")
    property: (property_identifier) @_property (#eq? @_property "raw")
  )

  (arguments
    (template_string) @sql
    (#offset! @sql 0 1 0 -1)
  )
)

(call_expression
  (member_expression
    object: (identifier) @_object (#eq? @_object "db")
    property: (property_identifier) @_property (#eq? @_property "query")
  )

  (arguments
    (template_string) @sql
    (#offset! @sql 0 1 0 -1)
  )
)

((call_expression
  function: (member_expression
    object: (identifier) @object
    property: (property_identifier) @property)
  arguments: (arguments (template_string (string_fragment) @injection.content)))
 (#eq? @object "knex")
 (#eq? @property "raw")
 (#set! injection.language "sql")
 (#set! injection.include-children "true"))