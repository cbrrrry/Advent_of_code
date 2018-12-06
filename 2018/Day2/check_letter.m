function match=check_letter(str1,str2)
match=0;
for i=1:length(str1)
   
    if(strcmp(str1(i),str2(i)))
       match=match+1; 
    end

    
    
end

end