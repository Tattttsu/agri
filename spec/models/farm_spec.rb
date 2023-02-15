require 'rails_helper'

RSpec.describe 'farmモデルのテスト', type: :model do
  let(:user) { create(:user) }
  let(:farm) { create(:farm, user_id: user.id) }

  describe 'バリデーション' do
    it 'nameが空だとNG' do
      farm.name = ' '
      expect(farm.valid?).to eq(false)
    end

    it 'addressが空だとNG' do
      farm.address = ''
      expect(farm.valid?).to eq(false)
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Farm.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
end
