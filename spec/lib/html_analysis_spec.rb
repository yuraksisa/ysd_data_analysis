require 'spec_helper'
describe HTMLAnalysis do
	
  let(:body) do

   <<-BEGIN
     <body>
       <div>
          <p><a href="URL">hi</a>como va</p>
       </div>
       <h3>TITULO</h3>
     </body>
   BEGIN

  end

  describe "#plain_text" do

    subject { HTMLAnalysis.new(body).plain_text.strip }
    it { should == "hi como va TITULO"}

  end

end