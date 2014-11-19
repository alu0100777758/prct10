require "simpleselect/list.rb"
require "simpleselect/tof.rb"
require "simpleselect/simpleSelect.rb"

class Examen 
    attr_reader :preguntas, :respuestas
    def initialize(pregs, resp)
        @preguntas, @respuestas = pregs, resp
    end
end