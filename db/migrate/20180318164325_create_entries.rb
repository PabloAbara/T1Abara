class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :downtitle
      t.text :body
      t.integer :counter

      t.timestamps
    end
  end
end
