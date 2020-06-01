World(Helper)

After '@realizar_logout' do
    #find('.dropdown-toggle').click
    #find("a[href='https://login.sabia.ufrn.br/sair/']").click
    verify.logoff
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
    scenario_name = scenario_name.delete(',', '')
    scenario_name = scenario_name.delete('(', '')
    scenario_name = scenario_name.delete(')', '')
    scenario_name = scenario_name.delete('#', '')

    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed')
    end
end