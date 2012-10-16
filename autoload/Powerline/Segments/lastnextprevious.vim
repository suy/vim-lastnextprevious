let g:Powerline#Segments#lastnextprevious#segments = Pl#Segment#Init(['lastnextprevious',
	\ (exists('g:loaded_lastnextprevious') && g:loaded_lastnextprevious == 1),
	\
	\ Pl#Segment#Create('static_str', '%{Powerline#Functions#lastnextprevious#last()}')
\ ])
