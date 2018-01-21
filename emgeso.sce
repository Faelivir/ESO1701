clear,clc,close
//Programme réalisé le 17 jan 2018

//lecture du fichier
Brut = csvRead('C:\Users\pierr\Documents\Boulot\Master 2 BBB\ESO1701\Trial01.csv')
Data = abs(Brut)

//param de l'étude
signal_1=Data(:,3);
signal_2=Data(:,4);
signal_3=Data(:,5);
signal_4=Data(:,6);
signal_5=Data(:,7);
signal_6=Data(:,8);
signal_7=Data(:,9);
signal_8=Data(:,10);
basetps=1:29990

//représentation de EMG brut
subplot(211);plot(basetps,signal_1)
xlabel('Temps[milisec]')
ylabel('Tension[V]')
title('EMG brut')

//filtrage glissant
for i = 1:length(signal_1)
signal_1gli(i) = mean(signal_1(max([1 i-10]):i))
end

//représentation de EMG moyenne glissante
subplot(212);plot(basetps,signal_1gli)
xlabel('Temps[milisec]')
ylabel('Tension[V]')
title('EMG moyenne glissante')

// Trace passage !
// Note : on m'a dit que pour la RMS, il fallait essayer de la faire glissante : comme pour la moyenne glissante, de "décaler" de un sur le côté.
// Ca donnerait plus de points !
