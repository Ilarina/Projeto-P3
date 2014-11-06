require 'rails_helper'

RSpec.describe "turmas/edit", :type => :view do
  before(:each) do
    @turma = assign(:turma, Turma.create!(
      :cd_turma => "MyString"
    ))
  end

  it "renders the edit turma form" do
    render

    assert_select "form[action=?][method=?]", turma_path(@turma), "post" do

      assert_select "input#turma_cd_turma[name=?]", "turma[cd_turma]"
    end
  end
end
