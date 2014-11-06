require 'rails_helper'
require 'factory_girl_rails'

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
  it 'Visualizar uma Turma' do
    turma = FactoryGirl.create(:turma)
    
    visit turma_path(turma)

    expect(page).to have_content(turma.cd_turma)
    expect(page).to have_content(turma.dt_inicio)
    expect(page).to have_content(turma.dt_fim)
    expect(page).to have_content(turma.dt_abertura_inscricao)
    expect(page).to have_content(turma.dt_fim_inscricao)
  end

end