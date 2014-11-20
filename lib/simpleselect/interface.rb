require "simpleselect/examen.rb"

class Interface<Examen 
   def comenzar
      @pos=0
      @puntuacion=0
      for cuestion in @preguntas.headToTail do
         puts cuestion
         print "\e[96m Su respuesta: "
         loop do
            @eleccion = gets.chomp.downcase[0]
            if (@eleccion == nil)then
               puts "Por favor introduzca una opcion valida"
            else break 
            end
         end
         puts "\e[39m"
         if ( compara_resp(@pos,@eleccion) == true ) then
            puts "\e[92m |-> Respuesta correcta! <-|\e[39m\n "
            @puntuacion += 1
         else
            puts "\e[91m |-> Respuesta incorrecta! <-|\e[39m\n "
         end
         loop do 
            puts "\e[90mpulse enter para continuar (o i para mas informacion)\e[39m"
            cuestion=gets.chomp.downcase[0]
            if (cuestion == "i") then
               puts "Actual:#{@pos}\nTotal:#{@n}\nAcertadas:#{@puntuacion}\nFallidas:#{@pos+1-@puntuacion}"
            else break
            end
         end
         @pos += 1
      end
      print "ha obtenido usted una puntuacion de "
      if (@puntuacion < (@pos/2) ) then 
         print "\e[91m #{@puntuacion}"
      else
         print "\e[92m #{@puntuacion}"
      end
      print"\e[39m Sobre "+@pos.to_s+"\n"
   end
end
