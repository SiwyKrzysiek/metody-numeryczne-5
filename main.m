%% Przyk?adowe zadanie 1
clc;
clear;
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