require "simpleselect/list.rb"
require "simpleselect/tof.rb"
require "simpleselect/simpleSelect.rb"

class Examen 
    attr_reader :preguntas, :respuestas, :n
    
    def initialize(pregs, resp, n)
        @preguntas, @respuestas, @n = pregs, resp, n
    end
    
    def compara_resp (indx, resp)
        a = false
        if @respuestas[indx] == resp
            a = true
        end
        a
    end
        
end