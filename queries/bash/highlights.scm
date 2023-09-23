;; extends

; This should probably have its own unique/custom capture, but this works for
; now.
(command_substitution
  [ "$(" ")" ] @string)

; This should probably have its own unique/custom capture, but this works for
; now.
(process_substitution
  [ "<(" ")" ] @string)

(expansion
  "#" @operator)

(simple_expansion
  "$" @variable)

(subscript
  index: (word) @punctuation.special (#any-of? @punctuation.special "@" "*"))
