  # tipo nodo que actua como eslabón en la clase {List}
  #
  # @attr value [object] contenido util que encapsulará
  # @attr next [ListNode] "puntero" al siguiente nodo de la lista
  # @attr prev [ListNode] "puntero" al nodo anterior en la lista
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
   
