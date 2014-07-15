class TipoPuestoVacante < ActiveRecord::Migration
  def change
    add_column :vacantes, :tipo_puesto_id, :integer
    add_column :vacantes, :grupo_pago_id, :integer
  end
end
