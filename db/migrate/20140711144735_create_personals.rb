class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cargo_id
      t.integer :area_id
      t.integer :empresa_id
      t.date :fecha_nacimiento
      t.string :dni
      t.string :email
      t.string :movil_1
      t.string :movil_2
      t.string :telefono_fijo
      t.string :nacionalidad
      t.string :estado_civil
      t.text :observaciones

      t.timestamps
    end
  end
end
