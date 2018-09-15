require 'spec_helper'

describe MoveCommand do
  it_behaves_like 'a command' do
    let(:board) { Board.new(5,5) }
    let(:robot) { Robot.new }
    let(:command) { MoveCommand.new(board, robot) }

    context "robot is facing north" do
      let(:direction) { NorthState.new }
      before{ robot.direction = direction }

      context "and moving to a valid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(0) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "updates the robot's y position state by +1" do
          command.execute

          expect(robot.x_position.val).to eq(x_position.val)
          expect(robot.y_position.val).to eq(y_position.val + 1)
          expect(robot.direction).to eq(direction)
        end
      end
      context "and moving to an invalid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(5) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "raises an InvalidPositionError" do
          expect{ command.execute }.to raise_error(InvalidPositionError)
        end

        it "does not change the state of the robot" do
          begin
            command.execute
          rescue InvalidPositionError
            expect(robot.x_position.val).to eq(x_position.val)
            expect(robot.y_position.val).to eq(y_position.val)
            expect(robot.direction).to eq(direction)
          end
        end
      end
    end

    context "robot is facing east" do
      let(:direction) { EastState.new }
      before{ robot.direction = direction }

      context "and moving to a valid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(0) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "updates the robot's x position state by +1" do
          command.execute

          expect(robot.x_position.val).to eq(x_position.val + 1)
          expect(robot.y_position.val).to eq(y_position.val)
          expect(robot.direction).to eq(direction)
        end
      end
      context "and moving to an invalid position" do
        let(:x_position) { XPositionState.new(5) }
        let(:y_position) { YPositionState.new(0) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "raises an InvalidPositionError" do
          expect{ command.execute }.to raise_error(InvalidPositionError)
        end

        it "does not change the state of the robot" do
          begin
            command.execute
          rescue InvalidPositionError
            expect(robot.x_position.val).to eq(x_position.val)
            expect(robot.y_position.val).to eq(y_position.val)
            expect(robot.direction).to eq(direction)
          end
        end
      end
    end

    context "robot is facing south" do
      let(:direction) { SouthState.new }
      before{ robot.direction = direction }

      context "and moving to a valid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(1) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "updates the robot's y position state by -1" do
          command.execute

          expect(robot.x_position.val).to eq(x_position.val)
          expect(robot.y_position.val).to eq(y_position.val - 1)
          expect(robot.direction).to eq(direction)
        end
      end
      context "and moving to an invalid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(0) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "raises an InvalidPositionError" do
          expect{ command.execute }.to raise_error(InvalidPositionError)
        end

        it "does not change the state of the robot" do
          begin
            command.execute
          rescue InvalidPositionError
            expect(robot.x_position.val).to eq(x_position.val)
            expect(robot.y_position.val).to eq(y_position.val)
            expect(robot.direction).to eq(direction)
          end
        end
      end
    end

    context "robot is facing west" do
      let(:direction) { WestState.new }
      before{ robot.direction = direction }

      context "and moving to a valid position" do
        let(:x_position) { XPositionState.new(1) }
        let(:y_position) { YPositionState.new(1) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "updates the robot's y position state by -1" do
          command.execute

          expect(robot.x_position.val).to eq(x_position.val - 1)
          expect(robot.y_position.val).to eq(y_position.val)
          expect(robot.direction).to eq(direction)
        end
      end
      context "and moving to an invalid position" do
        let(:x_position) { XPositionState.new(0) }
        let(:y_position) { YPositionState.new(0) }
        before do
          robot.x_position = x_position
          robot.y_position = y_position
        end

        it "raises an InvalidPositionError" do
          expect{ command.execute }.to raise_error(InvalidPositionError)
        end

        it "does not change the state of the robot" do
          begin
            command.execute
          rescue InvalidPositionError
            expect(robot.x_position.val).to eq(x_position.val)
            expect(robot.y_position.val).to eq(y_position.val)
            expect(robot.direction).to eq(direction)
          end
        end
      end
    end
  end
end
