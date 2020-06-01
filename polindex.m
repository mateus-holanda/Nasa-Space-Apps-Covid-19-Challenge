function ipa = polindex(O3,NO2,SO2,CO,PM)
% �NDICE DE POLUI��O ATMOSF�RICA (API) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -------------------------------------------------------------------------
% Sobre: O �ndice de Polui��o Atmosf�rico (API) pode ser usado para ajudar
% a compreender a qualidade do ar diariamente, indicando como o ar limpo ou
% polu�do, pode ser uma preocupa��o de sa�de para o p�blico. Os indicies
% foram adotados ap�s uma grande campanha de conscientiza��o entre
% ind�strias e ag�ncias de saneamento ambiental atrav�s de normativas
% t�cnicas. O API incide sobre o efeito dos gases nocivos ou materiais
% particulados, que possam causar efeitos adversos a sa�de p�blica. 
%
% O API � a medida dos cinco principais poluentes atmosf�ricos: o Mon�xido
% de Carbono (CO),  Di�xido de Carbono (CO2), Oz�nio, Di�xido de azoto
% (NO2), polui��o por part�culas e enxofre.
%
% Dados de entrada
%  O3  = Oz�nio, 8/8 horas (microgramas/m^3)
%  NO2 = Di�xido de azoto, m�dia hor�ria (micrograma/m^3)
%  SO2 = Di�xido de enxofre, m�dia (micrograma/m^3)
%  CO  = Mon�xido de carbono, m�dia (miligrama/m^3)
%  PM  = Particulados, (micrograma/m^3)
%
% Dados de Sa�da
%  ipa = �ndice de polui��o atmosf�rica
%
% Desenvolvimento: Equipe ITA-E2MoC
% Data: 31/05/2020
%
% Refer�ncia: www.confor.com.br/blog/o-indice-de-poluicao-atmosferica
%
%% Padr�es Nacionais de Qualidade do Ar

% Classifica��o do Oz�nio (O3)
if (O3 >= 0)&&(O3 < 32)
    x_o3 = 1;   % baixo
elseif (O3 >= 32)&&(O3 < 66)
    x_o3 = 2;  % baixo
elseif (O3 >= 66)&&(O3 < 99)
    x_o3 = 3;  % baixo
elseif (O3 >= 99)&&(O3 < 126)
    x_o3 = 4;  % moderado
elseif (O3 >= 126)&&(O3 < 152)
    x_o3 = 5;  % moderado
elseif (O3 >= 152)&&(O3 < 179)
    x_o3 = 6;  % moderado
elseif (O3 >= 179)&&(O3 < 239)
    x_o3 = 7;  % alto
elseif (O3 >= 239)&&(O3 < 299)
    x_o3 = 8;  % alto
elseif (O3 >= 299)&&(O3 < 359)
    x_o3 = 9;  % alto
elseif (O3 >= 359)
    x_o3 = 10; % muito alto
end

% Classifica��o do Di�xido de Azoto (NO2)
if (NO2 >= 0)&&(NO2 < 95)
    x_no2 = 1;   % baixo
elseif (NO2 >= 95)&&(NO2 < 190)
    x_no2 = 2;  % baixo
elseif (NO2 >= 190)&&(NO2 < 286)
    x_no2 = 3;  % baixo
elseif (NO2 >= 286)&&(NO2 < 381)
    x_no2 = 4;  % moderado
elseif (NO2 >= 381)&&(NO2 < 476)
    x_no2 = 5;  % moderado
elseif (NO2 >= 476)&&(NO2 < 572)
    x_no2 = 6;  % moderado
elseif (NO2 >= 572)&&(NO2 < 635)
    x_no2 = 7;  % alto
elseif (NO2 >= 635)&&(NO2 < 700)
    x_no2 = 8;  % alto
elseif (NO2 >= 700)&&(NO2 < 763)
    x_no2 = 9;  % alto
elseif (NO2 >= 763)
    x_no2 = 10; % muito alto
end

% Classifica��o do Di�xido de Enxofre (SO2)
if (SO2 >= 0)&&(SO2 < 88)
    x_so2 = 1;   % baixo
elseif (SO2 >= 88)&&(SO2 < 176)
    x_so2 = 2;  % baixo
elseif (SO2 >= 176)&&(SO2 < 265)
    x_so2 = 3;  % baixo
elseif (SO2 >= 265)&&(SO2 < 354)
    x_so2 = 4;  % moderado
elseif (SO2 >= 354)&&(SO2 < 442)
    x_so2 = 5;  % moderado
elseif (SO2 >= 442)&&(SO2 < 531)
    x_so2 = 6;  % moderado
elseif (SO2 >= 531)&&(SO2 < 708)
    x_so2 = 7;  % alto
elseif (SO2 >= 708)&&(SO2 < 886)
    x_so2 = 8;  % alto
elseif (SO2 >= 886)&&(SO2 < 1063)
    x_so2 = 9;  % alto
elseif (SO2 >= 1063)
    x_so2 = 10; % muito alto
end

% Classifica��o do Mon�xido de Carbono (CO)
if (CO >= 0)&&(CO < 3.8)
    x_co = 1;   % baixo
elseif (CO >= 3.8)&&(CO < 7.6)
    x_co = 2;  % baixo
elseif (CO >= 7.6)&&(CO < 11.5)
    x_co = 3;  % baixo
elseif (CO >= 11.5)&&(CO < 13.4)
    x_co = 4;  % moderado
elseif (CO >= 13.4)&&(CO < 15.4)
    x_co = 5;  % moderado
elseif (CO >= 15.4)&&(CO < 17.3)
    x_co = 6;  % moderado
elseif (CO >= 17.3)&&(CO < 19.2)
    x_co = 7;  % alto
elseif (CO >= 19.2)&&(CO < 21.2)
    x_co = 8;  % alto
elseif (CO >= 21.2)&&(CO < 23.1)
    x_co = 9;  % alto
elseif (CO >= 23.1)
    x_co = 10; % muito alto
end

% Classifica��o dos Particulados (PM)
if (PM >= 0)&&(PM < 16)
    x_pm = 1;   % baixo
elseif (PM >= 16)&&(PM < 32)
    x_pm = 2;  % baixo
elseif (PM >= 32)&&(PM < 49)
    x_pm = 3;  % baixo
elseif (PM >= 49)&&(PM < 57)
    x_pm = 4;  % moderado
elseif (PM >= 57)&&(PM < 66)
    x_pm = 5;  % moderado
elseif (PM >= 66)&&(PM < 74)
    x_pm = 6;  % moderado
elseif (PM >= 74)&&(PM < 82)
    x_pm = 7;  % alto
elseif (PM >= 82)&&(PM < 91)
    x_pm = 8;  % alto
elseif (PM >= 91)&&(PM < 99)
    x_pm = 9;  % alto
elseif (PM >= 99)
    x_pm = 10; % muito alto
end

ipa = (x_o3 + x_no2 + x_so2 + x_co + x_pm)/5;

end

