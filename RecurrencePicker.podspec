#
# Be sure to run `pod lib lint RecurrencePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RecurrencePicker'
  s.version          = '0.2.2'
  s.summary          = 'An event recurrence rule picker similar to iOS system calendar.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An event recurrence rule picker similar to iOS system calendar.

RecurrencePicker supports 6 languages: English, Russian, Simplified Chinese, Traditional Chinese, Korean, Japanese.
                       DESC

    s.homepage         = 'https://github.com/petalvlad/RecurrencePicker'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'petalvlad@gmail.com' => 'petalvlad@gmail.com' }
    s.source           = { :git => 'https://github.com/petalvlad/RecurrencePicker.git', :tag => s.version.to_s }

    s.ios.deployment_target = '10.0'
    s.swift_version = '4.2'

    s.source_files = 'RecurrencePicker/Classes/**/*'
    s.resources = 'RecurrencePicker/**/*.{png,xib,strings,lproj}'
    s.resource_bundles = {
       'RecurrencePicker' => ['RecurrencePicker/**/*.{png,xib,strings,lproj,js}']
    }

end
