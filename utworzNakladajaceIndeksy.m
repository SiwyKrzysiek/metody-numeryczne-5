function indeksy = utworzNakladajaceIndeksy(dlugoscWektora, krok)
%UTWORZNAKLADAJACEINDEKY Generuje nakladajace indeksy dla danego wektora
%   Przydatne do zlozonego NC
l = dlugoscWektora;

podstawoweIndeksy = 1:krok-1:l;

if l ~= podstawoweIndeksy(end)
    indeksy = zeros(2, length(podstawoweIndeksy));
    for i = 1:length(indeksy)-1
        indeksy(:, i) = [podstawoweIndeksy(i), podstawoweIndeksy(i+1)];
    end
    indeksy(:, end) = [podstawoweIndeksy(end), l];
else
    indeksy = zeros(2, length(podstawoweIndeksy)-1);
    for i = 1:length(indeksy)
        indeksy(:, i) = [podstawoweIndeksy(i), podstawoweIndeksy(i+1)];
    end
end

end

