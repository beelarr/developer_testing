require 'developer'

developer = Developer.new

describe 'Developer' do
  context 'if instance of developer exists' do
    it 'allows creation of developer' do
      expect (developer).instance_of?(Person)
    end
  end
  context 'when developer is initialized ' do
    it 'contains a description as a string' do
      expect(developer.description("This")).to eq("This")
    end
  end
  context 'when .code outputs' do
    it 'allows reading and writing' do
      expect(developer.code("code, code, code")).to eq("code, code, code")
    end
  end
  context 'when time to disconnect' do
    it "should respond to disconnect" do
      developer.should respond_to(:disconnect)
    end
  end
end