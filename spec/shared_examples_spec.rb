require 'apis'

describe WebAPI do
  it 'has a url' do
    api = WebAPI.new('http://localhost:3000')
    expect(api).to respond_to :url
  end

  it 'lists products' do
    api = WebAPI.new 'http://localhost:9292'
    expect(api.listProducts).to match [
      a_hash_including(
      name: an_instance_of(String),
      category: an_instance_of(String),
      price: an_instance_of(Float)
      )
    ]

  end
end
