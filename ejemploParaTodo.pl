esTipico(Pais, Comida):-
    leGusta(_,Comida),
    esUnPais(Pais),
   forall(nacionalidad(Persona,Pais),
   leGusta(Persona,Comida)).

esTipico2(Pais, Comida):-
    not(  
        (nacionalidad(Persona,Pais), not(leGusta(Persona,Comida)))
        ).
 
nacionalidad(juan,argentina).
nacionalidad(juan,uruguay).
nacionalidad(maria,argentina).
nacionalidad(carlos,peru).
nacionalidad(raul,peru).

leGusta(maria,mate).
leGusta(maria,chocolate).
leGusta(juan,cafe).
leGusta(juan,mate).
leGusta(carlos,mate).

tieneAdeptos(Pais,Comida):-
    leGusta(Persona,Comida),
    nacionalidad(Persona,Pais).

esExclusivo(Pais, Comida):-
    leGusta(_,Comida),
    esUnPais(Pais),
    forall(leGusta(Persona,Comida),nacionalidad(Persona,Pais)).


esUnPais(Pais):-nacionalidad(_,Pais).

esExclusivo2(Pais, Comida):-
    not(leGustaAAlguienDeOtroPais(Pais,Comida)).

leGustaAAlguienDeOtroPais(Pais,Comida):-
   leGusta(Persona,Comida),
   not(nacionalidad(Persona,Pais)).