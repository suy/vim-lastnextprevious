if exists('g:loaded_lastnextprevious')
  finish
endif

for key in keys(g:lastnextprevious#table)
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

