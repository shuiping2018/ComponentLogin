#
#  Be sure to run `pod spec lint ComponentLogin_Category.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "ComponentLogin_Category"
  s.version      = "0.0.1"
  s.summary      = "ComponentLogin_Category."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   This is ComponentLogin_Category
                   DESC

  s.homepage     = "https://github.com/shuiping2018/ComponentLogin"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "wangshuiping" => "1294093906@qq.com" }
  # Or just: s.author    = "wangshuiping"
  # s.authors            = { "wangshuiping" => "1294093906@qq.com" }
  # s.social_media_url   = "http://twitter.com/wangshuiping"


  # s.platform     = :ios
   s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/shuiping2018/ComponentLogin.git", :tag => "#{s.version}" }


  s.source_files  = "ComponentLogin/ComponentLogin_Category/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  s.dependency "CTMediator"

end
