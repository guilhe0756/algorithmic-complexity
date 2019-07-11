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
        expect(timer).to respond_to(:stop)
      end
    end
  end

  describe '#last' do
    context 'when given an array as input' do
      it 'looks for and returns the last element in the array' do
        data = [1, 2, 3, 4, 5]
        expect(timer.last(data)).to be 5

        data_2 = []
        (50_001..100_000).each { |x| data_2.push(x) }
        expect(timer.last(data_2)).to eq(100_000)
      end
    end
  end

  describe '#reverse' do
    context 'when given an array as input' do
      it 'reverses the position of each element' do
        data = [1, 2, 3, 4, 5]
        expect(timer.reverse(data)).to eq([5, 4, 3, 2, 1])

        data_2 = []
        (50_001..100_000).each { |x| data_2.push(x) }
        expect(timer.reverse(data_2)[-1]).to eq(50_001)
      end
    end
  end

  describe '#shuffle' do
    context 'when given an array as input' do
      it 'shuffles the position of each element' do
        data = [1, 2, 3, 4, 5]
        expect(timer.shuffle(data)).not_to eq([1, 2, 3, 4, 5])

        data_2 = []
        (50_001..100_000).each { |x| data_2.push(x) }
        expect(timer.shuffle(data_2)).not_to eq(data_2)
      end
    end
  end

end
