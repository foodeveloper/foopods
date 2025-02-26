Pod::Spec.new do |s|
    s.name         = 'FooAuthenticationManager'
    s.version      = '1.0.20'
    s.source = { :git => 'git@github.com:foodeveloper/foo-authentication.git', :tag => "#{s.version}" }
    s.authors = {  "Vanessa El Khoury" => "vanessa.elkhoury@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.summary      = "FOO Authentication Manager"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.swift_versions = '5.0'
    s.subspec 'Framework' do |f|
        f.dependency "FooStringUtility"
        f.vendored_frameworks = 'xcframework/FooAuthenticationManager.xcframework'
    end
end
