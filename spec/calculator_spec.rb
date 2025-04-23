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

        it "Expecting method function to return 6 when 1,5 is passed" do
            expect(Calculator.add("1,5")).to eq(6)
        end

        it  "Expecting method to handle multiple numbers" do
            expect(Calculator.add("1,2,3,4,5,6,7,8,9,10,11")).to eq(66)
        end

        it "Expecting method to handle new line as delimiter" do
            expect(Calculator.add("1\n2,3")).to eq(6)
        end

        it "Expecting method to handle custom delimiter" do
            expect(Calculator.add("//;\n1;2")).to eq(3)
        end
    end
end