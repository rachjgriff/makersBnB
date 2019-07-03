class Space

   attr_reader :name
   
   def initialize(name)
     @name = name
   end

   def self.create
     "Space"
   end
end
