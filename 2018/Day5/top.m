function part1= top(poly)
[new_poly,new_base]=keep_going(poly,1);
while(length(new_poly)<length(poly))
    poly=new_poly;
[new_poly,new_base]=keep_going(poly,1);
part1=length(new_poly);
end


end