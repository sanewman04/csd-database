class CreateAuthors < ActiveRecord::Migration[8.1]
  def change
    create_table :authors do |t|
      t.text :first_name
      t.text :last_name

      t.timestamps
    end
  end
end
