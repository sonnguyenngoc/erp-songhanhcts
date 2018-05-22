$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/songhanhcts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_songhanhcts"
  s.version     = Erp::Songhanhcts::VERSION
  s.authors     = ["Nguyễn Ngọc Sơn",
                   "Nguyễn Tôn Hùng"]
  s.email       = ["sonnn@hoangkhang.com.vn",
                   "hungnt@hoangkhang.com.vn"]
  s.homepage    = "http://songhanhcts.com/"
  s.summary     = "Song Hành CTS - Công Ty TNHH SX TM DV Tư Vấn Song Hành CTS."
  s.description = "Song Hành CTS - Công Ty TNHH SX TM DV Tư Vấn Song Hành CTS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.1.6"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end
