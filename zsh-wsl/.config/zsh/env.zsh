# Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:/snap/bin
export PATH="/opt/nvim/nvim-linux64/bin:$PATH"

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$HOME/.dotnet:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Password for local Docker SQL Server
export SA_PASSWORD="$(cat ~/.mssql_sa_password)"
export TestCommonConnectionString="Server=localhost,1433;Database=master;User Id=sa;Password=$SA_PASSWORD;TrustServerCertificate=True;"

# Function App environment variables
export FunctionAppHostPath="$HOME/.nvm/versions/node/v$(node -v | cut -c2-)/lib/node_modules/azure-functions-core-tools/bin/func.dll"
export DotnetExecutablePath="$DOTNET_ROOT/dotnet"

# Set file descriptor limit
ulimit -n 65536
