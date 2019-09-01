(asdf:defsystem #:ensure-method-combination_tests

  :author "Jean-Philippe Paradis <hexstream@gmail.com>"

  ;; See the UNLICENSE file for details.
  :license "Public Domain"

  :description "ensure-method-combination unit tests."

  :depends-on ("ensure-method-combination"
               "parachute")

  :serial cl:t
  :components ((:file "tests"))

  :perform (asdf:test-op (op c) (uiop:symbol-call '#:parachute '#:test '#:ensure-method-combination_tests)))
