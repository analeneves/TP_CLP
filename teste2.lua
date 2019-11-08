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


x = 0
a = {}
a[4] = 10
a[0] = 20
p = 'carta1'
a[p] = 30
print(a['carta1'])

cartas = {}
cartas.a = Cartas:new('Java', 3, 3, 7, 9, 10)
cartas.b = Cartas:new('C'
cartas.b = Cartas:new('Python', 8, 0, 7, 9, 0)
cartas.b = Cartas:new('C++'
cartas.b = Cartas:new('C#'
cartas.b = Cartas:new('Visual Basic .NET'
cartas.b = Cartas:new('JavaScript'
cartas.b = Cartas:new('PHP'
cartas.b = Cartas:new('SQL'
cartas.b = Cartas:new('Swift'
cartas.b = Cartas:new('Ruby'
cartas.b = Cartas:new('Objective-C'
cartas.b = Cartas:new('Delphi/Object Pascal'
cartas.b = Cartas:new('Groovy'
cartas.b = Cartas:new('Assembly language'
cartas.b = Cartas:new('R'
cartas.b = Cartas:new('Visual Basic'
cartas.b = Cartas:new('D'
cartas.b = Cartas:new('MATLAB'
cartas.b = Cartas:new('Go'
cartas.b = Cartas:new('Perl'
cartas.b = Cartas:new('SAS'
cartas.b = Cartas:new('PL/SQL'
cartas.b = Cartas:new('Dart'
cartas.b = Cartas:new('Rust'
cartas.b = Cartas:new('Scratch'
cartas.b = Cartas:new('Lisp'
cartas.b = Cartas:new('COBOL'
cartas.b = Cartas:new('Fortran'
cartas.b = Cartas:new('Scala'
cartas.b = Cartas:new('RPG'
cartas.b = Cartas:new('Lua'


print(cartas.a.carac.confiabilidade)