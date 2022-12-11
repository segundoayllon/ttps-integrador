class CreateTurnos < ActiveRecord::Migration[7.0]
  def change
    create_table :turnos do |t|
      t.text :motivo
      t.string :estado
      t.text :comentario
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
