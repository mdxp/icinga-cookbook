require 'chefspec'

describe 'icinga::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'icinga::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
