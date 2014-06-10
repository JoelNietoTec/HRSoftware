class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :nombre
      t.time :entrada
      t.time :inicio_descanso
      t.time :fin_descanso
      t.time :salida
      t.boolean :activo

      t.timestamps
    end
  end
end
