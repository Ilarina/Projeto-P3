class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :cd_turma
      t.date :dt_inicio
      t.date :dt_fim
      t.date :dt_abertura_inscricao
      t.date :dt_fim_inscricao

      t.timestamps
    end
  end
end
