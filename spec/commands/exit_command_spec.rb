require 'spec_helper'

describe ExitCommand do
  let(:command) { ExitCommand.new }

  describe "#execute" do
    it "raises an ExitCommandError" do
      expect{ command.execute }.to raise_error(ExitCommandError)
    end
  end
end
