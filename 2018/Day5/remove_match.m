function [poly,new_base]=remove_match(poly,base)
     if((base+1)>=length(poly))
        new_base=base;
        
      return;
     end

    base1=double(uint8(poly(base)));
    base2=double(uint8(poly(base+1)));
    check=base1-base2;
    %look for adjacent bases
  
    
    if(check==(-32)||check==32)
        poly(base)=[];
        poly(base)=[];
        new_base=base;

    else
        new_base=base+1;
    end
end
