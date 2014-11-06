require 'rails_helper'

RSpec.describe "alunos/edit", :type => :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :cd_aluno => 1,
      :turma => nil
    ))
  end

  it "renders the edit aluno form" do
    render

    assert_select "form[action=?][method=?]", aluno_path(@aluno), "post" do

      assert_select "input#aluno_cd_aluno[name=?]", "aluno[cd_aluno]"

      assert_select "input#aluno_turma_id[name=?]", "aluno[turma_id]"
    end
  end
end
