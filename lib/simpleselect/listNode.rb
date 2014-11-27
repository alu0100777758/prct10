  # tipo nodo que actua como eslabón en la clase {#List}
  #
  # @param value contenido util que encapsulará
  # @param next "puntero" al siguiente nodo de la lista
  # @return prev "puntero" al nodo anterior en la lista
class ListNode
   include Comparable
   def <=> (other)
      @value <=> other.value
   end
   attr_accessor :value,:next,:prev
   def initialize(value)
      @value=value
      @next = nil
      @prev = nil
   end
   def to_s
      @value.to_s
   end
end
   
