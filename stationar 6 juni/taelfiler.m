function [n] = taelfiler(sti) % sti til mappe med filer der skal tælles
% Looks for txt files in path folder and counts them.
d = dir(strcat(sti,'*.txt'));
n=length(d);
end
