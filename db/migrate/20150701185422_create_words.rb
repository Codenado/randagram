class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :text	
      t.belongs_to :length, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
