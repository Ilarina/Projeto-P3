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

  it 'Editar uma Turma' do
    turma = FactoryGirl.create(:turma)
    
    visit edit_turma_path(turma)

    selecionar_data "30", 'November', "2014", "turma", "dt_fim"

    click_button "Update Turma"

    expect(page).to have_content("Turma was successfully updated.")

    expect(page).to have_content(turma.cd_turma)
    expect(page).to have_content(turma.dt_inicio)
    expect(page).to have_content("2014-11-30")
    expect(page).to have_content(turma.dt_abertura_inscricao)
    expect(page).to have_content(turma.dt_fim_inscricao)
  end

  it 'Listar Turmas' do
    turma1 = FactoryGirl.create(:turma, cd_turma: "Turma1")
    turma2 = FactoryGirl.create(:turma, cd_turma: "Turma2")

    visit turmas_path

    expect(page).to have_content("Turma1")
    expect(page).to have_content("Turma2")
  end

end