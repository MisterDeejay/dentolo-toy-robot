require 'spec_helper'

describe CommandParserError do
  it_behaves_like 'an error' do
    let(:message) { CommandParserError::MESSAGE }
    let(:error) { CommandParserError.new }
  end
end
