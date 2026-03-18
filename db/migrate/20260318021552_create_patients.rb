class CreatePatients < ActiveRecord::Migration[8.1]
  def change
    create_table :patients do |t|
      t.integer :age
      t.text :gender
      t.text :education_level
      t.text :medical_history
      t.text :diet
      t.text :current_treatment

      t.timestamps
    end
  end
end
