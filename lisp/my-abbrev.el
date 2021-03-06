;; -*- coding: utf-8; lexical-binding: t; -*-
(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ("utf8" "-*- coding: utf-8 -*-" )

    ;; regex
    ("xaz" "\\([A-Za-z0-9]+\\)" )

    ;; unicode
    ("md" "—" )

    ("hr" "--------------------------------------------------" )
    ("bu" "•" )
    ("catface" "������" )
    ("hearts" "♥������������������������������������������������������������������������������" )
    ("ra" "→" )

    ;; url
    ("urlemacs" "http://ergoemacs.org/" )

    ;;
    ))

;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table
(define-abbrev-table 'go-mode-abbrev-table
  '(
    ("g3" "package main
import \"fmt\"
func main() {
        fmt.Println(\"3\")
}")

    ("for" "for i := 0; i < 4; i++ { i }")
    ("if" "if x < 0 { 3 }")
    ("r" "return")
    ("ps" "+")
    ("eq" "==")
    ("pt" "fmt.Println(3)")
    ("fu" "func(x int) int { return 1 }")
    ("v" "var = 3")

    ;;

    ))

(set-default 'abbrev-mode t)

(setq save-abbrevs nil)
