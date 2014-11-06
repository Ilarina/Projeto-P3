require 'rails_helper'

describe 'Turmas', :type => :feature do
  it 'Adicionar uma Turma' do
    visit new_turma_path
    expect(page).to have_content("Nova Turma")
    fill_in 'Código', :with => 'CodTurma'
    
    selecionar_data "10", 'November', "2014", "turma", "dt_inicio"

    selecionar_data "30", 'November', "2014", "turma", "dt_fim"

    selecionar_data "10", 'October', "2014", "turma", "dt_abertura_inscricao"

    selecionar_data "20", 'October', "2014", "turma", "dt_fim_inscricao"

    click_button "Create Turma"

    expect(page).to have_content("Turma was successfully created.")
  end
end