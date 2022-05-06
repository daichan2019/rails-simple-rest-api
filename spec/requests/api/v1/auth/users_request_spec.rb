require 'rails_helper'

RSpec.describe "Api::V1::Auth::Users", type: :request do
  let(:headers) { { CONTENT_TYPE: 'application/json', Authorization: 'hoge_token' } }

  describe 'GET /api/v1/auth/users' do
    it '全てのユーザーを取得すること' do
      authenticate_stub

      get '/api/v1/auth/users', headers: headers

      expect(response.status).to eq(200)
    end
  end

end
