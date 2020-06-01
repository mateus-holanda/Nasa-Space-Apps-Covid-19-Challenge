%Formato de dados utilizados:
%x0 - População
%x1 - Temperatura instantânea (correlação negativa)
%x2 - Umidade relativa (correlação negativa)
%x3 - Poluição do ar
%x4 - Casos confirmados diarios

%De acordo com o artigo
% x0 - Exposure
% x1,x2,x3,x4 - Hazard and Vulnerability

%x_i é o vetor dos dados lidos pelas APIs no formato:
%x_i=[x0 x1 x2 x3 x4]

%Limites dos valores, são tabelados conforme segue:
x_0_min=0;
x_0_max=212000000;
x_1_min=-4;
x_1_max=43.9;
x_2_min=0;
x_2_max=100;
x_3_min=0;
x_3_max=10;
x_4_min=0;
x_4_max=100000;

%Na primeira coluna é o valor mínimo e na segunda o valor máximo. Para os casos de correlação negativa
%(temperatura e umidade), essas posições se invertem.
x_r=[x_0_min x_0_max
    x_1_max x_1_min
    x_2_max x_2_min
    x_3_min x_3_max
    x_4_min x_4_max]';

%Criado o vetor x
x=zeros(1,length(x_i));

%O primeiro só é dividido pelo valor máximo
x(1)=x_i(1)/x_r(2,1); 

%Para normalizar os valores a partir de x(2)
for i=2:length(x_i)
    x(i)=(x_i(i)-x_r(1,i))/(x_r(2,i)-x_r(1,i));
end

%Método E_HV
%Ponderação é dado pelo número de indicadores
a=ones(1,length(x_i)-1)/(length(x_i)-1);
E=x(1);
F_hv=dot(a,x(2:end));

%Índice de risco para a região
R_EH=E*F_hv;