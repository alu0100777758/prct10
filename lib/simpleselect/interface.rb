require "simpleselect/examen.rb"

class Interface<Examen 
   def comenzar
      pos=0
      for cuestion in @preguntas.headToTail do
         puts cuestion
         pos+=1
      end
      puts @preguntas.headToTail().each{|i| puts i }
   end
end
