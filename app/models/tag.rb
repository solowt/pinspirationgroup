class Tag < ActiveRecord::Base
  belongs_to :pin
  has_many :tagpins
  has_many :pins, through: :tagpins
end
