  # Clase que define una pregunta
  #
  # @attr_reader preg [string] almacena la pregunta
  # @attr_reader dif [Fixnum] valoracion de la dificultad de la pregunta
class Pregunta
    attr_reader :preg, :dif
    include Comparable
    
    def initialize (preg, dif)
        @preg = preg
        @dif = dif
    end
    def to_s
        aux = @preg + "\n"
        aux
    end
    def <=> (other)
        @dif <=> other.dif
    end
end
