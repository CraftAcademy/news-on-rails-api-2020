require 'rails_helper'

RSpec.describe Article, type: :model do
  
  it 'should have a valid Factory' do
    expect(create(:article)).to be_valid
  end

  describe 'Database table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :lead }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :category }
    it { is_expected.to have_db_column :journalist_id }
    it { is_expected.to have_db_column :published }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :premium }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :lead }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_inclusion_of(:premium).in_array([true, false])}
  end
end
