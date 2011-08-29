require 'active_support/core_ext/module/attribute_accessors'

module JsTestGem

	mattr_accessor :custom_config
	@@custom_config = false

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

	def self.setup
		@@custom_config = true
		yield self
		require 'js_test_gem/engine'
	end

	require 'js_test_gem/engine' unless @@custom_config
end

