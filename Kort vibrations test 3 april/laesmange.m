
numfiles = taelfiler
mydata = cell(1, numfiles);

for k = 0:numfiles
    if k == 0
        kommatilpunktum(sprintf('kortvibrationsmaaling0000%d.txt',k));
        myfilename = sprintf('kortvibrationsmaaling0000%dpunktum.txt', k);
    elseif k < 10
        kommatilpunktum(sprintf('kortvibrationsmaaling0000%d.txt', k));
        myfilename = sprintf('kortvibrationsmaaling0000%dpunktum.txt', k);
    elseif k < 100
        kommatilpunktum(sprintf('kortvibrationsmaaling000%d.txt', k));
        myfilename = sprintf('kortvibrationsmaaling000%dpunktum.txt', k);
    else
        kommatilpunktum(sprintf('kortvibrationsmaaling00%d.txt', k));
        myfilename = sprintf('kortvibrationsmaaling00%dpunktum.txt', k);
    end
mydata{k+1} = importdata(myfilename);

end