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
control 'resource_group_exists' do
  impact 1.0
  title  'Checks the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  only_if('module is disabled') do
    input('enabled')
  end

  describe azurerm_resource_groups.where(name: input('name')) do
    it { should exist }
  end
end

control 'resource_group_not_exists' do
  impact 1.0
  title  'Checks the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  only_if('module is enabled') do
    false == input('enabled')
  end

  describe azurerm_resource_groups.where(name: input('name')) do
    it { should_not exist }
  end
end
