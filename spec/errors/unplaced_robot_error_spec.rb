require 'spec_helper'

describe UnplacedRobotError do
  it_behaves_like 'an error' do
    let!(:message) { UnplacedRobotError::MESSAGE }
    let(:error) { UnplacedRobotError.new }
  end
end
