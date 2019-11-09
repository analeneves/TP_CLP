cartas = {nome, confiabilidade, aprendizado, eficiencia, portabilidade, reusabilidade}

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

monte = {}
cartas1 = {}
cartas2 = {}
cartas1.[0] = Cartas:new('Java', 3, 3, 7, 9, 10)
cartas1.[1] = Cartas:new('Python', 8, 0, 7, 9, 0)
cartas1.[2] = Cartas:new('Java1', 3, 7, 5, 3, 1)
cartas2.[0] = Cartas:new('Python1', 4, 0, 0, 3, 0)
cartas2.[1] = Cartas:new('Java2', 3, 8, 6, 1, 8)
cartas2.[2] = Cartas:new('Python2', 8, 3, 7, 4, 2)

print(cartas1[1].carac.confiabilidade)
