require 'timer'

RSpec.describe Timer do

  subject = Timer.new

  describe "#run" do
    context "prints a string" do
      it "to stoutput when tests start" do
        expect { subject.run }.to output.to_stdout
      end
    end
  end

  describe "#stop" do
    context "prints a string" do
      it "to stoutput when tests stop" do
        expect { subject.stop }.to output.to_stdout
      end
    end
  end

  describe "#function" do
    context "receives a string with a function's name" do
      it "and prints it to st" do
        expect { subject.timed_function("last") }.to output.to_stdout
      end
    end
  end

end
