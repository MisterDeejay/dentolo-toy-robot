require_relative 'robot_simulator_error'

class InvalidPositionError < RobotSimulatorError
  def initialize(message)
    super
  end
end
