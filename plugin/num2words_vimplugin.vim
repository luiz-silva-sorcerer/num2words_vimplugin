function Num2Words(num, remain)
python3 << EOF
from num2words import num2words
import re
import vim

num = vim.eval('a:num')
# remove comma thousand separators
num = re.sub(',(?=[0-9])', '', num)
remain = vim.eval('a:remain')
ordinal = re.match('[a-z]+', remain) is not None

word = num2words(num, ordinal=ordinal)
if not ordinal:
	word += remain

vim.command('let word = \"' + word + '\"')
EOF
return word
endfunc

function WriteNums()
" does not work for point 
" exe ':%s/\v([0-9]+)(([a-z]+|[^a-z0-9]|\n))/\=Num2Words(submatch(1), submatch(2))/gc'
" this works for commas as thousands separators, as well as decimals (commas
" have to be removed later)
exe '%s/\v([0-9\,]+(\.+[0-9]+)*)(([a-z]+|[^a-z0-9]|\n))/\=Num2Words(submatch(1), submatch(3))/gc'
endfunc

command! WriteNumbers call WriteNums()
