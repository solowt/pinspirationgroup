class AddForKeyToBoards < ActiveRecord::Migration
  def change
    add_reference :boards, :user, index: true
  end
end
