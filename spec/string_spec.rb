
describe String do
  describe "#empty?" do
    
    context "when the string contains no characters" do
      it "should return true" do
        subject.should be_empty
      end
    end
    
    context "when the string contains whitespace characters" do
      let(:subject) { " \n  " }
      
      it "should return false" do
        subject.should_not be_empty
      end
    end
    
    context "when it contains any characters" do

      let(:subject) { " String String Badda Bing! " }

      it "should return false" do
        subject.should_not be_empty
      end
    end
    
  end
end