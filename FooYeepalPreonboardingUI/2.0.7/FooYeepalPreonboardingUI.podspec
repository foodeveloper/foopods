Pod::Spec.new do |s|
    s.name = 'FooYeepalPreonboardingUI'
    s.version = '2.0.7'
    s.summary = "Foo Yeepal Preonboarding UI"
   
    s.homepage = "http://foo.mobi"
    s.authors = {"Mireille"   => "mireille.khalifeh@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
   
    s.source = { :git => 'git@github.com:foodeveloper/foo-pre-onboarding-ui.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
   
    s.subspec 'Framework' do |d|
      d.vendored_frameworks = 'xcframework/FooYeepalPreonboardingUI.xcframework'
      d.dependency "FooPreOnboarding"
      d.dependency "FooYeepalCoreUI"
    end
end

