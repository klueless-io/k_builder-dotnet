# frozen_string_literal: true

RSpec.describe KBuilder::Dotnet::Namespace do
  let(:subject) { described_class.new(namespace, dependency) }
  let(:package_dependency) { KBuilder::Dotnet::Dependency.new('Microsoft.EntityFrameworkCore.Design', :nuget) }
  let(:project_dependency) { KBuilder::Dotnet::Dependency.new('CustomerManagement.Api', :reference) }

  let(:namespace) { 'CustomerManagement.Api.Models' }
  let(:dependency) { nil }

  describe 'Initialize' do
    context 'with invalid namespace' do
      context 'nil' do
        let(:namespace) { nil }
        it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Namespace is required') }
      end
      context 'blank' do
        let(:namespace) { '' }
        it { expect { subject }.to raise_error(KBuilder::Dotnet::Error, 'Namespace is required') }
      end
    end

    context 'when namespace is valid' do
      context 'when namespace is a symbol' do
        context 'when namespace is a symbol' do
          let(:namespace) { :abc }
          it { is_expected.to have_attributes(namespace: :abc) }
        end

        context 'when namespace is a string' do
          it { is_expected.to have_attributes(namespace: 'CustomerManagement.Api.Models') }
        end

        context 'with no dependency' do
          it { is_expected.to have_attributes(namespace: 'CustomerManagement.Api.Models', dependency: be_nil) }
        end

        context 'with dependency: :reference' do
          let(:dependency) { project_dependency }

          it { is_expected.to have_attributes(namespace: 'CustomerManagement.Api.Models', dependency: be_a(KBuilder::Dotnet::Dependency)) }
        end

        context 'with dependency: :reference' do
          let(:dependency) { package_dependency }

          it { is_expected.to have_attributes(namespace: 'CustomerManagement.Api.Models', dependency: be_a(KBuilder::Dotnet::Dependency)) }
        end
      end
    end
  end
end
