#
# inspec_profile::azurerm-resource-group
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

###
# Controls
###
control 'resource_group' do
  impact 1.0
  title  'Check the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azurerm_resource_groups.where { name.start_with?(input('name_prefix')) } do
    it              { should exist }
    it              { should have_tags }
    its('location') { should cmp input('location') }
    its('tags')     { should include 'Terraform' }
  end if input('enabled')

  describe azurerm_resource_groups.where { name.start_with?(input('name_prefix')) } do
    it { should_not exist }
  end unless input('enabled')
end
