require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTAppleHealthKit"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  A React Native package for interacting with Apple HealthKit
                   DESC
  s.homepage     = "https://github.com/mazenchami/rn-apple-healthkit"
  s.license      = "MIT"
  s.author      = { "Mazen Chami" => "mazenchami@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/mazenchami/rn-apple-healthkit", :tag => "#{s.version}" }

  s.source_files = "RCTAppleHealthKit/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"

end
