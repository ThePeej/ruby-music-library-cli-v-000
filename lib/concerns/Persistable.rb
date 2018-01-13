module Persistable
  module InstanceMethods
    def save
      self.class.all << self
    end
  end

  module ClassMethods
    def self.destroy_all
      self.all.clear
    end

    def self.create(name)
      self.new(name).tap{|s| s.save}
    end
  end
end
