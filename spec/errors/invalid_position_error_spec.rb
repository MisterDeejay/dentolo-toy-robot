require 'spec_helper'

describe InvalidPositionError do
  it_behaves_like 'an error' do
    let!(:message) { "Invalid Position!" }
    let(:error) { InvalidPositionError.new(message) }
  end
end
