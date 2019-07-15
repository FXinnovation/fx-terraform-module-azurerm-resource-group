#
# inspec_profile::azurerm-aks
# controls::resource_groups
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

name_prefix = attribute(
  'name-prefix',
  description: 'Name prefix of the resource group you want to catch'
)

control 'resource_group' do
  impact 1.0
  title  'Check the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azurerm_resource_groups.where ( name.start_with?(name_prefix) ) do
    it { should exist }
  end
end
