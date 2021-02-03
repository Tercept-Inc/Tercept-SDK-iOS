# Copyright (c) 2021, Tercept (https://www.tercept.com/)
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Spec file format : https://guides.cocoapods.org/syntax/podspec.html#specification

Pod::Spec.new do |spec|
  spec.name         = 'TerceptSDK'
  spec.version      = '1.0.13'

  spec.author       = { "Gourav Chindlur" => "hello@tercept.com" }
  # spec.social_media_url = 'https://twitter.com/cocoapods'
  spec.license      = { :type => 'BSD2', :file => 'LICENSE' }
  spec.homepage     = 'http://tercept.com'

  spec.summary      = 'Tercept SDK for analytics'
  spec.description  = <<-DESC
                      This static iOS library is used for collecting the Performance Data Platform for Digital Publishers"
                      DESC

# spec.requires_arc        = true. # Default is true
  spec.static_framework    = true
  
  # spec.platform              = :ios, '12.0'
  # spec.ios.deployment_target = '12.0'
  # spec.resource              = 'icon.png'
  # spec.resources             = 'Resources/*.png'
  # spec.module_name           = 'TerceptSDK'. # By default will use spec.name


  # spec.source                = { :git => 'https://github.com/Tercept-Inc/Tercept-SDK-iOS.git', :tag => "#{spec.version}" }
  spec.source                  = { :git => 'https://github.com/Tercept-Inc/Tercept-SDK-iOS.git', :tag => spec.version.to_s }
  spec.source_files            = "./**/*"

  # spec.public_header_files   = "./*.h".  # If no public headers are specified then all the headers in source_files are considered public.

  spec.vendored_libraries      = 'libTerceptSDK.a'
  ## spec.libraries = 'c++'
  ## spec.frameworks = 'GLKit'

  
  # spec.resources             = ['TerceptSDK.swiftmodule/*', 'TerceptSDK.swiftmodule/Project/*']
  spec.resource_bundles.           = {
    'TerceptSDKswiftmodule'        => ['TerceptSDK.swiftmodule/*'],
    'TerceptSDKswiftmoduleProject' => ['TerceptSDK.swiftmodule/Project/*']
  }
  
  # spec.preserve_paths      = "/libTerceptSDK.a"
  # spec.preserve_paths      = "./**/*"
  
  
  # spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
 
  spec.xcconfig = {
                    'OTHER_LDFLAGS'                  => '-ObjC -lTerceptSDK'
                  }
 
    ##  'DEFINES_MODULE'                 => 'YES'
    ##  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' ,
    ##  'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/**' ,
    ##  'HEADER_SEARCH_PATHS' => '$(SRCROOT)/**' ,
    ##  'USER_HEADER_SEARCH_PATHS' => '$(SRCROOT)/**'
    ##  'IMPORT_PATHS' => '$(SRCROOT)/**' }
    ##  'IMPORT_PATHS' => '${PODS_ROOT}/TerceptSDK/**'

end
