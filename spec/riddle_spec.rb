#!/usr/bin/env ruby

require 'rspec'
require 'riddle'

describe('Riddle') do
  it "stores a riddle question and answer" do
    riddle = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "human")
    expect(riddle.question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
    expect(riddle.answer).to(eq("human"))
  end

  describe("#guess?") do
    it "returns false if user's guess does not match the answer" do
      riddle = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "human")
      expect(riddle.guess?("tadpole")).to(eq(false))
    end

    it "returns true if user's guess matches the answer" do
      riddle = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "human")
      expect(riddle.guess?("human")).to(eq(true))
    end

    it "ignores case when checking user's guess" do
      riddle = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "human")
      expect(riddle.guess?("human")).to(eq(true))
    end
  end
end
