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
    context "when tests finish" do
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
    context 'when given an array as input' do
      it 'looks for and returns the last element in the array' do
        data = [1, 2, 3, 4, 5]
        expect(timer.last(data)).to be 5
      end
    end
  end

  describe '#reverse' do
    context 'when given an array as input' do
      it 'reverses the position of each element' do
        data = [1, 2, 3, 4, 5]
        expect(timer.reverse(data)).to eq([5, 4, 3, 2, 1])

        data_2 = []
        (50001..100000).each { |x| data_2.push(x)}
        expect(timer.reverse(data_2)[-1]).to eq(50001)
      end
    end
  end

end
