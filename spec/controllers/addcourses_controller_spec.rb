require 'rails_helper'

describe AddcoursesController do
    it 'check whether uni takes session value' do
        get :index, session: {uni: 'ss6167'}
        expect(session[:uni]).to eq('ss6167')
        input_uni = assigns(:uni)
        expect(input_uni).to eq('ss6167')
    end
end