require 'rails_helper'

RSpec.describe "alunos/new", :type => :view do
  before(:each) do
    assign(:aluno, Aluno.new(
      :cd_aluno => 1,
      :turma => nil
    ))
  end

  it "renders new aluno form" do
    render

    assert_select "form[action=?][method=?]", alunos_path, "post" do

      assert_select "input#aluno_cd_aluno[name=?]", "aluno[cd_aluno]"

      assert_select "input#aluno_turma_id[name=?]", "aluno[turma_id]"
    end
  end
end
