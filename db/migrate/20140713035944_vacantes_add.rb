class VacantesAdd < ActiveRecord::Migration
  def change
    add_column :vacantes, :descripcion_cargo, :text
    add_column :vacantes, :provincia_id, :integer
    add_column :vacantes, :distrito_id, :integer
    add_column :vacantes, :salario_oferta, :float
    add_column :vacantes, :nivel_studio_id, :integer
    add_column :vacantes, :idioma_id, :integer
    add_column :vacantes, :nivel_idioma_id, :integer
  end
end
