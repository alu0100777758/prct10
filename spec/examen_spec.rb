require "simpleselect.rb"

describe Examen do 
    before :all do 
        @var6 = TorFalse.new("6.-) Es apropiado que una clase tablero herede de una clase juego?", 1)
        @var5 = SimpleSelect.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego.",  ["a) Cierto", "b) Falso"], 1)
        @var4 = SimpleSelect.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n",  ["a) Una instancia de la clase Class", "b) Una constante","c) Un objeto","d) Ninguna de las anteriores"], 4)
        @var3 = SimpleSelect.new("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n",  ["a) 1", "b) bob","c) Hey","d) Ninguna de las anteriores"], 2)
        @var2 = SimpleSelect.new("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n",  ["a) Cierto", "b) Falso"], 2)
        @var1 = SimpleSelect.new("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n",  ["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"], 1)
        
        @nodovar6=ListNode.new(@var6)
        @nodovar5=ListNode.new(@var5)
        @nodovar4=ListNode.new(@var4)
        @nodovar3=ListNode.new(@var3)
        @nodovar2=ListNode.new(@var2)
        @nodoVar1= ListNode.new(@var1)
        
        @lista=List.new(@nodoVar1)
        #desde este punto no funcionan los push 
        #@lista.push(@nodovar2)
        #@lista.push(@nodovar3)
        #@lista.push(@nodovar4)
        #@lista.push(@nodovar5)
        @lista.multiple_push([@nodovar2, @nodovar3, @nodovar4, @nodovar5, @nodovar6])
        @examen = Examen.new(@lista, ["a", "b", "c", "d", "c", "a"], 6)
        
    end
    
    describe "Specs de un examen" do
        it "Existe" do
        end
        it "Tiene preguntas" do
            @lista.push(@nodovar2)
            @lista.push(@nodovar3) 
            @examen.preguntas.should eq(@lista)
        end
        it "Tiene respuestas" do
            @examen.respuestas.should eq(["a", "b", "c", "d", "c", "a"])
        end
        it "Estan ordenadas" do
            @examen.preguntas[0].should eq(@nodoVar1)
            #@examen.preguntas[3].should eq(@nodovar4)
        end
         it "Compara respuestas" do
            @examen.compara_resp(0, "a").should eq(true)
        end
        
    end
    
    
end
