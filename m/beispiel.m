function Rxx=Autokor(x) 
% Rxx=Autokor(x) berechnet die diskrete zyklische  
% Autokorrelationsfunktion des Vektors x. 
% Rxx ist eine zweizeilige Matrix: 
% Spaltenzahl=Laenge von x 
% 1. Zeile: m-Achse (Nummern der Werte) 
% 2. Zeile: Autokorrelationsfolge 
xx=x.^2;                    % Wert Nr.0 (keine Verschiebung) 
Rx=sum(xx); 
N=length(x); 
x1=x;                       % Vektor der verschobenen Werte 
for t=1:N-1 
  x1=[x1(1,N),x1(1,1:N-1)]; % zykl.Verschiebung 
  xx1=x.*x1; 
  R=sum(xx1); 
  Rx=[Rx,R];                % Konstruieren des Vektors 
end 
m=0:N-1 ; 
Rxx=[m;Rx];
