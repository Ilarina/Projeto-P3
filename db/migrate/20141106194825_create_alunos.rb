class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.integer :cd_aluno
      t.references :turma, index: true

      t.timestamps
    end
  end
end
