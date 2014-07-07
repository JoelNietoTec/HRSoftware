class CreateProspectoEstudios < ActiveRecord::Migration
  def change
    create_table :prospecto_estudios do |t|
      t.references :prospecto, index: true
      t.integer :nivel_estudio_id
      t.string :institucion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :status_estudio_id

      t.timestamps
    end
  end
end
