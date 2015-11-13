class CreateTag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :descrip
    end
  end
end
