
  Pod::Spec.new do |s|
    s.name = 'CapacitorFlashlight'
    s.version = '0.0.1'
    s.summary = 'Capacitor plugin for using the flashlight of your device'
    s.license = 'MIT'
    s.homepage = 'https://github.com/danielsogl/capacitor-flashlight'
    s.author = 'Daniel Sogl'
    s.source = { :git => 'https://github.com/danielsogl/capacitor-flashlight', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end