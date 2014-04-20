class ArduinoController < ApplicationController

before_filter :authorize, only: [:new]
before_filter :set_up_servo

# These are all functions that are not representative of our final controller methods
# All of these methods are here to show that 'Arduinos' can be created and controlled by 
# Calling methods on them.
# To "get started" visit: https://github.com/austinbv/dino
# Also please take a look at the config folder, be aware of "DinoRails"
  def index

    @led
    @servo

  end

  def up

# The following methods on instances of 'servo' are all the same.  They will loop through positions on 

    for i in 1..5
    @servo.position = i
    p i
    sleep 0.009 
    end

    redirect_to root_path

  end

  def down

    for i in 1..50
    @servo.position = i
    p i
    sleep 0.009 
    end

    redirect_to root_path

  end

  def left

    for i in 1..30
    @servo.position = i
    p i
    sleep 0.009 
    end

    redirect_to root_path

  end

  def right

    for i in 1..22
    @servo.position = i
    p i
    sleep 0.009 
    end

    redirect_to root_path

  end

  def on
    @led.on
    redirect_to root_path
  end

  def off
    @led.off
    redirect_to root_path

  end

  def set_up_servo
    @servo = Dino::Components::Servo.new(pin: 9, board: DinoRails::Application.config.board)
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
  end

end
