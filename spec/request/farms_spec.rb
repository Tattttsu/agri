require 'rails_helper'

RSpec.describe "Farms", type: :request do
  let(:user) { create(:user) }
  let(:farm) { create(:farm, user_id: user.id) }

  describe 'GET /new' do
    it 'リクエストが成功すること' do
      sign_in user
      get new_farm_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /index' do
    it 'リクエストが成功すること' do
      get farms_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    before do
      sign_in user
      get edit_farm_path(farm.id)
    end
    it 'リクエストが成功すること' do
      expect(response).to have_http_status(:success)
    end
    it 'farm名が表示されている' do
      expect(response.body).to include farm.name
    end
  end
end
