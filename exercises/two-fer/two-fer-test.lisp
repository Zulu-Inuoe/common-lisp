;;;
;;; two-fer v1.2.0
;;;
(ql:quickload "lisp-unit")
#-xlisp-test (load "two-fer")

(defpackage #:two-fer-test
  (:use #:common-lisp #:lisp-unit))
(in-package #:two-fer-test)

(define-test
  no-name-given-nil
  (assert-equal
    "One for you, one for me."
    (two-fer:twofer nil)))

(define-test
  no-name-given-empty
  (assert-equal
   "One for you, one for me."
   (two-fer:twofer "")))

(define-test
  a-name-given
  (assert-equal
    "One for Alice, one for me."
    (two-fer:twofer "Alice")))


(define-test
  another-name-given
  (assert-equal
    "One for Bob, one for me."
    (two-fer:twofer "Bob")))

#-xlisp-test
(let ((*print-errors* t)
      (*print-failures* t))
  (run-tests :all))
