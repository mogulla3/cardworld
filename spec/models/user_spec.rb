# frozen_string_literal: true
require 'rails_helper'

RSpec.describe(User) do
  describe '#name validation' do
    subject { user.valid? }

    context 'when name is empty' do
      let(:user) { User.new(age: 20, sex: 'male', premium: true) }

      it { is_expected.to eq false }
    end
  end
end
