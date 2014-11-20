require "simpleselect/listNode.rb"

class List
    include Enumerable
    attr_reader :head
    
    #DEFINIR each
    def initialize(nodo)
        raise unless nodo.is_a? (ListNode)
        @head = nodo
        @tail = nodo
    end
    def push (nodo)
        raise unless nodo.is_a? (ListNode)
        nodo.prev=@tail
        @tail.next=nodo
        @tail=nodo
        
    end
    
    def multiple_push (nodos)
        nodos.each { |i|
            raise unless i.is_a? (ListNode)
            push(i)
        }
    end
    def pop 
        aux = @head.value
        @head = @head.next
        @head.prev = nil
        aux
    end
    def vacia?
        a = false
        if (@head == nil)
            a = true
        end 
        a
    end 
    def headToTail()
        val=[@head]
        nodo=@head
        #antes estaba while (nodo != @tail) al parecer 
        #hay algo raro con la cola, habra que verificarlo.
        #de todas formas asi funciona porque el ultimo
        #nodo siempre tiene el next a nil
        while (nodo.next!=nil)do
            nodo=nodo.next
            val.push(nodo)
        end
        val
    end
    def tailToHead()
        val=[@tail]
        nodo=@tail
        while (nodo!=@head)do
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
end
