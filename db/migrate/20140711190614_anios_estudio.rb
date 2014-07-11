class AniosEstudio < ActiveRecord::Migration
  def change
    change_column :prospecto_estudios, :fecha_inicio, :integer
    change_column :prospecto_estudios, :fecha_fin, :integer
  end
end
