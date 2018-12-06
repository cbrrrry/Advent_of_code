
fileID = fopen('P1_input.txt','r');
format_spec='%li\n';
data_format=[1 Inf];
input=fscanf(fileID,format_spec,data_format ); 
fclose(fileID);
input=input';

%Ascii
%43='+', 45='-';

%clean start
frequency=0; 
clear freq_log;
for count=1:length(input)
     fprintf('Current freq= %i. Change: %i. New frequency= %i. \n ', frequency, input(count), (frequency+input(count))); 
     frequency=frequency+input(count); 
     freq_log(count)=frequency;
end
freq_log=freq_log';

figure;
plot(1:length(freq_log), freq_log); 
%Frequency is a duty cycle of a square wave... Need to think about this. 

%linear search
index=zeros(976,2);
check=0;
iter=1;
while check==0;
    for count=1:length(freq_log)
        index(count,:)=find(freq_log==freq_log(count),2)';
        
              
        if(index(count)~=count)
            fprintf('Reaches %li frequency twice at count %i. \n', freq_log(count), count)
            check=1;
        end
    end
    for count=1:length(input)
        fprintf('Current freq= %i. Change: %i. New frequency= %i. \n ', frequency, input(count), (frequency+input(count)));
        frequency=frequency+input(count);
        freq_log(count+length(input)*iter)=frequency;
    end
    iter=iter+1;
end
index=index';


