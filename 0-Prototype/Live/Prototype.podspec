Pod::Spec.new do |spec|

  spec.name = 'Prototype'
  spec.version = '0.1.0'
  spec.summary = 'Framework description.'
  spec.homepage = 'https://framework.com'
  spec.author = { 'Framework Author' => "author@email.com" }
  spec.license = { :type => 'Private' }
  spec.source = { :git => 'https://framework-source-code.git',
                  :tag => spec.version.to_s }

  spec.ios.deployment_target = '11.0'
  spec.requires_arc = true

  spec.cocoapods_version = '>= 1.5'
  spec.swift_version = '5.0'

  spec.source_files = 'Prototype/**/*.{h,m,swift}'

  spec.resource_bundles = {
    'Prototype' => [
      'Prototype/**/*.xcassets',
      'Prototype/**/*.xib'
    ]
  }

  spec.resources = [
    'Prototype/**/*.strings'
  ]

  #spec.dependency 'Dependency', '~> 1.0.0'

end