# frozen_string_literal: true

RSpec.describe KBuilder::Dotnet::CodeBlock do
  subject { instance }

  let(:instance) { described_class.new(code, namespaces) }

  let(:address_api) { KBuilder::Dotnet::Dependency.new('AddressManagement.Api', :reference) }
  let(:order_api)   { KBuilder::Dotnet::Dependency.new('OrderManagement.Api'  , :reference) }

  let(:namespace1) { KBuilder::Dotnet::Namespace.new('AddressManagement.Api.Actions', address_api) }
  let(:namespace2) { KBuilder::Dotnet::Namespace.new('AddressManagement.Api.Queries', address_api) }
  let(:namespace3) { KBuilder::Dotnet::Namespace.new('OrderManagement.Api.Actions', order_api) }

  let(:code_block) do
    <<~CSHARP
      public void SendOrder()
      {
        address_query = new AddressQuery();
        billing = address_query.First;

        address_action = new CreateAddressAction();
        delivery = address_action.Create("1 Blah St, Sydney, NSW, 2000");

        create_order = new CreateOrder();
        create_order.Create(billing.Address, delivery.Address);
      }
    CSHARP
  end

  let(:code) { code_block }

  let(:project_dependency) { KBuilder::Dotnet::Dependency.new('AddressManagement.Api', :reference) }

  let(:namespaces) { [namespace1, namespace2, namespace3] }

  describe 'Initialize' do
    context 'with invalid code' do
      context 'nil' do
        let(:code) { nil }
        it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Code cannot be nil') }
      end
    end

    context 'with valid code' do
      context 'empty code block' do
        let(:code) { '' }
        it { is_expected.to have_attributes(code: '') }
      end
      context 'line of code' do
        let(:code) { 'public void Method() {}' }
        it { is_expected.to have_attributes(code: 'public void Method() {}') }
      end
    end

    context 'with namespaces' do
      subject { instance.namespaces }
      it { is_expected.not_to be_empty }
    end

    context 'with no namespaces' do
      subject { instance.namespaces }
      let(:namespaces) { [] }
      it { is_expected.to be_empty }
    end
  end
end
