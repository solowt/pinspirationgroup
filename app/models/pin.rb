class Pin < ActiveRecord::Base
  belongs_to :board
  has_many :tagpins
  has_many :tags, through: :tagpins
end
