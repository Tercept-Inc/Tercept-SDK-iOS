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

Pod::Spec.new do |spec|
  spec.name         = "TerceptSDK"
  spec.version      = "1.0.6"
  spec.summary      = "Tercept SDK for analytics"
  spec.description  = "This static iOS library is used for collecting the Performance Data Platform for Digital Publishers"
  spec.homepage     = "http://tercept.com"
  # spec.resource   = "icon.png"
  # spec.resources  = "Resources/*.png"

  spec.license      = "BSD 2-Clause Simplified License"
  spec.author       = { "Gourav Chindlur" => "hello@tercept.com" }
  
  spec.module_name           = "TerceptSDK"
  spec.platform              = :ios, "12.0"
  spec.ios.deployment_target = "12.0"

  spec.source              = { :git => "https://github.com/Tercept-Inc/Tercept-SDK-iOS.git", :tag => "#{spec.version}" }
  spec.source_files        = "\*"

  # spec.preserve_paths      = "\libTerceptSDK.a"
  spec.preserve_paths      = "\"
  
  spec.public_header_files = "\*.h"
  spec.vendored_libraries  = "\libTerceptSDK.a"

  spec.requires_arc        = true
  spec.static_framework    = true
  
  ## spec.libraries = 'c++'
  ## spec.frameworks = 'GLKit'

  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
 
  spec.xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' ,
                    'OTHER_LDFLAGS'                  => '-ObjC -lTerceptSDK' } 
    
    ##  'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/**' ,
    ## , 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/**' }
  
end
