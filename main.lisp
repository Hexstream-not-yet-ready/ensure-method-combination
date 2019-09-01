(in-package #:ensure-method-combination)

#+nil
(define-method-combination ensure-mc:ensure ()
  ((ensure-methods (:ensure))
   (make-instance-methods (make-instance))
   (reinitialize-instance-methods (reinitialize-instance))
   (initargs-methods (:initargs))
   (class-methods (:class) :required t))
  (:arguments &whole args existing)
  (:generic-function generic-function)
  `(call-method ,(first ensure-methods)
                (,@(rest ensure-methods)
                   (make-method (if ,existing
                                    ?
                                    (call-method ,(first make-instance-methods)
                                                 (,@(rest make-instance-methods)
                                                    )))))))
