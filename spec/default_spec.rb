require 'chefspec'

describe 'chocolatey-wget::default' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'windows', 'version'=> '12.04')
    runner.converge('chocolatey-wget::default')
  end
    
  it 'should include the chocolatey-wget recipe by default' do
    expect(chef_run).to include_recipe 'chocolatey-wget::default'
  end

end
