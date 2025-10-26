class Boat < ApplicationRecord
  belongs_to :seller, class_name: "User", inverse_of: :boats, optional: true
end
