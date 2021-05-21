X= gen_time(50, 100);
Y= gen_sin((gen_time(50, 100)), 10, 1, 0);
A= X+Y; %dodawanie
B= X.*Y; %mano�enie
C= X.+10; %dodawanie sk�adowej stalej
D= X.*2; %zwi�kszanie amplitudy poprzez mno�enie 

disp("To s� warto�ci sygna�u X:"), disp(X);
disp("To s� warto�ci sygna�u Y:"), disp(Y);
disp("Wynik sumy sygna��w X+Y:"), disp(A);
disp("Wynik mno�enia sygna��w X+Y:"), disp(B);
disp("Wynik dodania sk�adowej sta�ej do funkcji X:"), disp(C);
disp("Wynik zwi�kszenia amplitudy sygna�u X:"), disp(D);

subplot(6, 1, 1);
plot(X);
title("To s� warto�ci sygna�u X:");
subplot(6, 1, 2);
plot(Y);
title("To s� warto�ci sygna�u Y:");
subplot(6, 1, 3);
plot(A);
title("Wynik sumy sygna��w X i Y:");
subplot(6, 1, 4);
plot(B);
title("Wynik mno�enia sygna��w X i Y:");
subplot(6, 1, 5);
plot(C);
title("Wynik dodania sk�adowej sta�ej do funkcji X:");
subplot(6, 1, 6);
plot(D);
title("Wynik zwi�kszenia amplitudy sygna�u X:");