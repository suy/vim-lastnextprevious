let lastnextprevious#mappings = {
\ 'change'     :  [']c', '[c'],
\ 'function'   :  ['[[', ']]'],
\ 'block'      :  ['[{', ']}'],
\ 'foldborder' :  ['[z', ']z'],
\ 'foldnext'   :  ['zj', 'zk'],
\ 'changelist' :  ['g;', 'g,'],
\ 'quickfix'   :  [']q', '[q'],
\}

function! lastnextprevious#forward(...)
	if a:0 > 0
		let g:lastnextprevious#last = a:1
	endif
	execute "normal! " . g:lastnextprevious#mappings[g:lastnextprevious#last][0]
endfunction

function! lastnextprevious#backward(...)
	if a:0 > 0
		let g:lastnextprevious#last = a:1
	endif
	execute "normal! " . g:lastnextprevious#mappings[g:lastnextprevious#last][1]
endfunction

