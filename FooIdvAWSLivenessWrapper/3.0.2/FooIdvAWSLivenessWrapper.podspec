Pod::Spec.new do |s|
  s.name = 'FooIdvAWSLivenessWrapper'
  s.version = '3.0.2'
  s.summary = "Foo Idv UI"
  
  s.homepage  = "http://foo.mobi"
  s.authors = {  "Xing" => "charbel.hassrouny@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
    
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvAWSLivenessWrapper.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "FooIdvCore"
    f.dependency "FooIdvCommonUI"
    f.vendored_frameworks = 'xcframework/FooIdvAWSLivenessWrapper.xcframework'
 end
end
