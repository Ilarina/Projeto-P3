require 'rails_helper'

RSpec.describe "alunos/show", :type => :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :cd_aluno => 1,
      :turma => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
