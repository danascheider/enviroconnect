FactoryGirl.define do
  factory :organization do
    sequence(:name) do |n|
      "Organization #{n}"
    end

    factory :nonprofit_organization do
      type 'NonprofitOrganization'
      sequence(:name) {|n| "Nonprofit Organization #{n}" }
    end
  end
end
