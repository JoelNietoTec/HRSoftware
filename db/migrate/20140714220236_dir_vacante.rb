class DirVacante < ActiveRecord::Migration
  def change
    add_column :vacantes, :direccion, :string
  end
end
