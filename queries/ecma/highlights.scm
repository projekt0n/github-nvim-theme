;; extends

; These fix an nvim-treesitter bug where the `Abc` in `Abc.Xyz` is captured as a
; builtin tag. They also change the capture for `Xyz` to `@variable.member`
; instead of e.g. `@tag` (which gives the property a different color).
;(jsx_opening_element
;  name: (member_expression
;    ; If the tag name contains a dot (operator), it must always be a custom
;    ; tag? Therefore, we're not even going to try matching a `@tag.builtin`
;    ; here.
;    object: (identifier) @tag (#set! "priority" 115)
;    property: (property_identifier) @variable.member (#set! "priority" 115)))
;
;(jsx_closing_element
;  name: (member_expression
;    object: (identifier) @tag (#set! "priority" 115)
;    property: (property_identifier) @variable.member (#set! "priority" 115)))
;
;(jsx_self_closing_element
;  name: (member_expression
;    object: (identifier) @tag (#set! "priority" 115)
;    property: (property_identifier) @variable.member (#set! "priority" 115)))
