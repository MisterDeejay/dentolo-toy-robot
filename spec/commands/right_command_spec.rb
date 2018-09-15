require 'spec_helper'

describe RightCommand do
  it_behaves_like 'a command' do
    let(:robot) { Robot.new }
    let(:command) { RightCommand.new(robot) }

    context "robot is facing north" do
      before do
        robot.x_position = XPositionState.new(0)
        robot.y_position = YPositionState.new(0)
        robot.direction = NorthState.new
      end

      it "turns the robot to face east" do
        command.execute

        expect(robot.direction).to be_an_instance_of(EastState)
      end
    end

    context "robot is facing east" do
      before do
        robot.x_position = XPositionState.new(0)
        robot.y_position = YPositionState.new(0)
        robot.direction = EastState.new
      end

      it "turns the robot to face south" do
        command.execute

        expect(robot.direction).to be_an_instance_of(SouthState)
      end
    end

    context "robot is facing south" do
      before do
        robot.x_position = XPositionState.new(0)
        robot.y_position = YPositionState.new(0)
        robot.direction = SouthState.new
      end

      it "turns the robot to face west" do
        command.execute

        expect(robot.direction).to be_an_instance_of(WestState)
      end
    end

    context "robot is facing west" do
      before do
        robot.x_position = XPositionState.new(0)
        robot.y_position = YPositionState.new(0)
        robot.direction = WestState.new
      end

      it "turns the robot to face north" do
        command.execute

        expect(robot.direction).to be_an_instance_of(NorthState)
      end
    end
  end
end
