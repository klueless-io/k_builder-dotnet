# frozen_string_literal: true

RSpec.describe KBuilder::Dotnet::Dependency do
  let(:subject) { described_class.new(name, type) }
  let(:name) { 'abc' }
  let(:type) { :nuget }

  describe 'Initialize' do
    context 'with invalid name' do

      context 'nil' do
        let(:name) { nil }
        it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Name is required')}
      end
      context 'blank' do
        let(:name) { '' }
        it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Name is required')}
      end
    end

    context 'when name is valid' do
      context 'when name is a symbol' do
        let(:name) { :abc }

        context 'when name is a string' do
          let(:name) { 'abc' }
          it { is_expected.to have_attributes(name: 'abc', type: :nuget) }
        end

        context 'with type: :nuget' do
          let(:type) { :nuget }

          it { is_expected.to have_attributes(name: :abc, type: :nuget) }
        end

        context 'with type: :reference' do
          let(:type) { :reference }

          it { is_expected.to have_attributes(name: :abc, type: :reference) }
        end

        context 'when given an invalid type' do
          let(:type) { :xyz }

          it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Unknown dependency type. Valid types: [:nuget, :reference]')}
        end
      end
    end
  end
end
