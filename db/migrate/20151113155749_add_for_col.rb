class AddForCol < ActiveRecord::Migration
  def change
    add_reference :pins, :board, index: true
  end
end
