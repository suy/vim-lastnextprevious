let lastnextprevious#table = {
\ 'section-start':  {'b': '[[', 'f': ']]'},
\ 'section-end':    {'b': '[]', 'f': ']['},
\ 'brace-block':    {'b': '[{', 'f': ']}'},
\ 'bracket-block':  {'b': '[(', 'f': '])'},
\ 'method':         {'b': '[m', 'f': ']m'},
\ 'change':         {'b': '[c', 'f': ']c'},
\ 'foldborder':     {'b': '[z', 'f': ']z'},
\ 'foldnext':       {'b': 'zk', 'f': 'zj'},
\ 'changelist':     {'b': 'g;', 'f': 'g,'},
\ 'undolist':       {'b': 'g-', 'f': 'g+'},
\}

if !exists('g:lastnextprevious#default')
	let g:lastnextprevious#default = 'section-start'
endif

function! lastnextprevious#forward(...)
	call lastnextprevious#set_last(a:000)
	execute "normal! " . g:lastnextprevious#table[g:lastnextprevious#last]['f']
endfunction

function! lastnextprevious#backward(...)
	call lastnextprevious#set_last(a:000)
	execute "normal! " . g:lastnextprevious#table[g:lastnextprevious#last]['b']
endfunction

function! lastnextprevious#set_last(...)
	if len(a:1) > 0
		let g:lastnextprevious#last = a:1[0]
	elseif !exists('g:lastnextprevious#last')
		let g:lastnextprevious#last = g:lastnextprevious#default
	endif
endfunction
