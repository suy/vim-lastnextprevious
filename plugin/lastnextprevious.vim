if exists('g:loaded_lastnextprevious')
  finish
endif

let g:lastnextprevious#last = 'change'

nmap <silent> [{ :<C-u>call lastnextprevious#forward('block')<Return>
nmap <silent> ]} :<C-u>call lastnextprevious#backward('block')<Return>

nmap <silent> [[ :<C-u>call lastnextprevious#forward('function')<Return>
nmap <silent> ]] :<C-u>call lastnextprevious#backward('function')<Return>

nmap <silent> zj :<C-u>call lastnextprevious#forward('foldnext')<Return>
nmap <silent> zk :<C-u>call lastnextprevious#backward('foldnext')<Return>

nmap <silent> [z :<C-u>call lastnextprevious#forward('foldborder')<Return>
nmap <silent> ]z :<C-u>call lastnextprevious#backward('foldborder')<Return>

nmap <silent> [c :<C-u>call lastnextprevious#backward('change')<Return>
nmap <silent> ]c :<C-u>call lastnextprevious#forward('change')<Return>


nmap <silent> + <Plug>lastnextprevious_forward
nmap <silent> - <Plug>lastnextprevious_backward

nmap <silent> <Plug>lastnextprevious_forward  :<C-u>call lastnextprevious#forward()<Return>
nmap <silent> <Plug>lastnextprevious_backward :<C-u>call lastnextprevious#backward()<Return>

let g:loaded_lastnextprevious=1
