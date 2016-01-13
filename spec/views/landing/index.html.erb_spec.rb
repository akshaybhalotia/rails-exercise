require 'rails_helper'

RSpec.describe "landing/index.html.erb", type: :view do
  describe 'root or index' do
    
    before(:each) do
      render
    end
    
    it 'displays a form' do
      expect(rendered).to match /form/
    end

    it 'form has a from field' do
      expect(rendered).to match /from/
    end

    it 'form has a to field' do
      expect(rendered).to match /to/
    end

    it 'form has a date field' do
      expect(rendered).to match /date/
    end

    it 'form has a path selection field' do
      expect(rendered).to match /path/
    end

    it 'form has a path selection field' do
      expect(rendered).to match /Search/
    end
  end
end
