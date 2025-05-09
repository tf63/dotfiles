function fish_prompt
  printf '\n'(set_color $user_color)$USER(set_color $atto_color)'@'
  if test $SSH_TTY
    printf (set_color $remotehost_color)(prompt_hostname)
  else
    printf (set_color $host_color)(prompt_hostname)
  end
  printf (set_color $atto_color)': '(set_color $cd_color)(prompt_pwd)
  printf (set_color $git_color)'%s'(__fish_git_prompt)

  if test $USER = 'root'
    printf '\n# '
  else
    printf '\n> '
  end
  set_color normal
end
