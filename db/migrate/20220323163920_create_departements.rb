class CreateDepartements < ActiveRecord::Migration[5.2]
  def change
    create_table :departements do |t|
      t.string :zip_code
      t.string :name

      t.timestamps
    end
  end
end
