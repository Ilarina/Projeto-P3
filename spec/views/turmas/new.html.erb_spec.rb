require 'rails_helper'

RSpec.describe "turmas/new", :type => :view do
  before(:each) do
    assign(:turma, Turma.new(
      :cd_turma => "MyString"
    ))
  end

  it "renders new turma form" do
    render

    assert_select "form[action=?][method=?]", turmas_path, "post" do

      assert_select "input#turma_cd_turma[name=?]", "turma[cd_turma]"
    end
  end
end
