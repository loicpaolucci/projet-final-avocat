class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.belongs_to :firm, index: true
      t.belongs_to :user, index: true
      t.integer :note
      
      t.timestamps
    end
  end
end
