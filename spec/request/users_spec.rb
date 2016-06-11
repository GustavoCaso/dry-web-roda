require 'main/entities/user'

RSpec.describe '/users', type: :request do
  describe 'GET /users' do
    it 'renders hello template' do
      get '/users'

      expect(last_response).to be_ok

      expect(last_response.body).to eql(
        '<!DOCTYPE html><html><head><title>Woohaa</title></head><body><h1>Users</h1><div class="users"><ul><li>Jane</li><li>Joe</li></ul></div></body></html>'
      )
    end
  end

  describe 'POST /users' do
    it 'creates a user' do
      user = { id: '1', name: 'Jane' }

      post '/users', user: user

      expect(last_response).to be_created

      expect(container['main.persistence.repositories.users'].all).to eql([Main::Entities::User.new('1', 'Jane')])
    end

    it 'redirects when name is missing' do
      user = { id: '1' }

      post '/users', user: user

      expect(last_response).to be_redirect
    end
  end
end
