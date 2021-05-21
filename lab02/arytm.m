X= gen_time(50, 100);
Y= gen_sin((gen_time(50, 100)), 10, 1, 0);
A= X+Y; %dodawanie
B= X.*Y; %mano¿enie
C= X.+10; %dodawanie sk³adowej stalej
D= X.*2; %zwiêkszanie amplitudy poprzez mno¿enie 

disp("To s¹ wartoœci sygna³u X:"), disp(X);
disp("To s¹ wartoœci sygna³u Y:"), disp(Y);
disp("Wynik sumy sygna³ów X+Y:"), disp(A);
disp("Wynik mno¿enia sygna³ów X+Y:"), disp(B);
disp("Wynik dodania sk³adowej sta³ej do funkcji X:"), disp(C);
disp("Wynik zwiêkszenia amplitudy sygna³u X:"), disp(D);

subplot(6, 1, 1);
plot(X);
title("To s¹ wartoœci sygna³u X:");
subplot(6, 1, 2);
plot(Y);
title("To s¹ wartoœci sygna³u Y:");
subplot(6, 1, 3);
plot(A);
title("Wynik sumy sygna³ów X i Y:");
subplot(6, 1, 4);
plot(B);
title("Wynik mno¿enia sygna³ów X i Y:");
subplot(6, 1, 5);
plot(C);
title("Wynik dodania sk³adowej sta³ej do funkcji X:");
subplot(6, 1, 6);
plot(D);
title("Wynik zwiêkszenia amplitudy sygna³u X:");