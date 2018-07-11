# Cafe
### A simple vim plugin for compiling and running Java code on Windows

This is a very simple plugin that adds several functions and a menu allowing the user to easily compile or run the current file.

#### The functions:
1. cdFileDir(): This function changes the current directory to the location of the file in the current buffer. This function is run by the subsequent functions.
1. JavaCompile(): This function asynchronously executes javac to compile the file in the current buffer.
1. JavaRun(): This function asynchronously executes java to run the compiled version of the file in the current buffer.

#### The menu:
  - Alt-C opens the Cafe menu
  - Once the Cafe menu is open
    - 'd' runs cdFileDir()
    - 'c' runs JavaCompile()
    - 'r' runs JavaRun()

#### Installation:
Clone into your ~/.vim/pack (%USERPROFILE%\vimfiles\pack on windows) directory (create the pack directoty if it doesn't already exist).

Cafe.vim only supports Vim 8 or later (for asynchronous execution).
Cafe.vim currently only supports Windows as it makes use of a Windos only feature.  I hope to find a way to accomplish the same thing in a cross-platform manner in the future.
