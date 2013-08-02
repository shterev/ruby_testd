require '../spec_helper'

module Codebreaker
  describe Game do 
    describe "#start" do
      
      # before (:each) do
      #   output  = double('output').as_null_object
      #   game    = Game.new(output)
      # end

      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }

      it "sends a welcome message" do
        # Set Expectations
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        
        # Run the tested code
        game.start
      end

      it "prompts for the first guess" do
        output.should_recieve(:puts).with('Enter guess:')
        game.start
      end
    end
  end
end