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
cartas1[2] = AtribuirCartas('C', 3, 3, 7, 9, 10)
cartas1[3] = AtribuirCartas('Python', 8, 0, 7, 9, 0)
cartas1[4] = AtribuirCartas('C++', 3, 3, 7, 9, 10)
cartas1[5] = AtribuirCartas('C#', 3, 3, 7, 9, 10)
cartas1[6] = AtribuirCartas('Visual Basic .NET', 3, 3, 7, 9, 10)
cartas1[7] = AtribuirCartas('JavaScript', 3, 3, 7, 9, 10)
cartas1[8] = AtribuirCartas('PHP', 3, 3, 7, 9, 10)
cartas1[9] = AtribuirCartas('SQL', 3, 3, 7, 9, 10)
cartas1[10] = AtribuirCartas('Swift', 3, 3, 7, 9, 10)
cartas1[11] = AtribuirCartas('Ruby', 3, 3, 7, 9, 10)
cartas1[12] = AtribuirCartas('Objective-C', 3, 3, 7, 9, 10)
cartas1[13] = AtribuirCartas('Delphi/Object Pascal', 3, 3, 7, 9, 10)
cartas1[14] = AtribuirCartas('Groovy', 3, 3, 7, 9, 10)
cartas1[15] = AtribuirCartas('Assembly language', 3, 3, 7, 9, 10)
cartas1[16] = AtribuirCartas('R', 3, 3, 7, 9, 10)
cartas2[1] = AtribuirCartas('Visual Basic', 3, 3, 7, 9, 10)
cartas2[2] = AtribuirCartas('D', 3, 3, 7, 9, 10)
cartas2[3] = AtribuirCartas('MATLAB', 3, 3, 7, 9, 10)
cartas2[4] = AtribuirCartas('Go', 3, 3, 7, 9, 10)
cartas2[5] = AtribuirCartas('Perl', 3, 3, 7, 9, 10)
cartas2[6] = AtribuirCartas('SAS', 3, 3, 7, 9, 10)
cartas2[7] = AtribuirCartas('PL/SQL', 3, 3, 7, 9, 10)
cartas2[8] = AtribuirCartas('Dart', 3, 3, 7, 9, 10)
cartas2[9] = AtribuirCartas('Rust', 3, 3, 7, 9, 10)
cartas2[10] = AtribuirCartas('Scratch', 3, 3, 7, 9, 10)
cartas2[11] = AtribuirCartas('Lisp', 3, 3, 7, 9, 10)
cartas2[12] = AtribuirCartas('COBOL', 3, 3, 7, 9, 10)
cartas2[13] = AtribuirCartas('Fortran', 3, 3, 7, 9, 10)
cartas2[14] = AtribuirCartas('Scala', 3, 3, 7, 9, 10)
cartas2[15] = AtribuirCartas('RPG', 3, 3, 7, 9, 10)
cartas2[16] = AtribuirCartas('Lua', 3, 3, 7, 9, 10)


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