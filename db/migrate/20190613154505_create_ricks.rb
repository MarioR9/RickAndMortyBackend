class CreateRicks < ActiveRecord::Migration[6.0]
  def change
    create_table :ricks do |t|
      t.string :name
      t.integer :age
      
      t.timestamps
    end
  end
end
