require 'rails_helper'


RSpec.describe HarryService do
  context '#house_members' do
    it 'returns appropriate data' do
      service = HarryService.new

      results = service.house_members('Gryffindor')

      expect(results).to be_an(Array)
      expect(results.count).to eq(21)

      last = results.last

      expect(last).to have_attributes(name: 'Ronald Weasley')
      expect(last).to have_attributes(role: 'student')
      expect(last).to have_attributes(house: 'Gryffindor')
      expect(last).to have_attributes(patronus: 'jack russell terrier')
    end
  end
end
