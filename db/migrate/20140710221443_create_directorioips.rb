class CreateDirectorioips < ActiveRecord::Migration
  def change
    create_table :directorioips do |t|
      t.string :ip
      t.string :username
      t.string :hostname
      t.string :grupo
      t.string :admin_id
      t.string :mac
      t.string :ubicacion_actual
      t.string :empresa
      t.string :observaciones

      t.timestamps
    end
  end
end
