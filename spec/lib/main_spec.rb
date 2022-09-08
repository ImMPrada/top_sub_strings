require './spec/spec_helper'

describe 'lib/main' do
  describe 'substrings' do
    let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }
    let(:test_text1) { 'no matches' }
    let(:test_text2) { "Howdy partner, sit down! How's it gogoinggo?" }
    let(:test_text2_result) do
      {
        'down' => 1,
        'go' => 3,
        'going' => 1,
        'how' => 2,
        'howdy' => 1,
        'it' => 2,
        'i' => 3,
        'own' => 1,
        'part' => 1,
        'partner' => 1,
        'sit' => 1
      }
    end

    it 'returns a Hash class response' do
      expect(substrings(test_text1, dictionary).class).to eq(Hash)
    end

    it 'returns empty hash when no matches' do
      expect(substrings(test_text1, dictionary)).to eq({})
    end

    it 'returns right answer (Odin project test)' do
      expect(substrings(test_text2, dictionary)).to eq(test_text2_result)
    end
  end
end
