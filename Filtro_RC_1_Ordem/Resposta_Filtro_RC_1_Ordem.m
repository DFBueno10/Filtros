R = 1e3;                % Resistencia [ohm]
C = 100e-9;             % Capacitancia [F]
wc = 1 / (R*C)          % Frequência angular de corte [rad/s]
fc = wc / (2*pi)        % Frequencia de corte [Hz]
G = tf([wc], [1 wc])    % Funcao de transferencia em s
figure(1);              % Cria a figura 1
bode(G);                % Resposta em frequencia da funcao de transferencia G
grid("on");             % Exibe o grid no grafico
