
numfiles = taelfiler
mydata = cell(1, numfiles);

for k = 1:numfiles-1
    if k == 1
        myfilename = sprintf('first000%dpunktum.txt', k-1);
    elseif k < 10
        myfilename = sprintf('first000%dpunktum.txt', k);
    elseif k < 100
        myfilename = sprintf('first00%dpunktum.txt', k);
    else
        myfilename = sprintf('first0%dpunktum.txt', k);
    end
  kommatilpunktum(myfilename);
  mydata{k} = importdata(myfilename);
  k
end