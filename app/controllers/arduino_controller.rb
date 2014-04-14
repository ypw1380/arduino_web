class ArduinoController < ApplicationController

before_filter :set_up_servo

  def index

    @led
    @servo

  end

  def up

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
