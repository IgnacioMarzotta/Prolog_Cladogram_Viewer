%Tarea 3 - Paradigmas de Programacion
%Ignacio Marzotta - 23.601.779-6
%Cristobal Zapata - 19.962.025-8

padreDe(ammniota,sauropsida).           %Definicion de la familia sauropsida

padreDe(sauropsida,archelosauria).
padreDe(archelosauria,testudines).
padreDe(archelosauria,archosauria).
padreDe(archosauria,cocodrilia).
padreDe(archosauria,dinosauria).
padreDe(dinosauria,aves).
padreDe(dinosauria,tyrannosauroidea).
padreDe(dinosauria,ornithischia).
padreDe(sauropsida,lepidosauria).
padreDe(lepidosauria,sphenodontia).
padreDe(lepidosauria,squamanta).

padreDe(ammniota,synapsida).            %Definicion de la familia synapsida

padreDe(synapsida,ophiacodontidae).
padreDe(synapsida,varanopidae).
padreDe(synapsida,caseasauria).
padreDe(synapsida,ianthodon).
padreDe(synapsida,edaphosauridae).
padreDe(synapsida,sphenacodontia).
padreDe(sphenacodontia,haptodus_garnettensis).
padreDe(sphenacodontia,pantelosaurus_saxonicus).
padreDe(sphenacodontia,sphenacodontidae).
padreDe(sphenacodontia,therapsida).
padreDe(sphenacodontidae,cutleria_wilmarthu).
padreDe(sphenacodontidae,secodontosaurus_obtusidens).
padreDe(sphenacodontidae,cryptovenator_hirschbergi).
padreDe(sphenacodontidae,dimetrodon).
padreDe(sphenacodontidae,sphenacodon).

padreDe(ammniota,mammalia).             %Definicion de la familia mammalia

padreDe(mammalia,theria_).
padreDe(mammalia,monotremata).
padreDe(mammalia,theria).
padreDe(theria,marsupialia).
padreDe(theria,eutheria).

especie(inputEspecie) :-                           %Caso base, iniciar el ciclo en nivel 0 y esperar el input del usuario
    write('|--- '), writeln(inputEspecie),
    especie(inputEspecie, 1).

especie(inputEspecie, Nivel) :-                    %Funcion recursiva principal
    padreDe(inputEspecie, Hijo),
    tab(Nivel * 2), write('|--- '), writeln(Hijo),
    nuevoNivel is Nivel + 1,
    especie(Hijo, nuevoNivel).