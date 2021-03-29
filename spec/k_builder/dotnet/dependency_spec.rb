# frozen_string_literal: true

RSpec.describe KBuilder::Dotnet::Dependency do
  let(:subject) { described_class.new(name, type) }

  describe 'Initialize' do
    let(:name) { 'abc' }

    context 'when valid parameters' do
      context 'when type: :nuget' do
        let(:type) { :nuget }

        it { is_expected.to have_attributes(name: 'abc', type: :nuget) }
      end

      context 'when type: :reference' do
        let(:type) { :reference }

        it { is_expected.to have_attributes(name: 'abc', type: :reference) }
      end
    end

    context 'when invalid type' do
      let(:type) { :xyz }

      it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Unknown dependency type. Valid types: [:nuget, :reference]')}
    end
  end
end
