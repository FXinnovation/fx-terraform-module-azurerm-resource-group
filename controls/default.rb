#
# inspec_profile::azurerm-aks
# controls::resource_groups
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

###
# Attributes handling
###
name_prefix  = attribute('name_prefix')
location     = attribute('location')

###
# Controls
###
control 'resource_group' do
  impact 1.0
  title  'Check the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azurerm_resource_groups.where { name.start_with?(name_prefix) } do
    it                   { should exist }
  end
end
