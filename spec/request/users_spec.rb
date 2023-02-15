require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { create(:user) }

  describe 'GET /index' do
    it 'リクエストが成功すること' do
      sign_in user
      get users_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'リクエストが成功すること' do
      sign_in user
      get edit_user_registration_path(user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'リクエストが成功すること' do
      sign_in user
      get user_path(user.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'リクエストが成功すること' do
      get new_user_registration_path
      expect(response).to have_http_status(:success)
    end
  end
end
