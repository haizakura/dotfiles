set fish_greeting
set fish_function_path (realpath $__fish_config_dir/functions/**/) $fish_function_path
set fish_function_path (string join \n $fish_function_path | awk '!seen[$0]++')

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# pnpm
set -gx PNPM_HOME "~/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
