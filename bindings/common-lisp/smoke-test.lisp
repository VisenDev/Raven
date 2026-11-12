;;; Run after (asdf:load-system "raven"); no Raven shared library needed.
(in-package #:cl-user)

(assert (= 4 (cffi:foreign-type-size 'raven:rid)))
(assert (= 4 (cffi:foreign-type-size 'raven:rbackend)))
(assert (= #xffffffff raven:r_invalid_id))
(assert (= (* 4 (cffi:foreign-type-size :pointer))
           (cffi:foreign-type-size '(:struct raven:rallocator))))

(cffi:with-foreign-object (event '(:struct raven:revent))
  (setf (cffi:foreign-slot-value event '(:struct raven:revent)
                                'raven:window)
        #xfffffffe)
  (assert (= #xfffffffe
             (cffi:foreign-slot-value event '(:struct raven:revent)
                                      'raven:window))))

(defvar *raven-callback-result* nil)

(raven:define-ractioncallback raven-smoke-action (sender action user)
  (setf *raven-callback-result*
        (list sender
              (cffi:foreign-string-to-lisp action :encoding :utf-8)
              (cffi:null-pointer-p user))))

(cffi:with-foreign-string (action "test" :encoding :utf-8)
  (cffi:foreign-funcall-pointer (cffi:callback raven-smoke-action) ()
                               :uint32 #xfffffffe
                               :pointer action
                               :pointer (cffi:null-pointer)
                               :void))
(assert (equal '(#xfffffffe "test" t) *raven-callback-result*))
(format t "Raven CFFI smoke tests passed.~%")
