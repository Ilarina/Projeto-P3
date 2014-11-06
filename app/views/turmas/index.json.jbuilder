json.array!(@turmas) do |turma|
  json.extract! turma, :id, :cd_turma, :dt_inicio, :dt_fim, :dt_abertura_inscricao, :dt_fim_inscricao
  json.url turma_url(turma, format: :json)
end
