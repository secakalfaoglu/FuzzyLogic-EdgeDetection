function [ Igray3 ] = FIS1( Igray )

[w,h]=size(Igray); % gri fotoğrafın boyutlarını alıyor.
Igray3=rand(w,h); % fotoğraf boyutlarında matris oluşturuyor.
for x=1:w
    for y=1:h
        % Igray(x,y)--> Fotoğrafın belirtilen pixelinin rgb tonunu alıyor(0 - 255).
        % trimf_black.m ve trimf_white.m çağırılıyor.
        if trimf_black(double(Igray(x,y))) > trimf_white(double(Igray(x,y))) 
        Igray3(x,y)=0; % siyahsa 0
        else 
            Igray3(x,y)=1; % beyazsa 1
        end
    end
end  
  Igray3=imbinarize(Igray3);    
end

