
%get data
fileID = fopen('polymer.txt','r');
format_spec='%s';
data_format=[26,250];
input=fscanf(fileID,format_spec ); 
fclose(fileID);



%recursive solution...?
base=1;
poly=input;
part1=top(poly);

%pERT2 - figure out which letter is cauzing the most problems

upper=65:90;
lower=97:122;


for i=1:26
    test_remove(i).poly=input;
    
    index(i).lower=find(test_remove(i).poly==char(lower(i)));
    test_remove(i).poly(index(i).lower)=[];
    
    index(i).upper=find(test_remove(i).poly==char(upper(i)));
    test_remove(i).poly(index(i).upper)=[];
    
    test_remove(i).length=top(test_remove(i).poly);
    
end
part2=min([test_remove.length]);






