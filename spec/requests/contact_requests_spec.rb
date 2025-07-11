# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ContactRequests', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/contact_requests/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/contact_requests/create'
      expect(response).to have_http_status(:success)
    end
  end
end
