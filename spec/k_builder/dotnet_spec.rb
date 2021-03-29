# frozen_string_literal: true

RSpec.describe KBuilder::Dotnet do
  it 'has a version number' do
    expect(KBuilder::Dotnet::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise KBuilder::Dotnet::Error, 'some message' }
      .to raise_error('some message')
  end
end
