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

" Section: keywords
syn keyword kadsKeywords attributes specification use end type ordinal nominal concept description axioms antecedent consequent uses expressions from roles input output static inference task goal roles realizes decomposition intermediate while repeat until empty
syn match   kadsKeywords "domain-schema"
syn match   kadsKeywords "knowledge-base"
syn match   kadsKeywords "knowledge-model"
syn match   kadsKeywords "list-of"
syn match   kadsKeywords "rule-type"
syn match   kadsKeywords "set-of"
syn match   kadsKeywords "value-specification"
syn match   kadsKeywords "value-type"
syn match   kadsKeywords "domain-knowledge"
syn match   kadsKeywords "value-list"
syn match   kadsKeywords "binary-relation"
syn match   kadsKeywords "sub-type-of"
syn match   kadsKeywords "connection-symbol"
syn match   kadsKeywords "domain-knowledge"
syn match   kadsKeywords "knowledge-role"
syn match   kadsKeywords "domain-mapping"
syn match   kadsKeywords "domain-name"
syn match   kadsKeywords "task-method"
syn match   kadsKeywords "control-structure"
syn match   kadsKeywords "has-solution"

" Section: operators
syn match   kadsOperator "[+<>=]"
syn match   kadsOperator "->"

" syn cluster kadsBlock contains=kadsKnowledgeModel,kadsDomainKnowledge,kadsDomainSchema,kadsConcept,kadsRuleType,kadsMathematicalModel,kadsRelation,kadsBinaryRelation,kadsValueType,kadsKnowledgeBase,kadsInstance,kadsTuple,kadsInferenceKnowledge,kadsInference,kadsTransferFunction,kadsKnowledgeRole,kadsTaskKnowledge,kadsTask,kadsTaskMethod,kadsPsmKnowledge,kadsPsm,kadsOntologyMapping

" syn region kadsKnowledgeModel start="knowledge-model" end="end knowledge-model"

hi def link kadsKeywords  keyword
hi def link kadsOperator  operator    

let b:current_syntax = "commonkads"

" vim:set sw=2:
