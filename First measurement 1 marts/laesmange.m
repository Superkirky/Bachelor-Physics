
numfiles = taelfiler
mydata = cell(1, numfiles);

for k = 0:numfiles
    if k == 0
        kommatilpunktum(sprintf('first000%d.txt',k-1));
        myfilename = sprintf('first000%dpunktum.txt', k-1);
    elseif k < 10
        kommatilpunktum(sprintf('first000%d.txt', k));
        myfilename = sprintf('first000%dpunktum.txt', k);
    elseif k < 100
        kommatilpunktum(sprintf('first00%d.txt', k));
        myfilename = sprintf('first00%dpunktum.txt', k);
    else
        kommatilpunktum(sprintf('first0%d.txt', k));
        myfilename = sprintf('first0%dpunktum.txt', k);
    end
mydata{k} = importdata(myfilename);
k
end