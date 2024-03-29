
/* Lancement de notre système expert*/

depart :-
    write("BIENVENUE DANS NOTRE S.E RECOMMENDATION DE VOITURES."),
    nl,
    hypothese(Modele),
    nl,
    (
        Modele \= aucun_Agence ->
        (
            write("NOTRE RECOMMENDATION VOITURE POUR VOUS: "),
            write(Modele),
            write(".")
        )
        ;
        write("Vous avez pas des récommendation des voitures pour le moments.")
    ),
    nl,
    write("Merci d'avoir utiliser notre système."),
    undo.



/* Base de faits*/

hypothese(toyota_Prius_V) :- toyota_Prius_V, !.
hypothese(honda_Odyssey) :- honda_Odyssey, !.
hypothese(tesla_Model_X) :- tesla_Model_X, !.
hypothese(ford_Explorer_Hybrid) :- ford_Explorer_Hybrid, !.
hypothese(volvo_XC90_T8_Plug_in_Hybrid) :- volvo_XC90_T8_Plug_in_Hybrid, !.
hypothese(mercedes_Benz_GLS) :- mercedes_Benz_GLS, !.
hypothese(volvo_XC90_T8_Plug_in_Hybrid) :- volvo_XC90_T8_Plug_in_Hybrid,!.
hypothese(audi_Q7) :- audi_Q7, !.
hypothese(bMW_Série_7) :- bMW_Série_7, !.
hypothese(lexus_LX) :- lexus_LX, !.
hypothese(range_Rover_Vogue) :- range_Rover_Vogue, !.
hypothese(toyota_Prius) :- toyota_Prius, !.
hypothese(honda_CR_V_Hybrid) :- honda_CR_V_Hybrid, !.
hypothese(volkswagen_Golf) :- volkswagen_Golf, !.
hypothese(audi_A3_Sportback) :- audi_A3_Sportback, !.
hypothese(subaru_Outback) :- subaru_Outback, !.
hypothese(bMW_X5) :- bMW_X5, !.
hypothese(mercedes_Benz_GLE) :- mercedes_Benz_GLE, !.
hypothese(volvo_XC90) :- volvo_XC90, !.
hypothese(range_Rover_Sport) :- range_Rover_Sport, !.
hypothese(tesla_Model_X) :- tesla_Model_X, !.
hypothese(volvo_XC90_T8_Twin_Engine) :- volvo_XC90_T8_Twin_Engine, !.
hypothese(audi_Q7_e_tron) :- audi_Q7_e_tron, !.
hypothese(subaru_Outback) :- subaru_Outback, !.
hypothese(audi_Q7_e_tron) :- audi_Q7_e_tron,!.
hypothese(range_Rover_Velar) :- range_Rover_Velar, !.
hypothese(bMW_X7) :- bMW_X7,!.
hypothese(porsche_Cayenne) :- porsche_Cayenne,!.
hypothese(bMW_Série_1) :- bMW_Série_1,!.
hypothese(mercedes_Benz_Classe_A):- mercedes_Benz_Classe_A,!.
hypothese(volvo_V40):-volvo_V40,!.
hypothese(audi_A3):-audi_A3,!.
hypothese(audi_A4):-audi_A4,!.
hypothese(bMW_Série_3):- bMW_Série_3,!.
hypothese(mercedes_Benz_C_Class):- mercedes_Benz_C_Class,!.
hypothese(volvo_S60):-volvo_S60,!.
hypothese(lexus_IS):-lexus_IS,!.
hypothese(dacia_Logan_MCV):-dacia_Logan_MCV,!.
hypothese(toyota_Corolla_Touring_Sports):-toyota_Corolla_Touring_Sports,!.
hypothese(skoda_Octavia_Combi):-skoda_Octavia_Combi,!.
hypothese(renault_Grand_Scénic):-renault_Grand_Scénic,!.
hypothese(peugeot_5008):-peugeot_5008,!.
hypothese(toyota_Highlander):-toyota_Highlander,!.
hypothese(ford_Expedition):-ford_Expedition,!.
hypothese(chevrolet_Suburban):-chevrolet_Suburban,!.
hypothese(nissan_Armada):-nissan_Armada,!.
hypothese(gMC_Yukon_XL):-gMC_Yukon_XL,!.
hypothese(toyota_Corolla_Hatchback):-toyota_Corolla_Hatchback,!.
hypothese(honda_Civic):-honda_Civic,!.
hypothese(ford_Focus):-ford_Focus,!.
hypothese(hyundai_Elantra):-hyundai_Elantra,!.
hypothese(toyota_RAV4):-toyota_RAV4,!.
hypothese(honda_CR_V):-honda_CR_V,!.
hypothese(ford_Escape):-ford_Escape,!.
hypothese(nissan_Rogue):-nissan_Rogue,!.
hypothese(chevrolet_Traverse):-chevrolet_Traverse,!.
hypothese(toyota_Corolla):-toyota_Corolla,!.
hypothese(nissan_Sentra):-nissan_Sentra,!.
hypothese(ford_Explorer):-ford_Explorer,!.
hypothese(chevrolet_Tahoe):-chevrolet_Tahoe,!.
hypothese(jeep_Grand_Cherokee):-jeep_Grand_Cherokee,!.
hypothese(mazda_CX_5):-mazda_CX_5,!.
/*Si aucun des hypotheses est vrai le systéme renvoie aucun_Agence existent*/
hypothese(aucun_Agence).



/*Base de regles*/

toyota_Prius_V :-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Paris)
)
;
(
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Lille)
).


honda_Odyssey :-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Lille).


tesla_Model_X :-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Marsaille)
)
;
(
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Paris)
).


ford_Explorer_Hybrid :-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Brest).

volvo_XC90_T8_Plug_in_Hybrid:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Bordeaux).


mercedes_Benz_GLS:-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Paris)

)
;
(
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Marsaille)

).


audi_Q7:-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Lille)
)
;
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Paris)
)
;
(
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Lille)
)
.

bMW_Série_7:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Marsaille)
.


lexus_LX:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Brest)
.


range_Rover_Vogue:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Bordeaux)
.


toyota_Prius:-
(verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Paris)
);
(verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Paris)
);
(verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Paris)
)
.


honda_CR_V_Hybrid:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Lille)
.


volkswagen_Golf:-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Marsaille)
)
;
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Marsaille)
)
;
(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Marsaille)
)
.

audi_A3_Sportback:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Brest)
.

subaru_Outback:-
(
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Bordeaux)
)
;
(
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Bordeaux)
)
.

bMW_X5:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Lille)
.

mercedes_Benz_GLE:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Marsaille)
.

volvo_XC90:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Brest)
.

range_Rover_Sport:-
verifier(salaire_eleve),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Bordeaux)
.


volvo_XC90_T8_Twin_Engine:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Marsaille).

audi_Q7_e_tron:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Brest).

range_Rover_Velar:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Paris).


bMW_X7:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Brest)
.

porsche_Cayenne:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Bordeaux)
.

bMW_Série_1:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Lille)
.

mercedes_Benz_Classe_A:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Marsaille)
.
volvo_V40:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Brest)
.

audi_A3:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_bordeaux)
.


audi_A4:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Paris).


bMW_Série_3:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Lille).


mercedes_Benz_C_Class:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Marsaille).


volvo_S60:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Brest).

lexus_IS:-
verifier(salaire_eleve),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Bordeaux).


dacia_Logan_MCV:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Paris).


toyota_Corolla_Touring_Sports:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Lille).


skoda_Octavia_Combi:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Marsaille).

renault_Grand_Scénic:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Brest).


peugeot_5008:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Paris).

toyota_Highlander:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Paris).


ford_Expedition:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Lille).

chevrolet_Suburban:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Marsaille).

nissan_Armada:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Brest)
);
(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Bordeaux)
).

gMC_Yukon_XL:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Bordeaux).


toyota_Corolla_Hatchback:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Paris).



honda_Civic:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Lille)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Lille)

);(

verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Lille)

 ).


ford_Focus:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Brest)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Brest)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Brest)

).

hyundai_Elantra:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Bordeaux)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(economique),
verifier(region_Bordeaux)

).

toyota_RAV4:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Paris)
);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Paris)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Paris)

 ).


honda_CR_V:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Lille)
);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Lille)

).


ford_Escape:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Marseille)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Brest)
).


nissan_Rogue:-
(
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Brest)

);(
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Bordeaux)
).


chevrolet_Traverse:-
verifier(petite/moyenne_salaire),
verifier(grande_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Bordeaux).


toyota_Corolla:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Paris).

nissan_Sentra:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(economique),
verifier(region_Bordeaux).

ford_Explorer:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Lille).

chevrolet_Tahoe:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Marsaille).


jeep_Grand_Cherokee:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(grande_voiture),
verifier(non_economique),
verifier(region_Brest).

mazda_CX_5:-
verifier(petite/moyenne_salaire),
verifier(petite/moyenne_famille),
verifier(petite/moyenne_voiture),
verifier(non_economique),
verifier(region_Marsaille).


/*Comment poser une questions ? */
poser(Question) :-
write("Est ce que vous avez ses criteres: "),
write(Question),
write("?(y/n) "),
read(Reponse),
nl,
(
(Reponse == yes ; Reponse == y)
-> assert(oui(Question))); (assert(non(Question)), fail).
:- dynamic oui/1,non/1.

verifier(S) :-
(oui(S) -> true;
(non(S) ->fail; poser(S))).



/* undo all yes/no assertions*/
undo :- retract(oui(_)),fail.
undo :- retract(non(_)),fail.
undo.
















