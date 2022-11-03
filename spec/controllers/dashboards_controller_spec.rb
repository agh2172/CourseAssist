require 'rails_helper'

describe DashboardsController do
    before do
        user1 = User.create!(first: 'Sameer',
                            last: 'Saxena',
                            uni: 'ss6167', 
                            year: 2024,
                            school: 'SEAS',
                            major: 'Computer Science',
                            minor: 'Economics')
        user2 = User.create!(first: 'Jackson',
                            last: 'Roberts',
                            uni: 'jr3876', 
                            year: 2023,
                            school: 'CC',
                            major: 'Economics',
                            minor: 'Computer Science')
        user3 = User.create!(first: 'Axel',
                            last: 'Hendrickson',
                            uni: 'ah2102', 
                            year: 2023,
                            school: 'CC',
                            major: 'Cycling',
                            minor: 'None')
        user4 = User.create!(first: 'Lucas',
                            last: 'Cremers',
                            uni: 'lc1902', 
                            year: 2023,
                            school: 'SEAS',
                            major: 'Glass Building',
                            minor: 'Reading')
        user5 = User.create!(first: 'Junfeng',
                            last: 'Yang',
                            uni: 'jy1203', 
                            year: 2026,
                            school: 'CC',
                            major: 'Computer Science')
    end
    it 'check whether uni takes session value' do
        get :show, session: {uni: 'ss6167'}
        expect(session[:uni]).to eq('ss6167')
        input_uni = assigns(:uni)
        expect(input_uni).to eq('ss6167')
    end
    it 'user1 should have proper school (SEAS) requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:reqs)
        expect(school_reqs).to include('CHEM CC1403')
        expect(school_reqs).not_to include('HUMA CC1001')
    end
    it 'user1 should have proper major requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:maj_reqs)
        expect(school_reqs).to include('COMS W4115')
        expect(school_reqs).not_to include('MATH UN1102')
    end
    it 'user1 should have proper minor requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:min_reqs)
        expect(school_reqs).to include('ECON UN1105')
        expect(school_reqs).not_to include('COMS W1004')
    end
    it 'user2 should have proper school (CC) requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:reqs)
        expect(school_reqs).to include('HUMA CC1001')
        expect(school_reqs).not_to include('CHEM CC1403')
    end
    it 'user2 should have proper major requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:maj_reqs)
        expect(school_reqs).to include('MATH UN1102')
        expect(school_reqs).not_to include('COMS W4115')
    end
    it 'user2 should have proper minor requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:min_reqs)
        expect(school_reqs).to include('COMS W1004')
        expect(school_reqs).not_to include('ECON UN1105')
    end
    it 'user3 should have N/A major requirements' do
        get :show, session: {uni: 'ah2102'}
        school_reqs = assigns(:maj_reqs)
        expect(school_reqs).to eq('None left!')
    end
    it 'user3 should have N/A minor requirements' do
        get :show, session: {uni: 'ah2102'}
        school_reqs = assigns(:min_reqs)
        expect(school_reqs).to eq('NA')
    end
    it 'user4 should have N/A major requirements' do
        get :show, session: {uni: 'lc1902'}
        school_reqs = assigns(:maj_reqs)
        expect(school_reqs).to eq('None left!')
    end
    it 'user4 should have N/A minor requirements' do
        get :show, session: {uni: 'lc1902'}
        school_reqs = assigns(:min_reqs)
        expect(school_reqs).to eq('NA')
    end
    it 'user5 should have proper major requirements' do
        get :show, session: {uni: 'jy1203'}
        school_reqs = assigns(:maj_reqs)
        expect(school_reqs).to include('COMS W4115')
    end
    it 'user5 should have N/A minor requirements' do
        get :show, session: {uni: 'jy1203'}
        school_reqs = assigns(:min_reqs)
        expect(school_reqs).to eq('NA')
    end
    it 'redirect to home page if UNI is not found' do
        get :show, session: {uni: 'fadsjkl'}
        expect(response).to redirect_to root_path
        expect(flash[:notice]).to match(/User not found. Please sign up first./)
    end 
end