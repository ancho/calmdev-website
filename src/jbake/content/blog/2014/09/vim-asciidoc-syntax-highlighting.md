title=vim asciidoc syntax highlighting
date=2014-09-14
type=post
tags=asciidoc,vim
status=published
~~~~~~

Enabling syntax highlighting in vim for asciidoc formatted files is easy. Really.

### grab the asciidoc vim syntax file

The [asciidoc project](https://github.com/asciidoc/asciidoc) on github is your friend.

At first create a _syntax_ Folder within your _.vim_ directory.

```
mkdir ~/.vim/syntax
```

Then grab a copy of the asciidoc vim syntax file.

```
wget https://raw.githubusercontent.com/asciidoc/asciidoc/master/vim/syntax/asciidoc.vim -O .vim/syntax/asciidoc.vim
```

That's all.

You can enable syntax highlighting for asciidoc with the following command in vim.

```
:syn on
:set syn=asciidoc
```

Further information about vim syntax highlighting:

```
:help syntax
``` 
Or visit the [syntax documentation](http://vimdoc.sourceforge.net/htmldoc/syntax.html#syntax) at sourceforge.

### Filetype detection

It's good to know how to enable syntax highlighting manually. But it's much more comfortable to enable syntax highlighting based on the filetype I'm working with.

Create the _ftdetect_ directory within your _.vim_ directory.

```
mkdir ~/.vim/ftdetect
```

Create a file called _asciidoc.vim_ with the following content.

```
au BufRead,BufNewFile *.adoc        setfiletype asciidoc
au BufRead,BufNewFile *.asciidoc    setfiletype asciidoc
```

You need to restart your running vim instance.
Next time you open a file with suffix *.adoc or *.asciidoc the highlighting for asciidoc gets automatically loaded.

See [new-filetype documentation](http://vimdoc.sourceforge.net/htmldoc/filetype.html#new-filetype) or execute ```:help new-filetype``` for more information.