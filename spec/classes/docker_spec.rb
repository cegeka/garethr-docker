#!/usr/bin/env rspec

require 'spec_helper'

describe 'docker' do
  it { should contain_class 'docker' }
end
