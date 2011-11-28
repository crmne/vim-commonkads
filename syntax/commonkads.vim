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

syn keyword basicLanguageKeywords attributes domain-schema knowledge-base knowledge-model list-of rule-type set-of specification use value-specification value-type

syn cluster kadsBlock contains=kadsKnowledgeModel,kadsDomainKnowledge,kadsDomainSchema,kadsConcept,kadsRuleType,kadsMathematicalModel,kadsRelation,kadsBinaryRelation,kadsValueType,kadsKnowledgeBase,kadsInstance,kadsTuple,kadsInferenceKnowledge,kadsInference,kadsTransferFunction,kadsKnowledgeRole,kadsTaskKnowledge,kadsTask,kadsTaskMethod,kadsPsmKnowledge,kadsPsm,kadsOntologyMapping

syn region kadsKnowledgeModel start="knowledge-model" end="end knowledge-model"

hi def link basicLanguageKeywords       keyword

let b:current_syntax = "commonkads"

" vim:set sw=2:
