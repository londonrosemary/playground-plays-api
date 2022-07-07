class CreateMonologues < ActiveRecord::Migration[7.0]
  def change
    create_table :monologues do |t|
      t.string :name
      t.string :content
      t.string :genre
      t.string :length
      t.boolean :is_copy_available
      t.string :gender
      t.string :char_name
      t.integer :age
      t.belongs_to :play

      t.timestamps
    end
  end
end
