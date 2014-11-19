require "bundler/gem_tasks"

task :default => :spec
desc "Ejecutar las espectativas de la clase simpleselect"
task :spec do
sh "rspec -I. spec/simpleSelect_spec.rb"
sh "rspec -I. spec/listNode_spec.rb"
end