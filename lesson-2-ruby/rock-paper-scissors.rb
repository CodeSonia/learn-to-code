# frozen_string_literal: true
​
require "bundler/inline"
​
gemfile(true) do
  source "https://rubygems.org"
​
  git_source(:github) { |repo| "https://github.com/#{repo}.git" }
  gem "minitest"
end
​
require "minitest/autorun"
require "minitest/spec"
​
#==================================================
​
class RockPaperScissors
  def play(player1, player2)
    rules = {
      "rock" => ["scissors"],
      "paper" =>["rock"],
      "scissors" => ["paper"]
    }
​
    if rules[player1].include?(player2)
      player1
    elsif rules[player2].include?(player1)
      player2
    else
      "draw"
    end
  end
end
​
describe RockPaperScissors do
  before do
    @rps = RockPaperScissors.new
  end
​
  describe "when I create a new instance" do
    it "is not nil" do
      refute_nil(@rps)
    end
  end
​
  describe "player 1 wins" do
    describe "when they give scissors" do
      it "beats paper" do
        assert_equal @rps.play("scissors", "paper"), "scissors"
      end
    end
​
    describe "when they give paper" do
      it "beats rock" do
        assert_equal @rps.play("paper", "rock"), "paper"
      end
    end
​
    describe "when they give rock" do
      it "beats scissors" do
        assert_equal @rps.play("rock", "scissors"), "rock"
      end
    end
  end
​
  describe "player 2 wins" do
    describe "when they give rock" do
      it "beats scissors" do
        assert_equal @rps.play("scissors", "rock"), "rock"
      end
    end
​
    describe "when they give paper" do
      it "beats rock" do
        assert_equal @rps.play("rock", "paper"), "paper"
      end
    end
​
    describe "when they give scissors" do
      it "beats paper" do
        assert_equal @rps.play("paper", "scissors"), "scissors"
      end
    end
  end
​
  describe "a draw" do
    describe "rock" do
      it "is a draw if both give rock" do
        assert_equal @rps.play("rock", "rock"), "draw"
      end
    end
​
    describe "scissors" do
      it "is a draw if both give scissors" do
        assert_equal @rps.play("scissors", "scissors"), "draw"
      end
    end
​
    describe "paper" do
      it "is a draw if both give paper" do
        assert_equal @rps.play("paper", "paper"), "draw"
      end
    end
  end
end