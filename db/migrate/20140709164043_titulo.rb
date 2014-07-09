class Titulo < ActiveRecord::Migration
  def change
    add_column :prospecto_estudios, :nombre_titulo, :string
  end
end
