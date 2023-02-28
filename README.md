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

Ordinal numbers are also handled correctly, and are the main motivation for 
writing this plugin.

Note: Does not work for decimals, or numbers with thousands separators. Will 
just convert each section separately. Please run a quick massage on your text 
(for example remove separators, and replace `.` with the word `point`). 
This feature may be included in the future.


## 2. Installation

First, install the library using `pip`:

```$ pip install num2words```

Then if using [vim-plug](https://github.com/junegunn/vim-plug), just clone 
this repository under `~/.vim/plugged`, and add this to your `~/.vimrc`, 
between the `call plug` lines:

```" Num2Words Plugin
Plug '~/.vim/plugged/num2words_vimplugin'
```

If you're using other plugin managers, check their instructions on how to 
install local plugins.

Make sure your `vim` has `python3` support:

```$ vim --version | grep +python3```

