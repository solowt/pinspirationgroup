class CreateTagpin < ActiveRecord::Migration
  def change
    create_table :tagpins do |t|
      t.references :tag
      t.references :pin
    end
  end
end
