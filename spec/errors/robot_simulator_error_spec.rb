require 'spec_helper'

describe RobotSimulatorError do
  it_behaves_like 'an error' do
    let(:message) { "Robot Sim Error" }
    let(:error) { RobotSimulatorError.new(message) }
  end
end
