Pod::Spec.new do |s|
    s.name = "FooUIFramework"
    s.version = "1.0.4"
    s.summary = "Foo UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => "git@github.com:foodeveloper/fooui.git", :tag => "#{s.version}"}
    s.frameworks = ["UIKit"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true
   
    s.subspec 'Framework' do |f|
       f.vendored_frameworks  = 'xcframework/FooUI.xcframework'
    end
end
