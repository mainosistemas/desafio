require "rails_helper"

describe Blog do
  it "does not allow multiple blogs to have the same slug" do
    taken_slug = FactoryBot.create(:blog, slug: "myblog")

    repeated_slug = FactoryBot.build(:blog, slug: "myblog")

    expect(repeated_slug).to be_invalid
  end
end