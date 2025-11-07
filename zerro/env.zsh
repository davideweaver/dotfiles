# Auto-load Claude Code environment if in the project directory
if [[ "$PWD" == "/Users/dweaver/Projects/ai/claude-assist"* ]]; then
[ -f .env.local ] && source .env.local
fi

# Zerro alias
alias zerro="node /Users/dweaver/Projects/ai/claude-assist/projects/zerro-service/bin/zerro"
