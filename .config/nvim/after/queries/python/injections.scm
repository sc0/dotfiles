;; query
; extends
;; STRING SQL INJECTION
((string_content) @sql (#match? @sql "^\n*( )*-{2,}( )*[sS][qQ][lL]( )*\n"))

;; STRING SURREALDB INJECTION
((string_content) @surrealdb (#match? @surrealdb "^\n*( )*-{2,}( )*[sS][uU][rR][qQ][lL]( )*\n"))
		