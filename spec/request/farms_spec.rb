require 'rails_helper'

RSpec.describe "Farms", type: :request do

  context 'Farms' do
    it '新規作成画面' do
      get new_farm_path
      expect(response).to have_http_status(200)
    end
  end
end
