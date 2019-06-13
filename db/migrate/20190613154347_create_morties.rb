class CreateMorties < ActiveRecord::Migration[6.0]
  def change
    create_table :morties do |t|
      t.string :name

      t.timestamps
    end
  end
end
