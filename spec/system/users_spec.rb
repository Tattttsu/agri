require 'rails_helper'

RSpec.describe "Users", type: :system do
  let!(:user) { create(:user) }

  describe 'ログインのテスト' do
    context '有効なログインの場合' do
      before do
        visit new_user_session_path
        fill_in 'メールアドレス', with: 'test1@example.com'
        fill_in 'パスワード', with: '123456'
        click_button 'ログイン'
      end
      it 'ホームページにリダイレクトされる' do
        expect(current_path).to eq(root_path)
      end
    end

    context '無効なログインの場合' do
      before do
        visit new_user_session_path
        fill_in 'メールアドレス', with: ''
        fill_in 'パスワード', with: ''
        click_button 'ログイン'
      end
      it 'ログインが表示される' do
        expect(page).to have_content 'ログイン'
      end
    end
  end

  describe '会員登録のテスト', type: :feature do
    before do
      visit new_user_registration_path
    end

    context '無効なユーザの会員登録' do
      before do
        fill_in 'user_name', with: ''
        fill_in 'user_email', with: 'email@example.com'
        fill_in 'user_password', with: 'password'
        fill_in 'user_password_confirmation', with: 'password'
        click_button 'アカウントを作成する'
      end
      it '新規登録が表示されること' do
        expect(page).to have_content '新規登録'
      end
    end

    context '有効なユーザの会員登録' do
      before do
        fill_in 'user_name', with: 'test'
        fill_in 'user_email', with: 'email@example.com'
        fill_in 'user_password', with: 'password'
        fill_in 'user_password_confirmation', with: 'password'
        click_button 'アカウントを作成する'
      end
      it 'ホームページにリダイレクトされる' do
        expect(current_path).to eq root_path
      end
    end
  end
end
