# frozen_string_literal: true

require_relative "spec_helper"

RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify("Doe", "Dimmadome", "Bryant", "Wade", "Curry")).to eq("Doe Dimmadome Bryant Wade Curry")
  end

  it "change the remaining characters with ellipsis based on max length" do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end

  it "replace the string with replacement string" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
    expect(Stringer.replacify("I can't do this", "doesn't exist in string", "can")).to eq("Error")
  end

  it "convert string to array" do
    expect(Stringer.tokenize("I love to code")).to eq(%w[I love to code])
  end

  it "remove substring from string" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
    expect(Stringer.removify("I'm not a developer", "doesn't exist in string")).to eq("Error")
  end
end
