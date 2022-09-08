require './spec/spec_helper'

describe 'lib/main' do
  describe 'substrings' do
    let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }
    let(:result) { substrings(text, dictionary) }

    describe 'when there are no matches' do
      let(:text) { 'no matches' }

      it 'returns a hash' do
        expect(result.class).to eq(Hash)
      end

      it 'returns an empty hash' do
        expect(result).to eq({})
      end
    end

    describe 'when there are matches' do
      let(:text) { "Howdy partner, sit down! How's it gogoinggo?" }
      let(:expected_matches) do
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

      it 'returns the right matches' do
        expect(result).to eq(expected_matches)
      end
    end
  end
end
