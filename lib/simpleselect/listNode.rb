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
   
