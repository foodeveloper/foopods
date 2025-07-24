Pod::Spec.new do |s|
    s.name = 'FooR2P'
    s.version = '1.0.13-ompay'
    s.summary = "Foo R2P"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/Foo-R2P.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooR2P.xcframework'
        f.dependency "FooYeepalCoreUI"
    end
end
