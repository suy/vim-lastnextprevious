if exists('g:loaded_lastnextprevious')
  finish
endif

if !exists('g:lastnextprevious#last')
	let g:lastnextprevious#last = 'section-start'
endif

for key in keys(g:lastnextprevious#table)
	let mapbackward = maparg(g:lastnextprevious#table[key].b, 'n', 0, 1)
	let mapforward  = maparg(g:lastnextprevious#table[key].f, 'n', 0, 1)
	if !empty(mapbackward) || !empty(mapforward)
		let g:lastnextprevious#table[key].bmap = mapbackward.rhs
		let g:lastnextprevious#table[key].fmap = mapforward.rhs
	endif

	execute "nmap <silent>"
		\ . g:lastnextprevious#table[key].f
		\ . " :<C-u>call lastnextprevious#forward"
		\ . "('" . key . "')<Return>"
	execute "nmap <silent>"
		\ . g:lastnextprevious#table[key].b
		\ . " :<C-u>call lastnextprevious#backward"
		\ . "('" . key . "')<Return>"
endfor


nmap <silent> <Plug>lastnextprevious_forward  :<C-u>call lastnextprevious#forward()<Return>
nmap <silent> <Plug>lastnextprevious_backward :<C-u>call lastnextprevious#backward()<Return>

let g:loaded_lastnextprevious=1

