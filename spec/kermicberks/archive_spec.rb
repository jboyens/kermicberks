require 'kermicberks'

module KermicBerks
  describe Archive do
    subject { Archive.new 'spec/fixtures/test_comic.cbr' }

    its(:file) { should == 'spec/fixtures/test_comic.cbr' }

    its(:ls) { should =~ %w[001.jpg 002.jpg 003.jpg] }
  end
end
