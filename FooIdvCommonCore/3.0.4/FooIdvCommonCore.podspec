Pod::Spec.new do |s|
  s.name = 'FooIdvCommonCore'
  s.version = '3.0.4'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvCommonCore.git', :tag => "#{s.version}" }
  s.authors            = {  "Xing" => "charbel.hassrouny@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv UI"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "FooDFCore"
    f.vendored_frameworks = 'xcframework/FooIdvCommonCore.xcframework'
 end
end
