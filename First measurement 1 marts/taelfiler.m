function [n] = taelfiler()
% Look for m files in current folder and count them.
d = dir('*.txt');
n=length(d);
end
