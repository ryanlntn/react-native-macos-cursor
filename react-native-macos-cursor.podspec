require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-macos-cursor"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :osx => "10.14" }
  s.source       = { :git => "https://github.com/ryanlntn/react-native-macos-cursor.git", :tag => "#{s.version}" }
  s.source_files = "apple/**/*.{h,m,mm}"

  s.dependency "React"
end