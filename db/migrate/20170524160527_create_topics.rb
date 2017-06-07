class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.references :user

      t.timestamps
    end
    add_index :topics, :user
  end
end
