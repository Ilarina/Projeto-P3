require 'rails_helper'

RSpec.describe "turmas/index", :type => :view do
  before(:each) do
    assign(:turmas, [
      Turma.create!(
        :cd_turma => "Cd Turma"
      ),
      Turma.create!(
        :cd_turma => "Cd Turma"
      )
    ])
  end

  it "renders a list of turmas" do
    render
    assert_select "tr>td", :text => "Cd Turma".to_s, :count => 2
  end
end
