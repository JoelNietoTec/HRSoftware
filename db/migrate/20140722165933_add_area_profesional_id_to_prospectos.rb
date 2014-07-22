class AddAreaProfesionalIdToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :area_profesional_id, :integer
  end
end
