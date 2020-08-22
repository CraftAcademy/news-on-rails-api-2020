RSpec.describe "GET /v1/articles for premuim", type: :request do
  let!(:article) { create(:article, premium: true, content: 'This is the first article content' * 50) }


  describe 'successfully gets article' do
    let!(:subscriber){create(:user, role: 'subscriber')}
    let(:subscriber_credentials) { subscriber.create_new_auth_token }
    let(:subscriber_headers) { { HTTP_ACCEPT: 'application/json' }.merge!(subscriber_credentials) }
  
    before do
      get "/api/v1/articles/#{article.id}", headers: subscriber_headers
    end

    it 'responds with 200 status' do
      expect(response).to have_http_status 200
    end

    it 'should respond with the whole content of the article' do
      expect(response_json["article"]["content"].length).to eq 1650
    end
  end
end 