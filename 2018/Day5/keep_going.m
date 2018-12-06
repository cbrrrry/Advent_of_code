function [new_poly,new_base]=keep_going(poly,base)
[new_poly, base]=iter_input(poly,base);

if(length(new_poly)>=length(poly))
        new_poly=new_poly;
    new_base=base;
   return;
else 
   [new_poly,new_base]=keep_going(new_poly,base+1);
    
end

end