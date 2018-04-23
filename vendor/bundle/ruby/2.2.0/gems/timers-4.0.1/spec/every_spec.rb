
require 'spec_helper'

RSpec.describe Timers::Group do
  it "should fire several times" do
    result = []

    subject.every(0.7) { result << :a }
    subject.every(2.3) { result << :b }
    subject.every(1.3) { result << :c }
    subject.every(2.4) { result << :d }

    Timers::Wait.for(2.5) do |remaining|
      subject.wait if subject.wait_interval < remaining
    end

    expect(result).to be == [:a, :c, :a, :a, :b, :d]
  end
end
