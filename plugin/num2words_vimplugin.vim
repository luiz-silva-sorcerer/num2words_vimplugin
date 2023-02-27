function Num2Words(num)
python3 << EOF
from num2words import num2words
import vim
word = num2words(vim.eval('a:num'))
vim.command('let word = \"' + word + '\"')
EOF
return word
endfunc

function Ord2Words(num)
python3 << EOF
from num2words import num2words
import vim
word = num2words(vim.eval('a:num'), ordinal=True)
vim.command('let word = \"' + word + '\"')
EOF
return word
endfunc

function WriteNums()
"exe ':%s/\([0-9]\+\)\([^a-z0-9]\|\n\)/\=Num2Words(submatch(1)).submatch(2)/gc'
"exe ':%s/\([0-9]\+\)[a-z]\+/\=Ord2Words(submatch(1))/gc'
exe ':%s/\([0-9]\+\)\([a-z]\+\|[^a-z0-9]\|\n\)\|\+/\=Num2Words(submatch(1), submatch(2))/gc'
endfunc
