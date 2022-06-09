class CreatePlays < ActiveRecord::Migration[7.0]
  def change
    create_table :plays do |t|
      t.string :author
      t.string :genre
      t.string :length
      t.integer :num_character
      t.string :time_period
      t.boolean :copy_avail
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
