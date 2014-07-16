class CreateTikedNiveles < ActiveRecord::Migration
  def change
    create_table :tiked_niveles do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
