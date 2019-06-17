class CreateRicks < ActiveRecord::Migration[6.0]
  def change
    create_table :ricks do |t|
      t.string :username
      t.string :password_digest
      t.integer :age
      t.integer :avatar
      t.timestamps
    end
  end
end
