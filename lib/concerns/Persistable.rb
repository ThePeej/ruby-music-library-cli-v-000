module Persistable
  module InstanceMethods
    def save
      self.class.all << self
    end


  end

  module ClassMethods



  end
end
