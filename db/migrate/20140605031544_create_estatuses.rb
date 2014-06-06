class CreateEstatuses < ActiveRecord::Migration
  def change
    create_table :estatuses do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
