"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Simple compile and run functions for simple java programs "
"                                                           "
" This expects that javac and java are in your path         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:amenu <silent> &Cafe.cdFile&Dir :call CdFileDir()<CR>
:amenu <silent> &Cafe.java&Compile :call JavaCompile()<CR>
:amenu <silent> &Cafe.java&Run :call JavaRun()<CR>

:function! CdFileDir()
"	Change directory to location of current file	
"	if necessary	  
:	if getcwd() != expand('%:p:h')
:		cd %:p:h
:	endif
:endfunction

:function! JavaCompile()
"	Set cwd to current file directory
:	call CdFileDir()
:	echom "Compiling " . expand('%')
"	Compile the current java file asynchonously
:	if has('win16') || has('win32') || has('win64')
:		!start cmd /c "javac % & pause" 
:	else
:		echom "Not configured for this OS"
:	endif
"	Avoid the "Press ENTER or type command to continue" message
:	redraw
:endfunction

:function! JavaRun()
"	Set cwd to current file directory
:	call CdFileDir()
:	echom "Running " . expand('%:t:r') . '.class'
"	Run the compiled version of the current java file asynchronously
:	if has('win16') || has('win32') || has('win64')
:		!start cmd /c "java %:r & pause"
:	else
:		echom "Not configured for this OS"
:	endif
"	Avoid the "Press ENTER or type command to continue" message
:	redraw
:endfunction
