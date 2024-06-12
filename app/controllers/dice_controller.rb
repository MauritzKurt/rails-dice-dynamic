class DiceController < ApplicationController
  def homepage
    render ({ :template => "templates/homepage" })
  end

  def flexible_sides
    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("number_of_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end

    render ({ :template => "templates/flexible" })
  end
end
