class CreatePlays < ActiveRecord::Migration[7.0]
  def change
    create_table :plays do |t|
      t.string :name
      t.string :author
      t.string :genre
      t.string :length
      t.integer :num_character
      t.string :time_period
      t.boolean :copy_avail
      t.string :synopsis

      t.timestamps
    end
  end
end
