class CreateAreaProfesionals < ActiveRecord::Migration
  def change
    create_table :area_profesionals do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
