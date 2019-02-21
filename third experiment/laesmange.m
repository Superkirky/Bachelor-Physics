
numfiles = taelfiler
mydata = cell(1, numfiles);

for k = 0:numfiles
    if k == 0
        kommatilpunktum(sprintf('Vibration20april000%d.txt',k));
        myfilename = sprintf('Vibration20april000%dpunktum.txt', k);
    elseif k < 10
        kommatilpunktum(sprintf('Vibration20april000%d.txt', k));
        myfilename = sprintf('Vibration20april000%dpunktum.txt', k);
    elseif k < 100
        kommatilpunktum(sprintf('Vibration20april00%d.txt', k));
        myfilename = sprintf('Vibration20april00%dpunktum.txt', k);
    else
        kommatilpunktum(sprintf('Vibration20april0%d.txt', k));
        myfilename = sprintf('Vibration20april0%dpunktum.txt', k);
    end
mydata{k+1} = importdata(myfilename);

end