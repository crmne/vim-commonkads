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

" Section: keywords
syn keyword kadsKeywords attributes specification concept use end type ordinal nominal description axioms antecedent consequent uses expressions from roles input output static inference task goal roles realizes decomposition intermediate while repeat until empty and or real add delete
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
syn match   kadsKeywords "control-structure"
syn match   kadsKeywords "has-solution"
syn match   kadsKeywords "task-method"

" Section: operators
syn match   kadsAssignment ":="
syn match   kadsOperator "->"
syn match   kadsOperator "[-+*/<>=]"

" Section: comments
syn region  kadsComment start="\/\*" end="\*\/"

" Section: strings
syn region  kadsString  contains=@Spell start=+"+ skip=+""+ end=+"+
syn region  kadsString  contains=@Spell start=+'+ skip=+''+ end=+'+

" Section: numbers
syn match   kadsNumber    '\d\+'
syn match   kadsNumber    '[-+]\d\+'
syn match   kadsNumber    '\d\+\.\d*'
syn match   kadsNumber    '[-+]\d\+\.\d*'

" syn cluster kadsBlock contains=kadsKnowledgeModel,kadsDomainKnowledge,kadsDomainSchema,kadsConcept,kadsRuleType,kadsMathematicalModel,kadsRelation,kadsBinaryRelation,kadsValueType,kadsKnowledgeBase,kadsInstance,kadsTuple,kadsInferenceKnowledge,kadsInference,kadsTransferFunction,kadsKnowledgeRole,kadsTaskKnowledge,kadsTask,kadsTaskMethod,kadsPsmKnowledge,kadsPsm,kadsOntologyMapping

" syn region kadsKnowledgeModel start="knowledge-model" end="end knowledge-model"

hi def link kadsKeywords    Keyword
hi def link kadsOperator    Operator
hi def link kadsComment     Comment
hi def link kadsAssignment  Special
hi def link kadsString      String
hi def link kadsNumber      Number

let b:current_syntax = "commonkads"

" vim:set sw=2:
