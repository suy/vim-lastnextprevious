if exists('g:loaded_lastnextprevious')
  finish
endif

if !exists('g:lastnextprevious#last')
	let g:lastnextprevious#last = 'section-start'
endif

for s:key in keys(g:lastnextprevious#table)
	let s:mapbackward = maparg(g:lastnextprevious#table[s:key].b, 'n')
	let s:mapforward  = maparg(g:lastnextprevious#table[s:key].f, 'n')
	if !empty(s:mapbackward) || !empty(s:mapforward)
		let g:lastnextprevious#table[s:key].bmap = s:mapbackward
		let g:lastnextprevious#table[s:key].fmap = s:mapforward
	endif

	execute "nmap <silent>"
		\ . g:lastnextprevious#table[s:key].f
		\ . " :<C-u>call lastnextprevious#forward"
		\ . "('" . s:key . "')<Return>"
	execute "nmap <silent>"
		\ . g:lastnextprevious#table[s:key].b
		\ . " :<C-u>call lastnextprevious#backward"
		\ . "('" . s:key . "')<Return>"
endfor


nmap <silent> <Plug>lastnextprevious_forward  :<C-u>call lastnextprevious#forward()<Return>
nmap <silent> <Plug>lastnextprevious_backward :<C-u>call lastnextprevious#backward()<Return>

let g:loaded_lastnextprevious=1

