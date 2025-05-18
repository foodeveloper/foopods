Pod::Spec.new do |s|
   
    s.name = 'FooEBankingCheques'
    s.version = '2.0.0'
    s.summary = "Foo EBanking Cheques"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }    
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-ebanking-cheques.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooEBankingCheques.xcframework'
        f.dependency "FooEBankingAccounts"
        f.dependency "FooConsents"
        f.dependency "FooAddress"
    end
end
