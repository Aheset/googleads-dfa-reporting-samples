#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example illustrates how to list all user profiles

require_relative '../dfareporting_utils'

def get_userprofiles()
  # Authenticate and initialize API service.
  service = DfareportingUtils.get_service()

  # Get all user profiles.
  result = service.list_user_profiles()

  # Display results.
  result.items.each do |profile|
    puts 'User profile with ID %d and name "%s" was found for account %d.' %
        [profile.profile_id, profile.user_name, profile.account_id]
  end
end

if __FILE__ == $0
  get_userprofiles()
end
