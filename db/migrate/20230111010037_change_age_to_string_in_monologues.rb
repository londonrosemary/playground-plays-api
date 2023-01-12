class ChangeAgeToStringInMonologues < ActiveRecord::Migration[7.0]
  def change
    change_column :monologues, :age, :string
  end
end
