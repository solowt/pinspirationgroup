class Tagpin < ActiveRecord::Base
  belongs_to :tag
  belongs_to :pin
end
