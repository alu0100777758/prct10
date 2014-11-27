require "simpleselect.rb"
#require "spec_helper"
describe SimpleSelect do
    
     before :all do
        @var = SimpleSelect.new("Pregunta",  ["respuesta1", "respuesta2","respuesta3","respuesta4"], 4)
        
    end
    describe "Ver existen preguntas y respuestas" do
        it "Existe pregunta y respuesta" do 
        end
    
        
    end
    describe "Ver preguntas y respuestas" do
        it "Ver preguntas" do
            @var.preg.should eq("Pregunta")
        end
        it "ver respuestas" do
            @var.resp.should eq (["respuesta1", "respuesta2","respuesta3", "respuesta4"])
        end
    end
    describe "ver por pantalla" do
        it "Ver preguntas y respuestas" do
            @var.imprimir
        end
        it"comprobar to_s" do
            @var.to_s.should eq("Pregunta\nrespuesta1\nrespuesta2\nrespuesta3\nrespuesta4\n")
           
        end
    end

    
    
end
