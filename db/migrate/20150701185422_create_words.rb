class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
    	t.string :text, index: true
		t.string :anagram_key, index: true
    end
  end
end
