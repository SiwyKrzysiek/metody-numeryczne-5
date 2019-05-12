function wynik = prostyNewtonCotes(wartosci, krok)
%PROSTYNEWTONCOTES Ca?kowanie metod? prost? Newtona-Cotesa
%Obs?ugiwane s? rz?dy od 0 do 5
switch length(wartosci)
    case 1
        wynik = wartosci(1) * krok;
        return;
    case 2
        sigma = [1 1];
        ns = 2;
    case 3
        sigma = [1 4 1];
        ns = 6;
    case 4
        sigma = [1 3 3 1];
        ns = 8;
    case 5
        %TODO: wzór Booole'a
        sigma = [7 32 12 32 7];
        ns = 90;
    otherwise
        wynik = NaN;
        return;
end

wynik = 0;
for i = 1:length(wartosci)
    wynik = wynik + sigma(i) * wartosci(i);
end

wynik = wynik * (krok * (length(wartosci)-1));
wynik = wynik / ns;
end

