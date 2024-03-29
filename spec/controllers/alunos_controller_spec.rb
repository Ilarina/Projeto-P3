require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AlunosController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Aluno. As you add validations to Aluno, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.build(:aluno).attributes.symbolize_keys
  }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AlunosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all alunos as @alunos" do
      aluno = Aluno.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:alunos)).to eq([aluno])
    end
  end

  describe "GET show" do
    it "assigns the requested aluno as @aluno" do
      aluno = Aluno.create! valid_attributes
      get :show, {:id => aluno.to_param}, valid_session
      expect(assigns(:aluno)).to eq(aluno)
    end
  end

  describe "GET new" do
    it "assigns a new aluno as @aluno" do
      get :new, {}, valid_session
      expect(assigns(:aluno)).to be_a_new(Aluno)
    end
  end

  describe "GET edit" do
    it "assigns the requested aluno as @aluno" do
      aluno = Aluno.create! valid_attributes
      get :edit, {:id => aluno.to_param}, valid_session
      expect(assigns(:aluno)).to eq(aluno)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Aluno" do
        expect {
          post :create, {:aluno => valid_attributes}, valid_session
        }.to change(Aluno, :count).by(1)
      end

      it "assigns a newly created aluno as @aluno" do
        post :create, {:aluno => valid_attributes}, valid_session
        expect(assigns(:aluno)).to be_a(Aluno)
        expect(assigns(:aluno)).to be_persisted
      end

      it "redirects to the created aluno" do
        post :create, {:aluno => valid_attributes}, valid_session
        expect(response).to redirect_to(Aluno.last)
      end
    end

  end

  describe "PUT update" do
    describe "with valid params" do
      it "assigns the requested aluno as @aluno" do
        aluno = Aluno.create! valid_attributes
        put :update, {:id => aluno.to_param, :aluno => valid_attributes}, valid_session
        expect(assigns(:aluno)).to eq(aluno)
      end

      it "redirects to the aluno" do
        aluno = Aluno.create! valid_attributes
        put :update, {:id => aluno.to_param, :aluno => valid_attributes}, valid_session
        expect(response).to redirect_to(aluno)
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested aluno" do
      aluno = Aluno.create! valid_attributes
      expect {
        delete :destroy, {:id => aluno.to_param}, valid_session
      }.to change(Aluno, :count).by(-1)
    end

    it "redirects to the alunos list" do
      aluno = Aluno.create! valid_attributes
      delete :destroy, {:id => aluno.to_param}, valid_session
      expect(response).to redirect_to(alunos_url)
    end
  end

end
