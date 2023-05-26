;; extends

; Make types have higher priority (otherwise enum constructions will be
; function color)
((identifier) @type
  (#lua-match? @type "^%u[%u%d_]*%l") (#set! "priority" 101))

; Rust attributes (#[] and #![])
([
  (attribute_item)
  (inner_attribute_item)
 ] @preproc (#set! "priority" 101))

(attribute_item
  (attribute
    (string_literal) @string (#set! "priority" 101)))

(inner_attribute_item
  (attribute
    (string_literal) @string (#set! "priority" 101)))

; Make crate/self/super the @keyword color
[(crate) (self) (super)] @keyword
