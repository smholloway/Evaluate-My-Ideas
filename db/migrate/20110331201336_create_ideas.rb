class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.string :link
      t.integer :votes

      t.timestamps
    end
  end

  def self.down
    drop_table :ideas
  end
end
