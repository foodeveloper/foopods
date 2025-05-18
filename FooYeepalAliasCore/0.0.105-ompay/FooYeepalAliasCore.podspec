Pod::Spec.new do |s|
    
    s.name = 'FooYeepalAliasCore'
    s.version = '0.0.105-ompay'
    
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"
    
    s.summary = "Yeepal Alias Core"
    s.homepage = "http://foo.mobi"
    s.license = "MIT"
    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-alias-core.git', :tag => "#{s.version}" }
    
    s.swift_versions = '5.0'
    
    s.default_subspecs = 'Framework'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
#    s.static_framework = true
    
    s.subspec 'Framework' do |d|
        d.dependency 'FooYeepalCoreUI', '2.0.29-ompay'
        d.vendored_frameworks = 'xcframework/FooYeepalAliasCore.xcframework'
        d.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    end
end
