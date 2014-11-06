json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :cd_aluno, :turma_id
  json.url aluno_url(aluno, format: :json)
end
