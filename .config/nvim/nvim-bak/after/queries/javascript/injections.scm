;; query
; extends
;; STRING SQL INJECTION
((template_string) @sql (#match? @sql "^`\n*( )*-{2,}( )*[sS][qQ][lL]( )*\n"))
(((comment) @_comment (#match? @_comment "sql") (lexical_declaration(variable_declarator[(string(string_fragment)@sql)(template_string)@sql]))) @sql)

;; STRING SURREALDB INJECTION
((template_string) @surrealdb (#match? @surrealdb "^`\n*( )*-{2,}( )*[sS][uU][rR][qQ][lL]( )*\n"))
(((comment) @_comment (#match? @_comment "surql") (lexical_declaration(variable_declarator[(string(string_fragment)@surrealdb)(template_string)@surrealdb]))) @surrealdb)
		