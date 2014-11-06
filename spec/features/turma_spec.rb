require 'rails_helper'

describe 'Turmas', :type => :feature do
  it 'Adicionar uma Turma' do
    visit '/turmas/new'
    expect("New turma").to have_content("New turma")
  end
end