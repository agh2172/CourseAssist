#app/models/users.rb
require 'rails_helper'
require 'spec_helper'
# require '~/app/models/User'

describe User do
    it 'stores first, last, and uni' do
        # puts page
        puts 'new puts: params, session, User'
        # puts params
        a = 1

        get :show, session: {uni: 'ss6167'}
        expect(session[:uni]).to eq('ss6167')
        input_uni = assigns(:uni)
        expect(input_uni).to eq('ss6167')
        puts User.create(user_params = {first: "Lucas", last: "Cremers",uni: "lfc2136"})
        puts User.instance_variable_get("@last")
        puts User.first
        puts 'last puts statement'
        expect(User.first).to eq "Lucas"

    end
    it 'displays First Name, Last Name, and UNI text fields'
    it 'displays Year, School, Major, Minor select dropdowns'
    it 'displays Next button'
    it 'redirects to courses page by clicking Next button'
    it 'session contains the inputs'
end