class CreateLengths < ActiveRecord::Migration
  def change
    create_table :lengths do |t|
      t.integer :size, index: true

      t.timestamps null: false
    end
  end
end
