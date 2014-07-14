class RemoveIdiomaVacante < ActiveRecord::Migration
  def change
    remove_column :vacantes, :idioma_id, :integer
    remove_column :vacantes, :nivel_idioma_id, :integer
  end
end
