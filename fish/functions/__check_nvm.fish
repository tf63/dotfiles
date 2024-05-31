function __check_nvm --on-variable PWD --description 'Do nvm stuff'
  if test -f .nvmrc
    set node_version (node -v)
    set node_version_target (cat .nvmrc)
    set nvmrc_node_version (nvm list | grep $node_version_target)

    if string match -q -- "*$node_version" $nvmrc_node_version
      # already current node version
      echo (set_color green)[Node.js $node_version (current) -- $nvmrc_node_version (.nvmrc)] (set_color normal) Already Node.js $nvmrc_node_version is current
    else if not set -q $nvmrc_node_version
      echo (set_color red)[Node.js $node_version (current) -- $nvmrc_node_version (.nvmrc)] (set_color normal) Node.js $nvmrc_node_version is not exist. Please install manually
    else
      echo (set_color blue)[Node.js $node_version (current) -- $nvmrc_node_version (.nvmrc)] (set_color normal) Node.js $nvmrc_node_version is exist. Switch version automatically
      nvm use $node_version_target
    end
  end
end
__check_nvm
