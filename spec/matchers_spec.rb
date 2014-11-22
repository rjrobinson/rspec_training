describe "Matchers" do
  it 'asserts on equality' do
    number = 3
    expect(number).to eq 3
  end

  it 'asserts on mathematical operators' do
    number = 5
    expect(number).to be >= 2
  end

  it 'asserts on matching a regular expression' do
    email = "jose@tuts.com"
    regular_expression = /^\w+@\w+\.[a-z]{2,4}$/

    expect(email).to match regular_expression
  end

  it 'asserts on types and classes' do
    object = 2.0 # Float

    expect(object).to be_a Float
  end

  it 'aasserts on thruthiness'do
    object = Class.new

    expect(object).to be_truthy
  end

  it 'expects errors'do
    expect do
      raise ArgumentError
    end.to raise_error ArgumentError
  end

  it 'expects throws'do
    expect {
      throw :oops
    }.to throw_symbol :oops
  end

  it 'asserts on predicates' do
    class A
      def good?
        true
      end
    end

    expect(A.new).to be_good
  end

  it 'asserts on collections' do
    list = [
      :one,
      :two,
      :three,
      :four
    ]

    expect(list).to include :four
    expect(list).to start_with [ :one ]
    expect(list).to end_with [ :four ]

  end

  it 'negates asserts' do
    expect(3).not_to be 5
  end
end
