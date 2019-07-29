#
# inspec_profile::azurerm-resource-group
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

###
# Attributes handling
###
name_prefix  = input('name_prefix')
location     = input('location')
enabled      = input('enabled')

###
# Controls
###
control 'resource_group' do
  impact 1.0
  title  'Check the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azurerm_resource_groups.where { name.start_with?(name_prefix) } do
    it { should exist }
  end if enabled

  describe azurerm_resource_groups.where { name.start_with?(name_prefix) } do
    it { should_not exist }
  end unless enabled
end
