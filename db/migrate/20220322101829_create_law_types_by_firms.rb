class CreateLawTypesByFirms < ActiveRecord::Migration[7.0]
  def change
    create_table :law_types_by_firms do |t|
      t.boolean :administratif
      t.boolean :constitutionnel
      t.boolean :prive
      t.boolean :civil
      t.boolean :social
      t.boolean :penal
      t.boolean :commercial
      t.boolean :judiciaire
      t.boolean :administratif
      t.boolean :administratif
      t.belongs_to :firm, index: true
      t.belongs_to :lawyer, class_name: 'User', index: true
      
      t.timestamps
    end
  end
end
