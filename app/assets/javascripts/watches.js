
function format(stock){
    code = split(stock.text, ' ', 1)[0];
    name = split(stock.text, ' ', 1)[1];
    name = name.subs