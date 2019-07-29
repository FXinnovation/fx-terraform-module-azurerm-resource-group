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
  title  'Checks the azure resource group'
  tag    'azurerm'
  tag    'resource_group'

  describe azurerm_resource_groups.where(name: input('name')) do
    it                        { should exist }
    it                        { should have_tags }
    its('location')           { should cmp input('location') }
    its('provisioning_state') { should cmp 'Succeeded' }
    its('tags')               { should include 'Terraform' }
    its('Terraform_tag')      { should cmp 'true' }
  end if input('enabled')

  describe azurerm_resource_groups.where(name: input('name')) do
    it { should_not exist }
  end unless input('enabled')
end
