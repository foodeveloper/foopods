Pod::Spec.new do |s|
    
    s.name = 'FooYeepalAliasUI'
    s.version = '0.0.105-ompay'
    
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"
    
    s.summary = "Yeepal Alias UI"
    s.homepage = "http://foo.mobi"
    s.license = "MIT"
    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-alias-ui.git', :tag => "#{s.version}" }
    
    s.swift_versions = '5.0'
    
    s.default_subspecs = 'Framework'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
#    s.static_framework = true
    
    s.subspec 'Framework' do |d|
        d.dependency 'FooYeepalAliasCore', '0.0.105-ompay'
        d.vendored_frameworks = 'xcframework/FooYeepalAliasUI.xcframework'
        d.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    end
end

