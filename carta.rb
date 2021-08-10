class Carta
  attr_reader :numero, :pinta
  #solo se necesita leer los atributos

  def initialize(numero,pinta)

    pinta.upcase!
    #para que valor de pinta sea siempre transformado a mayuscula
    pintas = ['C', 'D', 'E', 'T']
    #se necesita setear cuales son los parametros para las pintas de las cartas

    if(numero >=1 && numero <=13)
      @numero = numero
    else
      raise ArgumentError.new("no es un numero valido")
    end 

    if pintas.include?(pinta)
      @pinta = pinta
    else
      raise ArgumentError.new("no es una pinta valida")
    end 
  end
end

pintas = ['C', 'D', 'E', 'T']

#carta0 = Carta.new(1,"c")
#print carta0
#prueba de funcionalidad
#carta1 = Carta.new(rand(1..13),pintas.sample)
#puts carta1
#prueba de funcionalidad

cartas = []

5.times do |i|
  cartas.push(Carta.new(rand(1..13),pintas.sample))
end 

print cartas