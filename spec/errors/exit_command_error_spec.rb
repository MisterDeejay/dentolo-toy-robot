require 'spec_helper'

describe ExitCommandError do
  it_behaves_like 'an error' do
    let(:message) { ExitCommandError::MESSAGE }
    let(:error) { ExitCommandError.new }
  end
end
