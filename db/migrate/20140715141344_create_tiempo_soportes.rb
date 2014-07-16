class CreateTiempoSoportes < ActiveRecord::Migration
  def change
    create_table :tiempo_soportes do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
