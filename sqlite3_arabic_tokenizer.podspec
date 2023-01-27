#
# Be sure to run `pod lib lint sqlite3_arabic_tokenizer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sqlite3_arabic_tokenizer'
  s.version          = '0.0.2'
  s.summary          = 'sqlite3_arabic_tokenizer is a FTS5 extension to tokenizer arabic thus removing diacritics'

  s.description      = <<-DESC
  sqlite3_arabic_tokenizer is a FTS5 extension to tokenizer arabic thus removing diacritics. It will remove diacritics from arabic word so that arabic can be searched with or without diacritics. It is just a native c library wrapped in a framework.
                       DESC

  s.homepage         = 'https://github.com/GreentechApps/sqlite3_arabic_tokenizer_pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shahriar Nasim Nafi' => 'shahriarnasim.nafi@gmail.com' }
  s.source           = { :git => 'https://github.com/GreentechApps/sqlite3_arabic_tokenizer_pod.git', :tag => s.version.to_s }
  s.prepare_command = <<-CMD
          cd sqlite3_arabic_tokenizer/Common/
  make sqlite3-arabic-tokenizer.c
  CMD

  s.ios.deployment_target  = '11.0'
  s.osx.deployment_target  = '10.13'
  s.source_files = 'sqlite3_arabic_tokenizer/Common/*.{h,c}'
  s.requires_arc = false
  s.public_header_files = 'sqlite3_arabic_tokenizer/Common/sqlite3-arabic-tokenizer.h'

end
