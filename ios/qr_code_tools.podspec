#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'qr_code_tools'
  s.version          = '0.1.0'
  s.summary          = 'A Flutter plugin for decoding QR codes on iOS.'
  s.description      = <<-DESC
This Flutter plugin provides functionality to decode QR codes on iOS devices.
                       DESC
  s.homepage         = 'https://github.com/genss333/qr_code_tools.git'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.authors          = { 'Genss333' => 'genss333@example.com' }
  s.source           = { :git => 'https://github.com/genss333/qr_code_tools.git', :tag => s.version.to_s }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  s.platform         = :ios, '8.0'

  # Flutter.framework does not contain an i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version    = '5.0'
end