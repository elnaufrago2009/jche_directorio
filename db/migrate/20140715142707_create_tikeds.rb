class CreateTikeds < ActiveRecord::Migration
  def change
    create_table :tikeds do |t|
      t.integer :user_id
      t.integer :tipo_soporte_id
      t.text :observaciones
      t.integer :tiked_nivele_id
      t.integer :admin_id
      t.datetime :fecha_hora_atencion      
      t.integer :tiempo_soporte_id
      t.integer :estado_id

      t.timestamps
    end
  end
end
