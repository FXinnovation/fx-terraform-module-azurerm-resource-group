#
# inspec_profile::azurerm-resource-group
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

###
# Input handling
###
name     = input('name')
location = input('location')
enabled  = input('enabled')

###
# Controls
###
control 'resource_group' do
  impact 1.0
  title  'Checks the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azure_resource_group(name: name) do
    it                        { should exist }
    it                        { should have_tags }
    its('location')           { should cmp location }
    its('provisioning_state') { should cmp 'Succeeded' }
    its('tags')               { should include 'Terraform' }
    its('Terraform_tag')      { should cmp 'true' }
  end if enabled

  describe azure_resource_group(name: name) do
    it { should_not exist }
  end unless enabled
end
