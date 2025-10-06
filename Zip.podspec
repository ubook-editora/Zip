#
# Be sure to run `pod lib lint Zip.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Zip"
  s.version          = "2.2.0"
  s.summary          = "Zip and unzip files in Swift."
  s.swift_version    = "6.0"
  s.swift_versions   = ["4.2", "5.0", "5.1", "5.3", "6.0"]

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
                      A Swift framework for zipping and unzipping files. Simple and quick to use. Built on top of minizip.
                     DESC

  s.homepage         = "https://github.com/ubook-editora/Zip"
  s.license          = 'MIT'
  s.author           = { "Paulo Coutinho" => "paulocoutinhox@gmail.com" }
  s.source           = { :git => "https://github.com/ubook-editora/Zip.git", :tag => s.version.to_s}
  s.social_media_url   = "http://x.com/paulocoutinhox"

  s.ios.deployment_target = '13.0'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  s.osx.deployment_target = '11.0'
  
  s.source_files = 'Zip/*.{swift,h}', 'Zip/minizip/*.c', 'Zip/minizip/include/*.h'
  s.public_header_files = 'Zip/Zip.h'
  s.private_header_files = 'Zip/minizip/include/*.h'
  s.libraries = 'z'
  s.preserve_paths = 'Zip/minizip/module/module.modulemap'
  
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Zip/minizip/include',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Zip/minizip/module',
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Zip/minizip/include',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'DEFINES_MODULE' => 'YES',
    'USE_HEADERMAP' => 'NO'
  }
end
