Pod::Spec.new do |s|

    s.name          = "FooPickerManagerFramework"
    s.version       = "1.0.1"
    s.source        = { :git => "git@github.com:foodeveloper/foo-picker-manager.git", :tag => "#{s.version}", :submodules => true }
    
    s.platform                  = :ios, "10.0"
    s.ios.deployment_target     = "10.0"
    s.authors                   = {  "Sq" => "samer.marrash@foo-solutions.com"}
    
    s.summary      = "FOO Picker Manager"
    s.homepage     = "http://foo.mobi"
    s.license      = "MIT"
  
    s.frameworks = ["Foundation", "UIKit"]
    s.static_framework = false
    
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'DEFINES_MODULE' => 'YES'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.ios.vendored_frameworks = 'FooPickerManager.framework'
    end
end
