fileID = fopen('P4_input.txt','r');
format_spec=['[' '%4i' '-' '%2i' '-' '%2i' '%2i' ':' '%2i' ']' ' ' '%s' '\n'];
data_format=[1 inf];
input=fscanf(fileID,format_spec, data_format ); 
fclose(fileID);
input=input'; %[year,month,day,hour,minute,message]

%need to sort the data by the dates, make sure the times are consistent. 
%need to figure out which guard which was working when

