require "rails_helper"

RSpec.describe KindsController, kind: :controller do
  let(:valid_attributes) { { name: "Test"} }
  let(:invalid_attributes) { { name: nil} }

  describe "GET #index" do
    it "returns a success response" do
      kind = Kind.create! valid_attributes
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      kind = Kind.create! valid_attributes
      get :edit, params: { id: kind.to_param }
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Kind" do
        expect do
          post :create, params: { kind: valid_attributes }
        end.to change(Kind, :count).from(0).to(1)
      end

      it "redirects to the kinds index" do
        post :create, params: { kind: valid_attributes }
        expect(response).to redirect_to(kinds_url)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { kind: invalid_attributes }
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { name: "Test again"} }

      it "updates the requested kind" do
        kind = Kind.create! valid_attributes
        expect do
          put :update, params: { id: kind.to_param, kind: new_attributes }
        end.to change { kind.reload.name }.from("Test").to("Test again")
      end

      it "redirects to the kinds index" do
        kind = Kind.create! valid_attributes
        put :update, params: { id: kind.to_param, kind: valid_attributes }
        expect(response).to redirect_to(kinds_url)
      end
    end

    context "with invalid params" do
      it "doesn't change the name" do
        kind = Kind.create! valid_attributes
        expect do
          put :update, params: { id: kind.to_param, kind: invalid_attributes }
        end.not_to change { kind.reload.name }
      end

      it "returns a success response (i.e. to display the 'edit' template)" do
        kind = Kind.create! valid_attributes
        put :update, params: { id: kind.to_param, kind: invalid_attributes }
        expect(response).to be_success
      end
    end
  end
end
