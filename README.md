docs
====

I didn't want to bundle this stuff with my dot files, but this is basically a
place for various documentation that would otherwise be provided by an IDE.

Much of the content here is the result of running vimdoclet-1.2 on various java
source code files.


Java
----

Vim help files for Java 7 are located in `vim/java/std-java`.

These are the javadoc comments extracted from the Java 7 source code that is
freely available from Oracle.


Android
-------

Vim help files for the Android Java APIs are located in `vim/java/android`.

These are the javadoc comments extracted from the various Android Java source
code available from The Android Open Source Project.


Installation
------------

Copy the files to a subdirectory of `.vim/doc` and regenerate the helptags
file.  Or, use the make file and do a `make install`.


Removal
-------

Remove the `.vim/doc/lang-doc` or relevant subdirectory and then regenerate the
helptags file.  Or, use the make file and do a `make uninstall`.


Usage
-----

While in vim, type `:help <class name>`.

I like to put the following in my .vimrc so that I can use `Shift+K` over an
import statement while editing java source files:

    autocmd FileType java set keywordprg=

Tip from [here](http://vim.wikia.com/wiki/Vim_Doclet).


Notes
-----

Vim Doclet can be found [here](http://sourceforge.net/projects/vimdoclet).

I had a great deal of trouble figuring out how to run vimdoclet.  Eventually I
did something like this from within the `vimdoclet-1.2` directory:

    ant -buildfile run.xml -Dvimdoclet.source.root=java_sources/ -Dvimdoclet.outputDir=std-java/

And then I moved the files to where I could use them.
