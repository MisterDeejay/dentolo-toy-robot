require 'spec_helper'

describe Command do
  it_behaves_like 'a command' do
    let(:robot) { Robot.new }
    let(:command) { described_class.new(robot) }
  end
end
