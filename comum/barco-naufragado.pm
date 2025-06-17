#barco naufragado - macros iniciais adaptadas do exemplo fornecido por Guiim

automacro Inicio_Barco_Naufragado {
    exclusive 1
    BaseLevel = 1
    JobLevel = 1
    InMap iz_int
    call {
        log Tutorial - Preparando configuração inicial
        do conf attackAuto 0
        do conf route_randomWalk 0
        do conf npcWrongStepsMethod 1
        do conf autoTalkCont 1
        log Tutorial - Movendo para perto do NPC
        do move 28 29
        do talknpc 56 32 c c c
        pause 1
        log Tutorial - Falando com o NPC correto ID 3411
        do nl
        do talk 2 Injured Passenger#2 c c c
        log Tutorial - Esperando mudança de mapa
        pause 5
        do move 57 12
    }
}

automacro Barco_izlude0 {
    exclusive 1
    BaseLevel = 1
    InMap int_land, int_land01, int_land02, int_land03, int_land04 
    QuestActive 21001
    call {
        log Tutorial - primeira_Parte
        do talknpc 78 103 c r0 c
        pause 1
        log Tutorial - segunda_parte
        do talknpc 73 100 r0
        log Tutorial - terceira_parte
        do move 69 74
        do talknpc 58 69
        call voltarAtacar        
    }
}

automacro Barco_izlude0_JuntarItens {
    QuestActive 21008
    InMap int_land, int_land01, int_land02, int_land03, int_land04 
    IsEquippedID leftHand 1201
    call {
        do iconf 6008 2 0 0 #madeira
        $qtdMadeira = &invamount (6008)        
        if ( $qtdMadeira < 2 ) {
            do move 99 109
            call voltarAtacar
        } elsif ( $qtdMadeira >= 2) {
            call pararDeAtacar
            do move 55 66
            do talknpc 58 69
            do move 49 57
        }
    }
}
