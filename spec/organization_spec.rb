require 'spec_helper'
require 'rails_helper'

describe Organization do 
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:mission) }
  it { is_expected.to respond_to(:type) }
  it { is_expected.to respond_to(:phone) }
  it { is_expected.to respond_to(:fax) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:address_1) }
  it { is_expected.to respond_to(:address_2) }
  it { is_expected.to respond_to(:city) }
  it { is_expected.to respond_to(:state) }
  it { is_expected.to respond_to(:zip) }
end