class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.belongs_to :user
      t.belongs_to :play

      t.timestamps
    end
  end
end
