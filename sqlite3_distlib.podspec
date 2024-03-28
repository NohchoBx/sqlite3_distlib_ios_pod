#
# Be sure to run `pod lib lint sqlite3_distlib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sqlite3_distlib'
  s.version          = '0.1.0'
  s.summary          = 'sqlite3_distlib is an extension that allows to query based on the score of ressemblance given'

  s.description      = <<-DESC
  sqlite3_distlib is an extension that allows to query based on the score of ressemblance given
                       DESC

  s.homepage         = 'https://github.com/NohchoBx/sqlite3_distlib_ios_pod.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NohchoDev' => 'nohchodev@gmail.com' }
  s.source           = { :git => 'https://github.com/NohchoBx/sqlite3_distlib_ios_pod.git', :tag => s.version.to_s }
  s.prepare_command = <<-CMD
    cd sqlite3_distlib/Common/
    make RegistExt.cpp
  CMD

  s.ios.deployment_target  = '11.0'
  s.osx.deployment_target  = '10.13'
  s.source_files = 'sqlite3_distlib/Common/*.{h,cpp,hpp}'
  s.requires_arc = false
  s.public_header_files = 'sqlite3_distlib/Common/RegistExt.h'

end
