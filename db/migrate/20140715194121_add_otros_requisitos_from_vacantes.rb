class AddOtrosRequisitosFromVacantes < ActiveRecord::Migration
  def change
    add_column :vacantes, :otros_requisitos, :text
  end
end
