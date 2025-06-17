automacro versao {
    BaseLevel > 0
    priority 0 #sempre a primeira a ser executada
    exclusive 1
    run-once 1
    call {
        [
        log =================================================================
        log   Baseado no original: https://github.com/eventMacrosBR/up_1_ao_99_todas_classes-bro
        log   Fork mantido em: https://github.com/pompz-bit/up_1_ao_99_todas_classes-bro
        log   Versão do fork: <versao> (pompz-bit)
        log   Contribua com um café: https://ko-fi.com/pompzbit
        log   É sempre necessário ter mais pessoas para ajudar a manter o projeto! Sinta-se a vontade para contribuir com código ou sugerir melhorias.
        log   Em caso de dúvidas digite:
        log   eventMacro ajuda
        log =================================================================
        ]
        do conf -f versao_eventmacro_up_todas_as_classes_bro <versao>
    }
}

