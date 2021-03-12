# Brennen's Dotfiles
These are a collection of shortcuts and configuration files I use for zsh. See [zsh formatting guide](ZSH_GUIDE.md) for more info on what some of the syntax means.
<br><br>

## Install instructions
1. Clone this project into your own github account so that you can save you own changes and easily deploy them to new machines
1. Clone the project into ~/dotfiles
 2. Run ~/dotfiles/install.
 3. Follow the prompts. It will ask if you want to use VS Code, which will allow you to use <code>code project_directory</code> to quickly open a project.
 4. In .zshrc, change the <code>EDITOR</code> variable to the text editor you want to use for editing these config files (defaults to VS code)
 5. (Optional) Change the <code>PROMPT_COLOR</code> variable in <code>.zsh_prompt</code>
 6. (Optional) Add your own shortcuts and bash functions to <code>.zsh_aliases</code> and <code>.zsh_functions</code>
 7. (Optional) Add any sensitive data you don't want to be committed, such as server addresses or device-specific configuration, to <code>~/.zsh_secrets</code>

  
  The install script will copy the contents of the dotfiles folder into your home directory. `.zshrc` will then get loaded every time you open a terminal (zsh automatically looks for a file with that name in your home directory), and that file will load the other config files.
  
 ## Useful commands
 <code>dotedit</code>: Opens this package in your chosen text editor so you can easily make changes  
 <code>load</code>: Re-loads the config files (run this after making changes to update your console)

## Setup for multiple environments
If you would like to have device-specific configurations (for example, deploying these same configs to a server but using a different color for the prompt), you can set the ENVIRONMENT_NAME variable in <code>~/.zsh_environment_name</code> and then use that in if statements to conditionally load certain configurations (see .zsh_prompt for an example of that). <code>~/.zsh_environment_name</code> will not be committed, so you can have a separate value on each machine while still using the same git repo and branch.