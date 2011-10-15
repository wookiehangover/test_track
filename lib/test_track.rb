require 'active_support/core_ext/module/attribute_accessors'

module TestTrack

  mattr_accessor :jasmine_manifest
  @@jasmine_manifest = "jasmine"

  mattr_accessor :qunit_manifest
  @@qunit_manifest = "qunit"

  mattr_accessor :application_manifest
  @@application_manifest = "application"

  mattr_accessor :jasmine_path
  @@jasmine_path = "spec/javascripts"

  mattr_accessor :qunit_path
  @@qunit_path = "test/javascripts"

  mattr_accessor :include_sinon
  @@include_sinon = true

  def self.setup
    yield self
  end

end

require 'test_track/engine'

