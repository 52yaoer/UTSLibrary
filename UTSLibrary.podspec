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

  # 声明所有 vendored frameworks，Library.framework 依赖 Libbox.framework
  spec.vendored_frameworks = 'Framework/Library.framework', 'Framework/Libbox.framework'

  # 确保 frameworks 正确链接
  spec.frameworks = 'Foundation'

  # 配置 framework 搜索路径
  spec.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/UTSLibrary/Framework"',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks @loader_path/Frameworks',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }

  # 用户项目配置
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }

end
