require 'rails_helper'

describe UsersController do
    before do
        post :create, params: {"user"=>{"first"=>"", "last"=>"", "uni"=>"ss6167", "year"=>"2026", "school"=>"CC", "major"=>"Computer Science", "minor"=>"Computer Science"}}
    end
    it 'should assign UNI to session' do
        expect(session[:uni]).to eq('ss6167')
    end
end