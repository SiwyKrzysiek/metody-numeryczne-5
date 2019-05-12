function wynik = zlozonyNewtonCotes(wartosci, krok, rzad)
%ZLOZONYNEWTONCOTES Ca?kowanie metod? prost? Newtona-Cotesa
rzad = int16(rzad);
wynik = 0;

lTypowychPrzedzialow = idivide(length(wartosci), rzad);
for i = 0:lTypowychPrzedzialow-1
   a = i * rzad + 1;
   b = a + rzad - 1;
   
   wynik = wynik + prostyNewtonCotes(wartosci(a:b), krok);
end

n = length(wartosci);
if b < n %Zosta? niepe?ny przedzia?
    wynik = wynik + prostyNewtonCotes(wartosci(b+1:n), krok);
end

end

