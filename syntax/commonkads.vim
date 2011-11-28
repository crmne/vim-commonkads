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

" syn match kadsValid '\\S\\@!'

syn keyword kadsKeywords attributes specification use
syn match   kadsKeywords "domain-schema"
syn match   kadsKeywords "knowledge-base"
syn match   kadsKeywords "knowledge-model"
syn match   kadsKeywords "list-of"
syn match   kadsKeywords "rule-type"
syn match   kadsKeywords "set-of"
syn match   kadsKeywords "value-specification"
syn match   kadsKeywords "value-type"

" syn cluster kadsBlock contains=kadsKnowledgeModel,kadsDomainKnowledge,kadsDomainSchema,kadsConcept,kadsRuleType,kadsMathematicalModel,kadsRelation,kadsBinaryRelation,kadsValueType,kadsKnowledgeBase,kadsInstance,kadsTuple,kadsInferenceKnowledge,kadsInference,kadsTransferFunction,kadsKnowledgeRole,kadsTaskKnowledge,kadsTask,kadsTaskMethod,kadsPsmKnowledge,kadsPsm,kadsOntologyMapping

" syn region kadsKnowledgeModel start="knowledge-model" end="end knowledge-model"

hi def link kadsKeywords       keyword

let b:current_syntax = "commonkads"

" vim:set sw=2:
