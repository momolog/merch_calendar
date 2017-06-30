require "spec_helper"

RSpec.describe MerchCalendar::FiscalYearCalendar do
  describe "#weeks_in_year" do
    it "returns 53 for a leap year - 2013" do
      expect(subject.weeks_in_year(2013)).to eq 53
    end

    it "returns 52 for a normal year" do
      expect(subject.weeks_in_year(2014)).to eq 52
    end

    it "returns 52 for a normal year" do
      expect(subject.weeks_in_year(2015)).to eq 52
    end

    it "returns 52 for a normal year" do
      expect(subject.weeks_in_year(2016)).to eq 52
    end

    it "returns 52 for a normal year" do
      expect(subject.weeks_in_year(2017)).to eq 52
    end

    it "returns 53 for a leap year - 2018" do
      expect(subject.weeks_in_year(2018)).to eq 53
    end

    it "returns 52 for a normal year" do
      expect(subject.weeks_in_year(2019)).to eq 52
    end
  end

  describe "#start_of_week" do
    it "returns the correct date for 2017-1-1 (2017-Aug-wk1)" do
      expect(subject.start_of_week(2017, 1, 1)).to eq Date.new(2016, 7, 31)
    end

    it "returns the correct Date for 2018-1-1 (2018-Aug-wk1)" do
      expect(subject.start_of_week(2018, 1, 1)).to eq Date.new(2017, 7, 30)
    end

    it "returns the correct Date for 2019-1-1 (2019-Aug-wk1)" do
      expect(subject.start_of_week(2019, 1, 1)).to eq Date.new(2018, 8, 5)
    end
  end

  describe "#end_of_week" do
    it "returns the correct date for 2017-6-1 (2017-Jan-wk1)" do
      expect(subject.end_of_week(2017, 6, 1)).to eq Date.new(2017, 1, 7)
    end

    it "returns the correct Date for 2018-6-5 (2018-Jan-wk5)" do
      expect(subject.end_of_week(2018, 6, 5)).to eq Date.new(2018, 2, 3)
    end

    it "returns the correct Date for 2019-10-3 (2019-May-wk3)" do
      expect(subject.end_of_week(2019, 10, 3)).to eq Date.new(2019, 5, 25)
    end
  end

  describe "#start_of_month" do
    it "returns the correct date for 2018-1 AKA 2018-Aug" do
      expect(subject.start_of_month(2018, 1)).to eq Date.new(2017, 7, 30)
    end

    it "returns the correct date for 2019-1 AKA 2019-Aug" do
      expect(subject.start_of_month(2019, 1)).to eq Date.new(2018, 8, 5)
    end
  end

  describe "#end_of_month" do
    it "returns the correct date for 2018-1 AKA 2018-Aug" do
      expect(subject.end_of_month(2018, 1)).to eq Date.new(2017, 8, 26)
    end

    it "returns the correct date for 2019-1 AKA 2019-Aug" do
      expect(subject.end_of_month(2019, 1)).to eq Date.new(2018, 9, 1)
    end
  end

  describe "#start_of_quarter" do
    it "returns the correct date for 2018-Q1" do
      expect(subject.start_of_quarter(2018, 1)).to eq Date.new(2017, 7, 30)
    end

    it "returns the correct date for 2018-Q4" do
      expect(subject.start_of_quarter(2018, 4)).to eq Date.new(2018, 5, 6)
    end

    it "returns the correct date for 2019-Q1" do
      expect(subject.start_of_quarter(2019, 1)).to eq Date.new(2018, 8, 5)
    end
  end

  describe "#end_of_quarter" do
    it "returns the correct date for 2018-Q1" do
      expect(subject.end_of_quarter(2018, 1)).to eq Date.new(2017, 10, 28)
    end

    it "returns the correct date for 2018-Q4" do
      expect(subject.end_of_quarter(2018, 4)).to eq Date.new(2018, 8, 4)
    end

    it "returns the correct date for 2019-Q1" do
      expect(subject.end_of_quarter(2019, 1)).to eq Date.new(2018, 11, 3)
    end
  end

  describe "#start_of_year" do
    it "returns the correct date for 2018" do
      expect(subject.start_of_year(2018)).to eq Date.new(2017, 7, 30)
    end

    it "returns the correct date for 2019" do
      expect(subject.start_of_year(2019)).to eq Date.new(2018, 8, 5)
    end
  end

  describe "#end_of_year" do
    it "returns the correct date for 2017" do
      expect(subject.end_of_year(2017)).to eq Date.new(2017, 7, 29)
    end

    it "returns the correct date for 2018" do
      expect(subject.end_of_year(2018)).to eq Date.new(2018, 8, 4)
    end

    it "returns the correct date for 2019" do
      expect(subject.end_of_year(2019)).to eq Date.new(2019, 8, 3)
    end
  end
end
