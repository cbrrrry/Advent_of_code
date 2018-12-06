%%Checksum day 2 
%calc number of repeats in each string


%get data
fileID = fopen('P2_input.txt','r');
format_spec='%s \n';
data_format=[26,250];
input=fscanf(fileID,format_spec, data_format ); 
fclose(fileID);
input=input';

%Generate a repeat ID matrix for each line
%       repeattwice  3times 4times 5 times 
%line i    1           1      0       0 
%...
%sum each column and multiply the sums


for row=1:length(input)
%minimal char used, ia-index of these in input, ic- reconstruct input from     
[C, ia, ic]=unique(input(row,:));
 letter_count=accumarray(ic,1); %figure out which letters repeat in 
 sum_letter_count=accumarray(letter_count,1); %get a count of each char presence. 
 
 char_i=1;
 %there are duplicates, find out if triplicates, or more
 while(char_i<=length(sum_letter_count))
     out_array(row,char_i)=(sum_letter_count(char_i)>0);
     char_i=char_i+1;
 end

end

 checksum=1;
for dup=2:3
  checksum=checksum*sum(out_array(:,dup));
    
end
disp('checksum=');
disp(checksum);


%part2- find which letters are common between the two box ID's. 

%find ID's that are 25/26 similar

for(i=1:length(input))
    for(ii=1:length(input))
       dist(i,ii)=check_letter(input(i,:),input(ii,:)); 
    end
end

inx=mod(find(dist==25),250);


for(i=1:26)
  if(input(inx(1),i)~=input(inx(2),i))  
      remove_index=i;
  else 
      part2(i)=input(inx(1),i);
  end
  
    
end






