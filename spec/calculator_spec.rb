# spec/calculator_spec.rb
require 'spec_helper'
require_relative '../lib/calculator'


RSpec.describe Calculator do
    describe "#add" do
        it "Expecting method function add" do
            expect(Calculator).to respond_to(:add)
        end
    end
end