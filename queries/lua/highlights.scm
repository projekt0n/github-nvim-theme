(function_declaration
  name: [
    (dot_index_expression
      table: [
        (identifier)
        ;; some manual recursion (up to 8 fields) because ts queries don't
        ;; support recursion up to arbitrary depths currently
        (dot_index_expression
          table: [
            (identifier)
            (dot_index_expression
              table: [
                (identifier)
                (dot_index_expression
                  table: [
                    (identifier)
                    (dot_index_expression
                      table: [
                        (identifier)
                        (dot_index_expression
                          table: [
                            (identifier)
                            (dot_index_expression
                              table: [
                                (identifier)
                                (dot_index_expression
                                  table: [
                                    (identifier)
                                    (dot_index_expression)
                                  ] @function.namespace
                                  "." @function.punctuation.delimiter
                                  field: (identifier) @function.namespace)
                              ] @function.namespace
                              "." @function.punctuation.delimiter
                              field: (identifier) @function.namespace)
                          ] @function.namespace
                          "." @function.punctuation.delimiter
                          field: (identifier) @function.namespace)
                      ] @function.namespace
                      "." @function.punctuation.delimiter
                      field: (identifier) @function.namespace)
                  ] @function.namespace
                  "." @function.punctuation.delimiter
                  field: (identifier) @function.namespace)
              ] @function.namespace
              "." @function.punctuation.delimiter
              field: (identifier) @function.namespace)
          ] @function.namespace
          "." @function.punctuation.delimiter
          field: (identifier) @function.namespace)
      ] @function.namespace
      "." @function.punctuation.delimiter
      field: (identifier) @function)

    (method_index_expression
      table: [
        (identifier)
        ;; some manual recursion (up to 8 fields) because ts queries don't
        ;; support recursion up to arbitrary depths currently
        (dot_index_expression
          table: [
            (identifier)
            (dot_index_expression
              table: [
                (identifier)
                (dot_index_expression
                  table: [
                    (identifier)
                    (dot_index_expression
                      table: [
                        (identifier)
                        (dot_index_expression
                          table: [
                            (identifier)
                            (dot_index_expression
                              table: [
                                (identifier)
                                (dot_index_expression
                                  table: [
                                    (identifier)
                                    (dot_index_expression)
                                  ] @method.namespace
                                  "." @function.punctuation.delimiter
                                  field: (identifier) @method.namespace)
                              ] @method.namespace
                              "." @function.punctuation.delimiter
                              field: (identifier) @method.namespace)
                          ] @method.namespace
                          "." @function.punctuation.delimiter
                          field: (identifier) @method.namespace)
                      ] @method.namespace
                      "." @function.punctuation.delimiter
                      field: (identifier) @method.namespace)
                  ] @method.namespace
                  "." @function.punctuation.delimiter
                  field: (identifier) @method.namespace)
              ] @method.namespace
              "." @function.punctuation.delimiter
              field: (identifier) @method.namespace)
          ] @method.namespace
          "." @function.punctuation.delimiter
          field: (identifier) @method.namespace)
      ] @method.namespace
      ":" @method.punctuation.delimiter
      method: (identifier) @method)
  ])
