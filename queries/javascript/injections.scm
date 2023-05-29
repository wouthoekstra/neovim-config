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
