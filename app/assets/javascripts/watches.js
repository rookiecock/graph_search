
function format(stock){
    code = split(stock.text, ' ', 1)[0];
    name = split(stock.text, ' ', 1)[1];
    name = name.substring(1, name.length - 1);
    if(stock.id == '') 