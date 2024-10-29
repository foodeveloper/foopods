Pod::Spec.new do |s|
    s.name         = "FooAuthenticationManagerFramework"
    s.version      = '1.0.13'
    s.source = { :git => 'git@github.com:foodeveloper/foo-authentication.git', :tag => "#{s.version}", :submodules => true }
    s.authors = {  "Vanessa El Khoury" => "vanessa.elkhoury@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.summary      = "FOO Authentication Manager"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.swift_version = '5'
    s.subspec 'Framework' do |f|
        f.dependency "FooStringUtilityFramework"
        f.vendored_frameworks = 'xcframework/FooAuthenticationManager.xcframework'
    end
end
