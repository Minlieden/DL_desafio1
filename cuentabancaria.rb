class CuentaBancaria
  attr_accessor :nombre_de_usuario, :vip, :numero_de_cuenta

  def initialize(nombre_usuario, numero_de_cuenta, vip = 0)

    @nombre_de_usuario = nombre_usuario
    @vip = vip
    raise RangeError,'el numero asignado no corresponde a 0 o 1' if @vip > 1 || @vip < 0 
    
    if numero_de_cuenta.digits.count == 8
      @numero_de_cuenta = numero_de_cuenta
    else 
      raise RangeError.new("la cantidad de digitos del numero de cuenta es distinto de 8")
    end 
    
  end

  def numero_de_cuenta
    "#{@vip}-#{@numero_de_cuenta}"
#    if @vip == 1
#      "1-#{@numero_de_cuenta}"
#    else
#      "0-#{@numero_de_cuenta}"
#    end 
  end 
end 


print cuenta1= CuentaBancaria.new("antonio", 12345678)