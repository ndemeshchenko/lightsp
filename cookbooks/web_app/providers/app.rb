use_inline_resources

action :install do
  converge_by("Install #{@new_resource}") do
    git_client 'default' do
      action :install
    end
    install_app
  end
end

def install_app
  source_path = @new_resource.source
  destination_dir = @new_resource.destination

  directory destination_dir do
    recursive true
  end

  git destination_dir do
    repository source_path
    revision 'master'
    action :sync
  end

end
