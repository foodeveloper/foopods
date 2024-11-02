Pod::Spec.new do |s|
    s.name         = "FooActionSheetPickerFramework"
    s.version      = "1.0.7"
    s.source = { :git => "git@github.com:foodeveloper/foo-action-sheet-picker.git", :tag => "#{s.version}", :submodules => true }
    s.authors = { "Sq" => "samer.marrash@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.summary      = "FOO ActionSheetPicker Wrapper"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |f|
        f.dependency "ActionSheetPicker-3.0"
        f.dependency "FooPickerManagerFramework"
        f.vendored_frameworks = 'xcframework/FooActionSheetPicker.xcframework'
    end
end
