$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/songhanhcts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_songhanhcts"
  s.version     = Erp::Songhanhcts::VERSION
  s.authors     = ["Nguyen Ngoc Son",
                   "Nguyen Ton Hung"]
  s.email       = ["sonnn@hoangkhang.com.vn",
                   "hungnt@hoangkhang.com.vn"]
  s.homepage    = "http://songhanhcts.com/"
  s.summary     = "Song Hanh cts - Cong Ty TNHH SX TM DV Tu Van Song Hanh cts."
  s.description = "Song Hanh cts - Cong Ty TNHH SX TM DV Tu Van Song Hanh cts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
