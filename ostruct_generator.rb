require 'ostruct'

class Generator
  attr_reader :report

  def initialize(report)
    @report = report
  end

  def run
    report.to_csv
  end
end

#Notifier.new(Generator.new(good_report),
#             on_success: lambda { |r| puts "Send #{r} to boss@acme.co" },
#             on_failure: lambda { puts "Send email to ben@acme.co" }
#            ).tap do |n|
#              n.run
#            end

# so will this Notifier work without ever having a `class Notifier` definition?
# ok, now I see that Notifier is defined after the First-Class Values section
            #
            # book says it takes a Generator and a Hash
            # I only see that it takes a Generator
