
numfiles = taelfiler
mydata = cell(1, numfiles);

for k = 0:numfiles
    if k == 0
        kommatilpunktum(sprintf('stationary000%d.txt',k));
        myfilename = sprintf('stationary000%dpunktum.txt', k);
    elseif k < 10
        kommatilpunktum(sprintf('stationary000%d.txt', k));
        myfilename = sprintf('stationary000%dpunktum.txt', k);
    elseif k < 100
        kommatilpunktum(sprintf('stationary00%d.txt', k));
        myfilename = sprintf('stationary00%dpunktum.txt', k);
    else
        kommatilpunktum(sprintf('stationary0%d.txt', k));
        myfilename = sprintf('stationary0%dpunktum.txt', k);
    end
mydata{k+1} = importdata(myfilename);

end