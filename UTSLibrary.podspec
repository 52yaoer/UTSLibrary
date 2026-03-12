Pod::Spec.new do |spec|

  spec.name         = "UTSLibrary"
  spec.version      = "1.0.0"
  spec.summary      = "UTSLibrary"
  spec.description  = <<-DESC
    Library。
                   DESC
  spec.homepage     = "https://gitee.com/tyousan_admin/UTSLibrary"
  
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "176142998" => "176142998@qq.com" }
  spec.platform     = :ios, "15.0"
  spec.ios.deployment_target = "15.0"
  spec.source       = { :git => "https://gitee.com/tyousan_admin/UTSLibrary.git", :tag => spec.version}

  spec.vendored_frameworks = 'Framework/Library.framework'
  
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }

end
