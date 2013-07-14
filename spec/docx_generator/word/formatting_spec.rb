require 'spec_helper'

describe DocxGenerator::Word::Bold do
  it "should render a w:b element" do
    DocxGenerator::Word::Bold.new.to_s.should eq("<w:b />")
    DocxGenerator::Word::Bold.new(true).to_s.should eq("<w:b w:val=\"true\" />")
    DocxGenerator::Word::Bold.new(false).to_s.should eq("<w:b w:val=\"false\" />")
  end
end

describe DocxGenerator::Word::Italics do
  it "should render a w:i element" do
    DocxGenerator::Word::Italics.new.to_s.should eq("<w:i />")
    DocxGenerator::Word::Italics.new(true).to_s.should eq("<w:i w:val=\"true\" />")
    DocxGenerator::Word::Italics.new(false).to_s.should eq("<w:i w:val=\"false\" />")
  end
end

describe DocxGenerator::Word::Underline do
  it "should render a w:u element" do
    DocxGenerator::Word::Underline.new.to_s.should eq("<w:u w:val=\"single\" />")
    DocxGenerator::Word::Underline.new(style: "double").to_s.should eq("<w:u w:val=\"double\" />")
  end
end

describe DocxGenerator::Word::Size do
  it "should render a w:sz element" do
    DocxGenerator::Word::Size.new(20).to_s.should eq("<w:sz w:val=\"40\" />")
  end
end

describe DocxGenerator::Word::Alignment do
  it "should render a w:jc element" do
    DocxGenerator::Word::Alignment.new("center").to_s.should eq("<w:jc w:val=\"center\" />")
  end
end

describe DocxGenerator::Word::Spacing do
  it "should render a w:spacing element" do
    DocxGenerator::Word::Spacing.new(line: 1.15).to_s.should eq("<w:spacing w:line=\"276\" />")
    DocxGenerator::Word::Spacing.new(before: 12, after: 12, line: 1.15).to_s.should eq("<w:spacing w:before=\"240\" w:after=\"240\" w:line=\"276\" />")
  end
end

describe DocxGenerator::Word::VerticalAlign do
  it "should render a w:vertAlign element" do
    DocxGenerator::Word::VerticalAlign.new("superscript").to_s.should eq("<w:vertAlign w:val=\"superscript\" />")
  end
end

describe DocxGenerator::Word::CapitalLetters do
  it "should render a w:caps element" do
    DocxGenerator::Word::CapitalLetters.new.to_s.should eq("<w:caps />")
    DocxGenerator::Word::CapitalLetters.new(true).to_s.should eq("<w:caps w:val=\"true\" />")
    DocxGenerator::Word::CapitalLetters.new(false).to_s.should eq("<w:caps w:val=\"false\" />")
  end
end

describe DocxGenerator::Word::SmallCapitalLetters do
  it "should render a w:caps element" do
    DocxGenerator::Word::SmallCapitalLetters.new.to_s.should eq("<w:smallCaps />")
    DocxGenerator::Word::SmallCapitalLetters.new(true).to_s.should eq("<w:smallCaps w:val=\"true\" />")
    DocxGenerator::Word::SmallCapitalLetters.new(false).to_s.should eq("<w:smallCaps w:val=\"false\" />")
  end
end