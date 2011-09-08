require 'spec_helper'

describe TestsHelper do
  describe "javascript_include_multiple" do

    it "should create a single script tag if passed a string" do
      javascript_include_multiple( 'application' ).should include( 'script src="/javascripts/application.js"' )
    end

    it "should create multiple script tags if given an array" do
      output = javascript_include_multiple %w(lib application)
      output.should include( 'script src="/javascripts/lib.js"' )
      output.should include( 'script src="/javascripts/application.js"' )
    end

  end
end
