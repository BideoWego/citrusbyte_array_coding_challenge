require "./lib/array.rb"

describe Array do
  subject { [[1, 2, [3]], 4] }
  let(:answer) { [1, 2, 3, 4] }

  describe "#my_flatten" do
    it "flattens an array of integers" do
      expect(subject.my_flatten).to eq(answer)
    end

    it "returns a new array" do
      expect(subject.object_id).to_not eq(answer.object_id)
    end
  end

  describe "#my_flatten!" do
    it "flattens an array of integers" do
      expect(subject.my_flatten!).to eq(answer)
    end

    it "returns the same array" do
      expect(subject.my_flatten!.object_id).to eq(subject.object_id)
    end
  end
end
