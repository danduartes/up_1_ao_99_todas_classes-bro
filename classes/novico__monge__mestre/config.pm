sub configurarBuild {
    my %configsBuild = (
        skillsAprendiz => 'NV_BASIC 9',
        skillsClasse1 => '-1',
        skillsClasse2 => '-1',
        skillsClasse1T => '-1',
        skillsClasse2T => '-1',
        skillsClasse3 => '-1',
        statsPadrao => '10 dex, 15 agi, 20 dex, 25 agi, 15 str, 40 dex, 60 agi, 30 str, 45 dex, 20 vit, 80 agi ,70 dex, 50 str, 99 agi, 34 vit',
        statsPadraoTransclasse => '10 dex, 15 agi, 20 dex, 25 agi, 15 str, 40 dex, 60 agi, 30 str, 45 dex, 20 vit, 80 agi ,70 dex, 50 str, 99 agi, 34 vit',
        statsPadraoClasse3 => '-1',
        lvlClasseParaVirarClasse2 => '50',
        lvlClasseParaVirarClasse2T => '50'
    );
    return \%configsBuild;
}


sub extrairMapasDeUp {
    my ($lvl, $souTransclasse) = @_;
    my $variaveisDeUp;
    
    #########################################################################
    #AQUI É DEFINIDO OS MAPAS QUE CADA CLASSE IRÁ UPAR, DE MODO
    #QUE SEJA EXTREMAMENTE FÁCIL DE ALTERAR A SEU GOSTO
    ########################################################################

    if ($souTransclasse eq "nao") {
        $variaveisDeUp =
        # AQUI SÃO OS MAPAS DE UP ATÉ 99, ANTES DE REBORNAR
            [
            {lvlMin => 1 , lvlMax => 11, lockMap => 'prt_fild08', saveMap => 'prontera'},
            {lvlMin => 12, lvlMax => 25, lockMap => 'pay_fild08', saveMap => 'payon'},
            {lvlMin => 26, lvlMax => 40, lockMap => 'pay_dun00',  saveMap => 'payon'},
            {lvlMin => 41, lvlMax => 45, lockMap => 'pay_fild09', saveMap => 'payon'},
            {lvlMin => 46, lvlMax => 53, lockMap => 'iz_dun00',   saveMap => 'izlude'},
            {lvlMin => 54, lvlMax => 59, lockMap => 'iz_dun02',   saveMap => 'izlude'},
            {lvlMin => 60, lvlMax => 70, lockMap => 'moc_fild17', saveMap => 'morocc'},
            {lvlMin => 71, lvlMax => 79, lockMap => 'mjolnir_11', saveMap => 'prontera'},
            {lvlMin => 80, lvlMax => 89, lockMap => 'mjolnir_03', saveMap => 'geffen'},
            {lvlMin => 90, lvlMax => 98, lockMap => 'ra_fild08',  saveMap => 'rachel'}
        ];
    } else {
        $variaveisDeUp =
        # AQUI SÃO OS MAPAS DE UP ATÉ 99, DEPOIS DE REBORNAR
            [
            {lvlMin => 1 , lvlMax => 11, lockMap => 'prt_fild08', saveMap => 'prontera'},
            {lvlMin => 12, lvlMax => 25, lockMap => 'pay_fild08', saveMap => 'payon'},
            {lvlMin => 26, lvlMax => 40, lockMap => 'pay_dun00',  saveMap => 'payon'},
            {lvlMin => 41, lvlMax => 45, lockMap => 'pay_fild09', saveMap => 'payon'},
            {lvlMin => 46, lvlMax => 53, lockMap => 'iz_dun00',   saveMap => 'izlude'},
            {lvlMin => 54, lvlMax => 59, lockMap => 'iz_dun02',   saveMap => 'izlude'},
            {lvlMin => 60, lvlMax => 70, lockMap => 'moc_fild17', saveMap => 'morocc'},
            {lvlMin => 71, lvlMax => 79, lockMap => 'mjolnir_11', saveMap => 'prontera'},
            {lvlMin => 80, lvlMax => 89, lockMap => 'mjolnir_03', saveMap => 'geffen'},
            {lvlMin => 90, lvlMax => 98, lockMap => 'ra_fild08',  saveMap => 'rachel'}
        ];
    }
    
    foreach my $configs (@{$variaveisDeUp}) {
        #mensagem para debug
        #warning "lvl min: " . $configs->{lvlMin}.' '. "lvl max: " . $configs->{lvlMax}."\n";
        if ($configs->{lvlMin} <= $lvl && $lvl <= $configs->{lvlMax}) {  #checa em qual "grupo" (de lvlMin e lvlMax) seu nivel se encaixa
            my %hash = (lockMap => $configs->{lockMap}, saveMap => $configs->{saveMap});
            return \%hash;
        }
    }
}

sub inicializarParametrosQuestClasseRenascer {
    my %parametrosQuestClasseRenascer = (
        renascer => 'nao',
        amigo => '',
        #observação sobre o ponto de encontro:
        #só poderá ser as coordenadas, não coloque nome de cidade aqui, senão é treta
        #a cidade sempre será obrigatoriamente em juno, já que o reborn se passa por lá
        #altere a coordenada a seu prazer, fique a vontade
        pontoDeEncontroX => '145..147',
        pontoDeEncontroY => '115..117'
    );
    return \%parametrosQuestClasseRenascer;
}


sub inicializarInicioBarcoNaufragado {
    my %inicioBarco = (
        inicioBarcoNaufragado => 'true'
    );
    return \%inicioBarco;
}
