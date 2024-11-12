# -*- encoding: utf-8 -*-
require File.expand_path('../lib/instagram/version', __FILE__)

Gem::Specification.new do |s|
  # Updated development dependencies for modern tools and versions
  s.add_development_dependency('rake', '~> 13.0')
  s.add_development_dependency('rspec', '~> 3.12') # Latest RSpec for modern Rails
  s.add_development_dependency('webmock', '~> 3.18') # Updated for compatibility with Faraday 1.x and beyond
  s.add_development_dependency('bluecloth', '~> 2.2.0') # No update required

  # Updated runtime dependencies for Rails compatibility
  s.add_runtime_dependency('faraday', '>= 1.0', '< 3.0') # Updated Faraday
  s.add_runtime_dependency('faraday_middleware', '>= 1.0', '< 3.0') # Updated Faraday Middleware
  s.add_runtime_dependency('multi_json', '~> 1.15') # Compatible with Rails 5-8
  s.add_runtime_dependency('hashie', '~> 5.0') # Updated for modern Rails versions
  s.add_runtime_dependency('activesupport', '>= 5.0', '< 8.1') # Rails compatibility
  s.add_runtime_dependency('activemodel', '>= 5.0', '< 8.1') # Rails compatibility

  s.authors = ["Shayne Sweeney"]
  s.description = %q{A Ruby wrapper for the Instagram REST and Search APIs}
  s.post_install_message =<<eos
********************************************************************************

Instagram REST and Search APIs
------------------------------
Our developer site documents all the Instagram REST and Search APIs.
(http://instagram.com/developer)

Blog
----------------------------
The Developer Blog features news and important announcements about the Instagram Platform.
You will also find tutorials and best practices to help you build great platform integrations.
Make sure to subscribe to the RSS feed so you don't miss out on new posts:
(http://developers.instagram.com).

Community
----------------------
The Stack Overflow community is a great place to ask API-related questions or if you need help with your code.
Make sure to tag your questions with the Instagram tag to get fast answers from other fellow developers and members of the Instagram team.
(http://stackoverflow.com/questions/tagged/instagram/)

********************************************************************************
eos
  s.email = ['shayne@instagr.am']
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/Instagram/instagram-ruby-gem'
  s.name = 'instagram'
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 2.5.0') # Updated for modern RubyGems
  s.rubyforge_project = s.name
  s.summary = %q{Ruby wrapper for the Instagram API}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Instagram::VERSION.dup
end
