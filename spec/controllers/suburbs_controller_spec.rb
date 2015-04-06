require 'rails_helper'

RSpec.describe SuburbsController, :type => :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all suburbs as @suburbs" do
      suburb = Suburb.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:suburbs)).to eq([suburb])
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Suburb" do
        expect {
          post :create, {:suburb => valid_attributes}, valid_session
        }.to change(Suburb, :count).by(1)
      end
     
      it "assigns a newly created suburb as @suburb" do
        post :create, {:suburb => valid_attributes}, valid_session
        expect(assigns(:suburb)).to be_a(Suburb)
        expect(assigns(:suburb)).to be_persisted
      end

      it "redirects to the created suburb" do
        post :create, {:suburb => valid_attributes}, valid_session
        expect(response).to redirect_to(Suburb.last)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested suburb" do
      suburb = Suburb.create! valid_attributes
      expect {
        delete :destroy, {:id => suburb.to_param}, valid_session
      }.to change(Suburb, :count).by(-1)
    end

    it "redirects to the suburbs list" do
      suburb = Suburb.create! valid_attributes
      delete :destroy, {:id => suburb.to_param}, valid_session
      expect(response).to redirect_to(suburbs_url)
    end
  end
end

