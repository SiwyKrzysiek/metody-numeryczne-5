function wynik = zlozonyNewtonCotes(wartosci, krok, rzad)
%ZLOZONYNEWTONCOTES Ca?kowanie metod? prost? Newtona-Cotesa
wynik = 0;

indeksy = utworzNakladajaceIndeksy(length(wartosci), rzad+1);

for i = indeksy
     przedzial = wartosci(i(1):i(2));
     wynik = wynik + prostyNewtonCotes(przedzial, krok);
end

end
