class Nacionalidad < ActiveRecord::Migration
  def change
    change_column :empleados, :nacionalidad_id, :string
  end
end
