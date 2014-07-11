class CreateProspectoIdiomas < ActiveRecord::Migration
  def change
    create_table :prospecto_idiomas do |t|
      t.references :prospecto, index: true
      t.integer :idioma_id
      t.integer :nivel_oral_id
      t.integer :nivel_escrito_id

      t.timestamps
    end
  end
end
