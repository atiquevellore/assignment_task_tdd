# spec/calculator_spec.rb
require 'spec_helper'
require_relative '../lib/calculator'


RSpec.describe Calculator do
    describe "#add" do
        it "Expecting method function add" do
            expect(Calculator).to respond_to(:add)
        end

        it "Expecting method function add to return 0 when empty string is passed" do
            expect(Calculator.add("")).to eq(0)
        end

        it " Expecting method function to return 1 when 1 is passed" do
            expect(Calculator.add("1")).to eq(1)
        end
    end
end