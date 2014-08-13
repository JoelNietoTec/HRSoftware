class AddPerfilToCargos < ActiveRecord::Migration
  def change
    add_column :cargos, :edad_minima, :integer
    add_column :cargos, :edad_maxima, :integer
    add_column :cargos, :estado_civil_id, :integer
    add_column :cargos, :area_profesional_id, :integer
    add_column :cargos, :vehiculo_id, :integer
    add_column :cargos, :sexo_id, :integer
    add_column :cargos, :nivel_estudio_id, :integer
    add_column :cargos, :licencia_id, :integer
    add_column :cargos, :habilidades, :text
    add_column :cargos, :comentarios, :text
  end
end
