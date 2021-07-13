%vive en la mansion

viveEnLaMansion(tiaAgatha).
viveEnLaMansion(charles).
viveEnLaMansion(mayordomo).

%alguien odia a otra persona

odia(tiaAgatha, Persona) :-
    viveEnLaMansion(Persona),
    Persona \= mayordomo.

odia(charles, Persona) :-
    viveEnLaMansion(Persona),
    not(odia(tiaAgatha, Persona)).

odia(mayordomo, Persona) :-
    odia(tiaAgatha, Persona).

%una persona es mas rica que otra

esMasRicoQueAlguien(Persona, tiaAgatha):-
    viveEnLaMansion(Persona),
    not(odia(mayordomo, Persona)).

%mato a tia agatha

mato(Persona, Victima):-
    viveEnLaMansion(Persona),
    odia(Persona, Victima),
    not(esMasRicoQueAlguien(Persona, Victima)).

%Consultas pedidas en el tp.

% mato(Persona, tiaAgatha). => Persona = tiaAgatha.

% odia(_, milhouse). => false.

% odia(charles, Persona). => Persona = mayordomo.

% odia(Persona, tiaAgatha).
%Persona = tiaAgatha ;
%Persona = mayordomo.

% odia(Odiador,Odiado). =>
%Odiador = Odiado, 
Odiado = tiaAgatha ;
%Odiador = tiaAgatha,
%Odiado = charles ;
%Odiador = charles,
%Odiado = mayordomo ;
%Odiador = mayordomo,
%Odiado = tiaAgatha ;
%Odiador = mayordomo,
%Odiado = charles ;
%false.

% odia(mayordomo, _). =>
%true ;
%true ;
%false.
