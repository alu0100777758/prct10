require "simpleselect/pregunta.rb"

class SimpleSelect < Pregunta
    attr_reader :resp
   def initialize (pregunta, resp, dif)
       super(pregunta, dif)
       @resp = resp
   end
    def imprimir
        puts @preg
        for i in @resp
            puts i
        end
    end
    
    def to_s
        aux = super.to_s
        
        for i in @resp
            aux = aux + i + "\n"
        end
        aux
    end
end