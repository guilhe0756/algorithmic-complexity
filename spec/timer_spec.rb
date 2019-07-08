require 'timer'

RSpec.describe Timer do

  subject(:timer) { described_class.new }

  describe "#run" do
    context "when tests begin" do
      it "creates a timestamp" do
        expect(timer).to respond_to(:run)
      end
    end
  end

  describe "#stop" do
    context "when tests finishg" do
      it "prints the results to stdoutput" do
        timer.run
        expect { timer.stop }.to output.to_stdout
      end
    end
  end

  describe "#timed_function" do
    context "receives a string with a function's name" do
      it "and prints it to stdouput" do
        expect { timer.timed_function("last") }.to output.to_stdout
      end
    end
  end

  describe '#last' do
    context 'looks for' do
      it 'and returns the last element in the array' do
        data = [1, 2, 3, 4, 5]
        expect(timer.last(data)).to be 5
      end
    end
  end

end
