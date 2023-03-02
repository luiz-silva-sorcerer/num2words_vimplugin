*num2words_vimplugin* - Replaces numerals with corresponding English words
```
          _   _  _   _  __  __   ____  _  _  ___  ___  __    __
         | \ | || | | ||  \/  | / _  \| || ||   ||   \|  \  / /
         |  \| || | | || |\/| ||_/_) /| || || | || | || | || | 
         |     || | | || |  | |  / _/ | /\ || | ||   /| | | \ \
         | |\  || |_| || |  | | / /__ |    || | || | \| | |_| |
         |_| \_||_____||_/  \_||_____| \/\/ |___||_|\/|__/|__/

```

###                Wraper for the `num2words` Python library.


## 1. How it works

Run the plugin with:

```:WriteNumbers```

And it will search every number in numeral form (`[0-9]+`) and replace it with 
corresponding English words, using the library `num2words` available on PyPI. 

Ordinal numbers, decimals using point, and commas as thousands separators
are also handled correctly.


## 2. Installation

First, install the library using `pip`:

```$ pip install num2words```

Then if using [vim-plug](https://github.com/junegunn/vim-plug), add this to
your ~/.vimrc, between the call plug lines:

```
" Num2Words Plugin
Plug 'luiz-silva-sorcerer/num2words_vimplugin'
```
And install it by running inside vim:

```:PlugInstall```

Make sure your `vim` has `python3` support:

```$ vim --version | grep +python3```

