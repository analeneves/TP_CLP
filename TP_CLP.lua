Cartas = {nome, confiabilidade, aprendizado, eficiencia, portabilidade, reusabilidade}

function Cartas:new(nome, confiabilidade, aprendizado, eficiencia, portabilidade, reusabilidade)
    card = {}

    setmetatable(card, self)
    self.__index = self

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
    for i,v in ipairs(monte) do
        print(k,v)
        classe2[k] = classe2[k + 1] 
     end
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
cartas1[1] = Cartas:new('Java', 3, 3, 7, 9, 10)
cartas1[2] = Cartas:new('Python', 8, 0, 7, 9, 0)
cartas1[3] = Cartas:new('Java1', 3, 7, 5, 3, 1)
cartas2[1] = Cartas:new('Python1', 4, 0, 0, 3, 0)
cartas2[2] = Cartas:new('Java2', 3, 8, 6, 1, 8)
cartas2[3] = Cartas:new('Python2', 8, 3, 7, 4, 2)

print(cartas1[1].carac.confiabilidade)

while(jogo) do
    print('Quantidade de cartas')
    print('Player: ', table.maxn(cartas1))
    print('Computador: ', table.maxn(cartas2))
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
    print('\nEscolha a caraciterisca que será disputada nesse rodada!')
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

    else if(resultado == 1)
        print('Houve um empate, proxima rodada será de desempate')

    else if(resultado == 2)
        print('Computador ganhou esta rodada')
        ColocarFinaldoMonte(monte, cartas2)

    if (table.maxn(cartas1) == 4) then
        print('Jogador Venceu!')
        jogo = false
    elseif (table.maxn(cartas2) == 4) then
        print('Computador Venceu!')
        jogo = false
    end
end

io.read()