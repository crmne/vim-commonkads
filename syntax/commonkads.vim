" Vim syntax file
" Language:   CommonKADS Knowledge Model Language
" Maintainer: Carmine Paolino
" Filenames:  *.kads

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

syn sync minlines=10
syn case ignore

syn keyword basicLanguageKeywords attributes domain-schema knowledge-base knowledge-model list-of rule-type set-of specification use value-specification value-type

hi def link basicLanguageKeywords       keyword

let b:current_syntax = "commonkads"

" vim:set sw=2:
