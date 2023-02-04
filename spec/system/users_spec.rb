require 'rails_helper'

RSpec.describe "Users", type: :system do
  let(:user) { create(:user) }
  context 'ログイン' do
    it 'ログイン成功' do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'ログイン'
      expect(page).to have_content "ログアウト"
    end
  end
end
