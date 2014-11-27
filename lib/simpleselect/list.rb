require "simpleselect/listNode.rb"
  # Clase que define una lista doblemente enlazada formada por elementos {ListNode}
  #
  # @attr_reader head [ListNode] "puntero" al inicio de la lista
  # @attr_reader tail [ListNode] "puntero" al final de la lista
class List
    include Enumerable
    attr_reader :head,:tail
    
    def initialize(nodo)
        raise unless nodo.is_a? (ListNode)
        @head = nodo
        @tail = nodo
    end
  # Inserta elementos al final de la lista
  #
  # @param nodo [ListNode] "puntero" al inicio de la lista
    def push (nodo)
        raise unless nodo.is_a? (ListNode)
        nodo.prev=@tail
        @tail.next=nodo
        @tail=nodo
        
    end
    
  # Inserta multiples elementos al final de la lista
  #
  # @param nodos [Array(ListNode)] "puntero" al inicio de la lista
    def multiple_push (nodos)
        nodos.each { |i|
            raise unless i.is_a? (ListNode)
            push(i)
        }
    end
  # Extrae un elemento del final de la lista
  #
  # @return [Object] valor contenido en el ultimo {ListNode} de la lista
    def pop 
        aux = @head.value
        @head = @head.next
        @head.prev = nil
        aux
    end
  # Comprueba si la lista se encuentra vacia
  #
  # @return [Boolean] devuelve true en caso  de que esté vacia y false en el contrario
    def vacia?
        a = false
        if (@head == nil)
            a = true
        end 
        a
    end 
  # Realiza un recorrido desde {List::head} hasta {List::tail} 
  #
  # @return [Array(ListNode)] Array que contiene todos los {ListNode} de la cadena desde el inicio al final
    def headToTail()
        val=[@head]
        nodo=@head
        while (nodo.next!=nil)do
            nodo=nodo.next
            val.push(nodo)
        end
        val
    end
    def tailToHead()
        val=[@tail]
        nodo=@tail
        while (nodo.prev != nil)do
            nodo=nodo.prev
            val.push(nodo)
        end
        val
    end
    def each 
        headToTail.each{|i| yield i}
    end
    def [] (i)
        headToTail[i]
    end
    def invertir 
        val = []
        self.each {|i| val.unshift(i)}
        val
    end
        
end
