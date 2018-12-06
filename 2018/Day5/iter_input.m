function [poly,new_base]=iter_input(poly, base)

[poly,base]=remove_match(poly,base);

if(base==length(poly))
    new_base=1;
    poly=poly;
   else 
    [poly,new_base]=iter_input(poly,base+1);



end