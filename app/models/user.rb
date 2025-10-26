class User < ApplicationRecord
  has_many :boats, foreign_key: :seller_id, inverse_of: :seller
end
