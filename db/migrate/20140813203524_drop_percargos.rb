class DropPercargos < ActiveRecord::Migration
  def change
    drop_table :percargos
  end
end
