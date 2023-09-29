require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      article = build(:article) # Assuming you have a FactoryBot factory for Article
      expect(article).to be_valid
    end

    it "is not valid without a title" do
      article = build(:article, title: nil)
      expect(article).not_to be_valid
    end

    it "is not valid without content" do
      article = build(:article, content: nil)
      expect(article).not_to be_valid
    end

    it "is not valid without a slug" do
      article = build(:article, slug: nil)
      expect(article).not_to be_valid
    end
  end
end