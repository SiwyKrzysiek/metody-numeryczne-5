%% Przyk?adowe zadanie 1
clc;
clear;
format long;

Fi = [11];
h = 0.5;

w = prostyNewtonCotes(Fi, h)

Fi = [0, 11];
h = 1;

w = prostyNewtonCotes(Fi, h)

Fi = [0, 0.0107, 11];
h = 0.5;

w = prostyNewtonCotes(Fi, h)

Fi = [0, 0.000186, 0.1907, 11];
h = 0.333;

w = prostyNewtonCotes(Fi, h)

Fi = [0, 0.00001, 0.0107, 0.61945, 11];
h = 0.25;

w = prostyNewtonCotes(Fi, h)

Fi = [11, 0.0107421875, 0, 0.0107421875, 11];
h = 0.5;

w = prostyNewtonCotes(Fi, h)

%% Zadanie 2
clc;
clear;
format long;

f = @(x)(11 * x^10);

X = linspace(-1, 1, 201);
Y = arrayfun(f, X);
rzedy = [1 2 3 4];

for r = rzedy
    w = zlozonyNewtonCotes(Y, 0.01, r)
end


%% Zadanie 3
clc;
clear;
format long;

rzedy = [1 2 3 4];
lr = length(rzedy);
W = zeros(lr, 1000);
a = -2;
b = 2;
f = @(x)(11 * x^10);

for r = rzedy
    for i = (r + 1):1000
        n = r * i + 1;
        h = (b - a)/(n - 1);
        
        X = linspace(a, b, n);
        Y = arrayfun(f, X);

        W(r, i) = zlozonyNewtonCotes(Y, h, r);
        

    end
end

%%
    loglog([1:1000], abs(W(1, :) - 2.0), '-r', [1:1000], abs(W(2, :) - 2.0), '-g', [1:1000], abs(W(3, :) - 2.0), '-b', [1:1000], abs(W(4, :) - 2.0), '-m')
    grid on

%% Test funkcji do indeksow
clc;
clear;

utworzNakladajaceIndeksy(9, 3)