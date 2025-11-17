Pod::Spec.new do |s|

    s.name = 'FooPFMWeb'
    s.version = '1.0.0'
    s.summary = "Foo PFM Web"
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi" }
    
    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/foo-pfm-web.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.dependency "FooYeepalCoreUI"
        f.vendored_frameworks = 'xcframework/FooPFMWeb.xcframework'
    end  
end
