class User < ApplicationRecord
  has_many :items, primary_key: :foo, foreign_key: :bar
end
