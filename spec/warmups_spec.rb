require "warmups"

describe "sorting algorithms" do
  let(:sorted){ (0..10).to_a }
  let(:arr){ [0, 6, 9, 4, 5, 7, 8, 10, 3, 1, 2] }

  describe "insertion_sort" do
    it "returns a sorted array" do
      insertion_sort(arr)
      expect(arr).to eq(sorted)
    end
  end

  describe "bubble_sort" do
    it "returns a sorted array" do
      expect(bubble_sort(arr)).to eq(sorted)
    end
  end

  describe "merge_sort" do
    it "returns a sorted array" do
      expect(merge_sort(arr)).to eq(sorted)
    end
  end

  describe "quicksort" do
    it "sorts the array" do
      quicksort(arr, 0, arr.length - 1)
      expect(arr).to eq(sorted)
    end
  end

end
