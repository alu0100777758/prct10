require "simpleselect/examen.rb"

class Interface<Examen 
   def comenzar
      pos=0
      for cuestion in @preguntas.headToTail do
         puts cuestion
         eleccion = gets.chomp
         compara_resp(pos,eleccion)
         pos += 1
      end
   end
end
