require 'rspec'
require 'kermicberks'
require 'fakefs/safe'

module KermicBerks
  describe CommandLine do
    subject { CommandLine }

    context "without unrar on the file system" do
      xit { should_not have_unrar }
    end

    context "with unrar on the file system" do
      it { should have_unrar }

      it "should contain the path to the unrar executable" do
        CommandLine.unrar.should == "/usr/local/bin/unrar"
      end
    end
  end
end
