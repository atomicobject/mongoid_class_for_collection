# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_class_for_collection/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_class_for_collection"
  s.version     = MongoidClassForCollection::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Shawn Anderson", "Sivabudh Umpudh"]
  s.email       = ["shawn42@gmail.com", "siva@atomicobject.com"]
  s.homepage    = "http://rubygems.org/gems/mongoid_class_for_collection"
  s.summary     = %q{Makes migrations more flexible by creating dynamic classes for you to use}
  s.description = %q{Makes migrations more flexible by creating dynamic classes for you to use with mongoid_rails_migrations gem.}

  s.rubyforge_project = "mongoid_class_for_collection"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
