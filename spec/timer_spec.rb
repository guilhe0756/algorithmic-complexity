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
end
