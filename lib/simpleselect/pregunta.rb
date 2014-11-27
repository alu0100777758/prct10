  # Clase que define una pregunta
  #
  # @param preg [string] almacena la pregunta
  # @param dif [Fixnum] valoracion de la dificultad de la pregunta
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
