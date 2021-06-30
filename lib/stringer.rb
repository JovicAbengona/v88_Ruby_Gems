# frozen_string_literal: true

require_relative "stringer/version"

# Stringer methods
module Stringer
  class Error < StandardError; end

  def self.spacify(*strings)
    result = ""
    strings.each do |string|
      result += strings.at(0) == string ? string : " #{string}"
    end
    result
  end

  def self.minify(string, max_length, counter = 1, result = "")
    string.chars.each do |char|
      if counter > max_length
        string.chars.length > max_length ? result += "..." : nil
        break
      end
      result += char
      counter += 1
    end
    result
  end

  def self.replacify(string, string_to_replace, string_replacement)
    if string.include? string_to_replace
      string.sub(string_to_replace, string_replacement)
    else
      "Error"
    end
  end

  def self.tokenize(string)
    string.split(" ")
  end

  def self.removify(string, string_to_remove)
    if string.include? string_to_remove
      string.sub("#{string_to_remove} ", "")
    else
      "Error"
    end
  end
end
