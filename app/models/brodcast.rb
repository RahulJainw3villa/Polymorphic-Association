class Brodcast < ApplicationRecord
    has_many :comments, as: :commentable
end
