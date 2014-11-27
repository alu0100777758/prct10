require "simpleselect.rb"
#require "spec_helper"
describe Examen do 
    before :each do 
        @v6 = TorFalse.new("6.-) Es apropiado que una clase tablero herede de una clase juego?", 1)
        @v5 = SimpleSelect.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego.",  ["a) Cierto", "b) Falso"], 1)
        @v4 = SimpleSelect.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n",  ["a) Una instancia de la clase Class", "b) Una constante","c) Un objeto","d) Ninguna de las anteriores"], 4)
        @v3 = SimpleSelect.new("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n",  ["a) 1", "b) bob","c) Hey","d) Ninguna de las anteriores"], 2)
        @v2 = SimpleSelect.new("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n",  ["a) Cierto", "b) Falso"], 2)
        @v1 = SimpleSelect.new("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n",  ["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"], 1)
        
        @nvar6=ListNode.new(@v6)
        @nvar5=ListNode.new(@v5)
        @nvar4=ListNode.new(@v4)
        @nvar3=ListNode.new(@v3)
        @nvar2=ListNode.new(@v2)
        @nVar1= ListNode.new(@v1)
        
        @r1=ListNode.new("a")
        @r2=ListNode.new("b")
        @r3=ListNode.new("c")
        @r4=ListNode.new("d")
        @r5=ListNode.new("c")
        @r6=ListNode.new("a")
        
        @lista=List.new(@nVar1)
        @listar=List.new(@r1)
 
        @lista.multiple_push([@nvar2, @nvar3, @nvar4, @nvar5, @nvar6])
        @listar.multiple_push([@r2, @r3, @r4, @r5, @r6])
        
        @examen = Examen.new(@lista, @listar, 6)
        
    end
    
    describe "Specs de un examen" do
        it "Existe" do
        end
        it "Tiene preguntas" do
       
            @examen.preguntas.should eq(@lista)
        end
        it "Las preguntas son una lista" do
            @examen.preguntas.is_a?(List).should eq(true)
        end
        it "Tiene respuestas" do
            @examen.respuestas.should eq(@listar)
        end
        it "Estan ordenadas" do
            @examen.preguntas[0].should eq(@nVar1)
            @examen.preguntas[1].should eq(@nvar2)
            @examen.preguntas[3].to_s.should eq("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n\na) Una instancia de la clase Class\nb) Una constante\nc) Un objeto\nd) Ninguna de las anteriores\n")
          
      
        end
         it "Compara respuestas" do
            @examen.compara_resp(0, "a").should eq(true)
        end
        it "Invierte el examen" do
            @examen.preguntas.invertir[0].should eq (@examen.preguntas[(@examen.n) -1])
        end
    end
    
    
end
