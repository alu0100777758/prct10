require "simpleselect/examen.rb"

class Interface<Examen 
   def comenzar
      pos=0
      puntuacion=0
      for cuestion in @preguntas.headToTail do
         puts cuestion
         print "\e[96m Su respuesta: "
         eleccion = gets.chomp.downcase[0]
         puts "\e[39m"
         if ( compara_resp(pos,eleccion) == true ) then
            puts "\e[92m |-> Respuesta correcta! <-|\e[39m\n "
            puntuacion += 1
         else
            puts "\e[91m |-> Respuesta incorrecta! <-|\e[39m\n "
         end
         puts "\e[90mpulse enter para continuar\e[39m"
         gets
         pos += 1
      end
      print "ha obtenido usted una puntuacion de "
      if (puntuacion < (pos/2) ) then 
         print "\e[91m #{puntuacion}"
      else
         print "\e[96m #{puntuacion}"
      end
      print"\e[39m Sobre "+pos.to_s+"\n"
   end
end
