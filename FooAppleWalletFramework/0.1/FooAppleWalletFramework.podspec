Pod::Spec.new do |s|

    s.name = "FooAppleWalletFramework"
    s.version = "0.1"
    s.summary = "Foo Apple Wallet"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Xing"   => "charbel.hasrouni@foo.mobi", "Sq" => "samer.marrash@foo-solutions.com", "Sami" => "sami.sharaf@foo-solutions.com"}
    s.source = { :git => "git@github.com:foodeveloper/foo-apple-pay.git", :tag => "#{s.version}"}

    s.ios.deployment_target = "13.0"
    s.platform = :ios, "13.0"
    s.static_framework = true

    s.frameworks = ["PassKit"]
    s.swift_versions = '5.0'
    s.ios.vendored_frameworks = 'FooAppleWallet.xcframework'
end
