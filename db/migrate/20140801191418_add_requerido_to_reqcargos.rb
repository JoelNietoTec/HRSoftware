class AddRequeridoToReqcargos < ActiveRecord::Migration
  def change
    add_column :reqcargos, :requerido, :boolean
  end
end
