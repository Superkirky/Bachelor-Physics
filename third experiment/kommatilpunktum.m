function kommaTilpunktum(filsti) % filsti er streng
Data = fileread(filsti);
Data = strrep(Data, ',', '.'); % finder komma og erstatter med punktum
Nyt_navn = strrep(filsti,'.txt','punktum.txt'); % ændrer sidste streng til ønskede navnendelse.
FID = fopen(Nyt_navn, 'w'); % åben eller opretter dokument med nye navn
fwrite(FID, Data, 'char'); % skriver streng med alle , skiftet til .
fclose(FID); % lukker dokumentet igen
end


