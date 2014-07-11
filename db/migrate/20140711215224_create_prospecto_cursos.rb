class CreateProspectoCursos < ActiveRecord::Migration
  def change
    create_table :prospecto_cursos do |t|
      t.references :prospecto, index: true
      t.string :titulo_curso
      t.string :institucion
      t.text :descripcion_curso
      t.integer :anio_curso

      t.timestamps
    end
  end
end
