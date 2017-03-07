require "warmups"

describe "insertion_sort" do
  let(:sorted){ (0..10).to_a }
  let(:arr){ [0, 6, 9, 4, 5, 7, 8, 10, 3, 1, 2] }

  it "returns a sorted array" do
    insertion_sort(arr)
    expect(arr).to eq(sorted)
  end
end
