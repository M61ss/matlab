clear all
close all
%%NB: lo script utilizza la funzione 'imshow' che richiede 
%%l'installazione del pacchetto aggiuntivo Image Processing Toolbox

load('dati_inpainting0.mat','obj','g_im','Omega_r','Omega_c');
% obj:  immagine target
% g_im: immagine con pixel corrotti
% Omega_r: indice di riga dei pixel corrotti
% Omega_c: indice di colonna dei pixel corrotti

figure,
imshow(g_im,[]);
[n,m,p] = size(g_im);
fprintf('n=%g, m=%g, p=%g',n,m,p);
% si tratta di un'immagine a colori RGB, pertanto è rappresentata 
% con un array tridimensionale di pixel di dimensione nxmx3 
N_inpainting = length(Omega_r);
fprintf('\n pixel inpainting %g',N_inpainting)
%% 

% Inizializzazione dell'algoritmo: per ognuno dei tre canali di colore
% si definisce l'immagine g in cui ai pixel della regione di inpainting
% viene assegnato il valore 0
g = g_im;
for h = 1:p
    for i = 1:N_inpainting
        g(Omega_r(i),Omega_c(i),h) = 0;
    end
end

figure,
imshow(g,[]);
%% 

% Procedimento di inpainting iterativo che ad ogni passo interpola
% l'immagine precedente calcolando i valori dei pixel della regione
% di inpainging mediante interpolazione bilineare.
Kiter = 300;
I = g;
for k = 1:Kiter    
    Iold = I;
    for h = 1:p
        for i = 1:N_inpainting
            r = Omega_r(i);
            c = Omega_c(i);
            I(r,c,h) = sum(sum(Iold([r-1,r+1],[c-1,c+1],h)))/4;
        end
    end
    fprintf('\n %g) %g',k,norm(Iold(:)-I(:))/norm(I(:)));
    figure(11); imshow(I,[]); pause(0.1);
end


    