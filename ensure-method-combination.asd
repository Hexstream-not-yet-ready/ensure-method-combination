(asdf:defsystem #:ensure-method-combination

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  ;; See the UNLICENSE file for details.
  :license "Public Domain"

  :description "Provides an ENSURE method combination type that allows for concise and flexible instantiation and reinitialization of dependent objects."

  :depends-on ()

  :version "0.1"
  :serial cl:t
  :components ((:file "package")
	       (:file "main"))

  :in-order-to ((asdf:test-op (asdf:test-op #:ensure-method-combination_tests))))
