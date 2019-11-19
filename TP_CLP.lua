Cartas = {nome, confiabilidade, aprendizado, eficiencia, portabilidade, reusabilidade}

function AtribuirCartas(nome, confiabilidade, aprendizado, eficiencia, portabilidade, reusabilidade)
    card = {}

    card.nome = nome
    card.carac = {}
    card.carac.confiabilidade = confiabilidade
    card.carac.aprendizado = aprendizado
    card.carac.eficiencia = eficiencia
    card.carac.portabilidade = portabilidade
    card.carac.reusabilidade = reusabilidade

    return card
end

function ImprimirCarta(carta)
    print(' \nNome:    ',carta.nome)
    print(' Confiabilidade',carta.carac.confiabilidade,'\n Aprendizado',carta.carac.aprendizado)
    print(' Eficiência',carta.carac.eficiencia,'\n Portabilidade',carta.carac.portabilidade)
    print(' Reusabilidade',carta.carac.reusabilidade)
end

function CompararValores(valorPlayer, valorComputador)
    if (valorPlayer > valorComputador) then
        return 0
    elseif (valorPlayer == valorComputador) then
        return 1
    elseif (valorComputador > valorPlayer) then
        return 2
    end
end

function ReorganizaMonte(monte)
    for i = 1, (#monte-1), 1 do
        --print(i)
        monte[i] = monte[i + 1] 
     end
     monte[#monte] = nil
     --print(monte[#monte-1])
     --table.remove(monte,monte[1])
end

function ColocarFinaldoMonte(monteMesa, monteVencedor)
    for i, v in ipairs(monteMesa) do
        table.insert(monteVencedor, monteMesa[i])
    end
    
    for i, v in ipairs(monteMesa) do
        table.remove(monteMesa, 1)
    end
    table.remove(monteMesa, 1)
end

jogo = true
supertrunfo1 = false
supertrunfo2 = false
monte = {}
cartas1 = {}
cartas2 = {}

cartas1[1] = AtribuirCartas('Java', 3, 3, 7, 9, 10)
cartas1[2] = AtribuirCartas('C', 4, 2, 7, 8, 9)
cartas1[3] = AtribuirCartas('Python', 10, 4, 3, 5, 7)
cartas1[4] = AtribuirCartas('C++', 10, 6, 3, 8, 8)
cartas1[5] = AtribuirCartas('C#', 1, 4, 10, 3, 1)
cartas1[6] = AtribuirCartas('Visual Basic .NET', 4, 7, 7, 8, 10)
cartas1[7] = AtribuirCartas('JavaScript', 8, 7, 2, 3, 1)
cartas1[8] = AtribuirCartas('PHP', 8, 5, 1, 3, 7)
cartas1[9] = AtribuirCartas('SQL', 1, 3, 5, 1, 10)
cartas1[10] = AtribuirCartas('Swift', 5, 10, 3, 7, 10)
cartas1[11] = AtribuirCartas('Ruby', 6, 8, 10, 3, 5)
cartas1[12] = AtribuirCartas('Objective-C', 7, 3, 1, 3, 10)
cartas1[13] = AtribuirCartas('Delphi/Object Pascal', 4, 1, 8, 2, 4)
cartas1[14] = AtribuirCartas('Groovy', 2, 6, 3, 9, 6)
cartas1[15] = AtribuirCartas('Assembly language', 7, 2, 2, 6, 3)
cartas1[16] = AtribuirCartas('R', 4, 7, 2, 7, 2)
cartas2[1] = AtribuirCartas('Visual Basic', 6, 2, 7, 8, 10)
cartas2[2] = AtribuirCartas('D', 8, 3, 6, 7, 2)
cartas2[3] = AtribuirCartas('MATLAB', 5, 7, 7, 3, 8)
cartas2[4] = AtribuirCartas('Go', 4, 2, 7, 3, 6)
cartas2[5] = AtribuirCartas('Perl', 7, 4, 7, 6, 8)
cartas2[6] = AtribuirCartas('SAS', 7, 6, 3, 5, 6)
cartas2[7] = AtribuirCartas('PL/SQL', 6, 6, 3, 4, 5)
cartas2[8] = AtribuirCartas('Dart', 2, 4, 7, 3, 5)
cartas2[9] = AtribuirCartas('Rust', 6, 7, 9, 4, 2)
cartas2[10] = AtribuirCartas('Scratch', 10, 8, 6, 4, 1)
cartas2[11] = AtribuirCartas('Lisp', 4, 7, 3, 4, 4)
cartas2[12] = AtribuirCartas('COBOL', 7, 2, 6, 7, 3)
cartas2[13] = AtribuirCartas('Fortran', 3, 2, 7, 3, 7)
cartas2[14] = AtribuirCartas('Scala', 6, 8, 4, 8, 8)
cartas2[15] = AtribuirCartas('RPG', 5, 10, 7, 2, 4)
cartas2[16] = AtribuirCartas('Lua', 7, 9, 2, 5, 8)


while(jogo) do
    print('Quantidade de cartas')
    print('Player: ', #cartas1)
    print('Computador: ', #cartas2)
    print('Comprar carta. Pressione qualquer tecla')
    
    io.read()

    --Mostrando Carta do Player
    print('Sua Carta')
    ImprimirCarta(cartas1[1])

    --Verficando se a carta é SUPERTRUNFO
    if(cartas1[1].nome == 'Lua') then
        print('Jogador tirou a carta LUA SUPERTRUNFO')
        supertrunfo1 = true
    end

    --Menu de Opções
    print('\nEscolha a caracterisca que será disputada nesse rodada!')
    print('\n1- Confiabilidade\n2- Aprendizado\n3- Eficiência \n4- Portabilidade \n5- Reusabilidade')
    carac_rodada = io.read('*number')

    --Mostrando carta do computador
    print('Carta do Computador')
    ImprimirCarta(cartas2[1])

    --Verficando se a carta é SUPERTRUNFO
    if(cartas2[1].nome == 'Lua') then
        print('Computador tirou a carta LUA SUPERTRUNFO')
        supertrunfo2 = true
    end

    if(cartas1[1].nome == 'Lua') then
        supertrunfo1 = true
    end

    print(carac_rodada)
    if((supertrunfo1 and supertrunfo2) == false) then
        --Comparando entre as cartas o valor que foi selecionado
        if(carac_rodada == 1) then
            resultado = CompararValores(cartas1[1].carac.confiabilidade, cartas2[1].carac.confiabilidade)
        elseif (carac_rodada == 2) then
            resultado = CompararValores(cartas1[1].carac.aprendizado, cartas2[1].carac.aprendizado)
        elseif (carac_rodada == 3) then
            resultado = CompararValores(cartas1[1].carac.eficiencia, cartas2[1].carac.eficiencia)
        elseif (carac_rodada == 4) then
            resultado = CompararValores(cartas1[1].carac.portabilidade, cartas2[1].carac.portabilidade)
        elseif (carac_rodada == 5) then
            resultado = CompararValores(cartas1[1].carac.reusabilidade, cartas2[1].carac.reusabilidade)
        end
    elseif (supertrunfo1 == true) then
        resultado = 0
        supertrunfo1 = false
    elseif (supertrunfo2 == true) then
        resultado = 2
        supertrunfo2 = false
    end
    io.read()

    --Colocando cartas no monte da mesa
    table.insert(monte, cartas1[1])
    table.insert(monte, cartas2[1])

    --Retirando carta do monte do jogador, reorganizando monte
    ReorganizaMonte(cartas1)
    ReorganizaMonte(cartas2)

    --Colocando cartas no final do monte do vencedor.
    if(resultado == 0) then
        print('Player ganhou esta rodada')
        ColocarFinaldoMonte(monte, cartas1)

    elseif(resultado == 1) then
        print('Houve um empate, proxima rodada será de desempate')

    elseif(resultado == 2) then
        print('Computador ganhou esta rodada')
        ColocarFinaldoMonte(monte, cartas2)
    end
    print(#cartas1)
    if (#cartas1 == 32) then
        print('Jogador Venceu!')
        jogo = false
    elseif (#cartas2 == 32) then
        print('Computador Venceu!')
        jogo = false
    end
end
io.read()