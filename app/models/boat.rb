class Boat < ApplicationRecord
  belongs_to :seller, class_name: "User", inverse_of: :boats, optional: true

  class << self
    def new(*args, **kwargs, &block)
      return super unless self == Boat
      raise NotImplementedError, "Boat is abstract; instantiate a subclass (e.g., Melges15, ILCA)"
    end
  end

  def initialize(*args, **kwargs)
    raise NotImplementedError, "Boat is abstract; instantiate a subclass" if self.class == Boat
    super
  end
end
