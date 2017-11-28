require 'rails_helper'

describe NutritionsController, type: :controller do    
  describe 'get index' do
    it 'should render the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
  describe 'get show' do
    let!(:chin) {Nutrition.create}
    before(:each) do
      get :show, id: chin.id
    end
    it 'should find the exercise' do
      expect(assigns(:nutrition)).to eql(chin)
    end
    it 'should render the show template' do
      expect(response).to render_template('show')
    end
  end
  describe 'get new' do
    it 'should render the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end
  describe 'POST #create' do
    before :each do
      @id1 = '1'
      @nutri1 = double('nutri1')
    end
    it 'redirects to the nutrition page' do
      post :create, exercise: FactoryBot.attributes_for(:nutrition)
      expect(response).to redirect_to('/nutritions')
    end
  end
  describe 'get edit' do
    let!(:chin) {Nutrition.create}
    before do
      get :edit, id: chin.id
    end
    it 'should find the nutrition' do
      expect(assigns(:nutrition)).to eql(chin)
    end
    it 'should render the edit template' do
      expect(response).to render_template('edit')
    end
  end
  describe 'put update' do
    let!(:chin) {Nutrition.create}
    before(:each) do
      put :update, id: chin.id, exercise: FactoryBot.attributes_for(:nutrition, description: 'Updated')
    end
    it 'updates the nutritions' do
      chin.reload
      expect(chin.description).to eql('Updated')
    end
  end
  describe 'destroy' do
    let!(:chin) { FactoryBot.create(:nutrition) }
    it 'destroys the calories' do
      expect { delete :destroy, id: chin.id
      }.to change(Nutrition, :count).by(-1)
    end
    it 'redirects to the nutrition page' do
      delete :destroy, id: chin.id
      expect(response).to redirect_to('/nutritions')
    end
end
end