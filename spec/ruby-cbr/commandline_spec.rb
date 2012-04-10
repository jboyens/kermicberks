require 'rspec'
require 'ruby-cbr'
require 'fakefs/safe'

module Ruby
	module Cbr
		describe CommandLine do
			before do
				FakeFS.activate!
			end

			after do
				FakeFS.deactivate!
			end

			context "without unrar on the file system" do
				it { should_not have_unrar }
			end

			context "with unrar on the file system" do
				before do
					FakeFS::FileSystem.add("/usr/local/bin/unrar", FakeFS::FakeFile.new)
				end

				it { should have_unrar }
			end
		end
	end
end
