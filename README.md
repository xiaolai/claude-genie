# Claude Genie

Transform your Claude Code workflow with optimization experts and automated setup wizards that unlock hidden capabilities.

## What Is This?

Claude Genie is a toolkit that maximizes Claude Code's potential through:
- **Genie Agent** - An optimization expert knowing every trick and hidden feature
- **Guru Agent** - A Natural Language Programming master who translates ideas into clear prompts
- **Setup Wizards** - Modular 9-step personalized environment configuration

## Quick Start

```bash
# Clone and install
git clone https://github.com/xiaolai/claude-genie.git
cd claude-genie
./install.sh

# In any Claude session
/claude-setup-wizard                       # Smart setup (detects what you need)
/claude-setup-wizard-global                # Configure user identity (one-time)
/claude-setup-wizard-project               # Configure current project
@genie optimize my workflow                # Call optimization expert
@guru translate my vague request           # Turn rough ideas into clear prompts
```

## Natural Language Programming

Slash commands in Claude Code are amazing and revolutionary - they're just **series of prompts in markdown files**.

```
Programming = Writing prompts → Claude executes them
No syntax, no compilation needed
```

The setup wizards are written in pure natural language, created and refined by @guru - hundreds of lines of structured prompts that create your entire development environment.

## Core Components

### Genie Agent (`@genie`)
- Discovers undocumented features and easter eggs
- Achieves 10x speed through parallel tool execution
- Creates specialized agent teams
- Implements advanced context management

### Guru Agent (`@guru`)
- Masters Natural Language Programming - turning conversations into code
- Translates vague ideas into clear, executable instructions
- Teaches the "Grandmother Test" - if you can explain it, Claude can do it
- **Why use Guru?** Your "fix the bug" becomes "Look for authentication errors in the login function, check if tokens expire correctly, and ensure refresh triggers before expiration" - Claude needs clarity, Guru provides it

### Setup Wizards (Modular Commands)

**Main Orchestrator** (`/claude-setup-wizard`)
- Intelligently detects what needs configuration
- Routes to appropriate setup (global or project)
- Handles all setup scenarios gracefully

**Global Setup** (`/claude-setup-wizard-global`)
- One-time user configuration
- Sets identity (user + CTO names)
- Configures development philosophy based on Chris Dzombak's best practices
- Creates `$HOME/.claude/CLAUDE.md`

**Project Setup** (`/claude-setup-wizard-project`)
- Per-project configuration
- Language-specific optimizations
- Creates specialized agents (Code Auditor + Researcher)
- Sets up workflows, permissions, and changelog tracking

## Configuration Hierarchy

```
📁 ./.claude/CLAUDE.md         [PROJECT - Highest Priority]
    ↓
📄 ./CLAUDE.md                 [PROJECT ROOT]
    ↓
🏠 $HOME/.claude/CLAUDE.md     [USER - Identity & Philosophy]
    ↓
🖥️ /etc/claude/CLAUDE.md      [SYSTEM - Defaults]
```

**Override Example:**
```
User says: "Always use TDD"
Project says: "Use TypeScript strict"
Result: TDD + TypeScript strict (both apply)
```

## Project Structure

```
claude-genie/
├── agents/
│   ├── genie.md             # Optimization expert agent
│   └── guru.md              # Natural Language Programming master
├── commands/
│   ├── claude-setup-wizard.md         # Main orchestrator
│   ├── claude-setup-wizard-global.md  # User setup
│   └── claude-setup-wizard-project.md # Project setup
├── Notes/
│   └── NLP-RESEARCH-FINDINGS.md       # Research on Natural Language Programming
├── install.sh               # Installation script
└── README.md               # This file
```

## Files Created by Setup

```
$HOME/.claude/
├── CLAUDE.md                 # Your identity & philosophy

./ (project)
├── .claude/
│   ├── CLAUDE.md            # Language-specific config
│   ├── agents/
│   │   ├── [auditor].md    # Code quality reviewer
│   │   └── [researcher].md  # Solution designer
│   ├── commands/
│   │   └── changelog.md     # Progress tracking command
│   └── settings.local.json  # Permissions & workflows
├── log/
│   └── changelog.md         # Session history
└── .gitignore               # Updated with Claude entries
```

## Installation

### Prerequisites
- Claude Code installed
- Bash shell (macOS/Linux/WSL)

### Install Process
```bash
./install.sh
```

The installer:
- Copies all agents and commands to `~/.claude/`
- Shows colorful output with installed items
- Provides clear next steps with visual guidance
- Detects if you're already configured

## Usage

### Communicating with Agents
```
# Genie - for optimization and hidden features
genie, can you optimize my workflow?
@genie show me parallel execution tricks

# Guru - for clearer communication with Claude
guru, help me explain this bug clearly
@guru translate: "make it work better"
Hey Guru, how do I describe this algorithm?
```

### Running Setup
```
/claude-setup-wizard         # Smart detection - runs what you need
/claude-setup-wizard-global  # Setup user identity (once per user)
/claude-setup-wizard-project # Setup current project (per project)
```

## Special Thanks

- **[Chris Dzombak](https://github.com/cdzombak)** - For his excellent article "[Getting good results from Claude Code](https://www.dzombak.com/blog/2025/01/getting-good-results-from-claude-code/)" which forms the foundation of our development philosophy and best practices implementation.

## License

MIT License

---

> [!NOTE]
> - This entire repository was in fact created by Claude Code. The author ([@xiaolai](https://github.com/xiaolai)) provided direction through conversation, but didn't write a single character of code or documentation - demonstrating the power of natural language programming.
> - @guru was the final writer of this project, reviewing and refining all commands to follow Natural Language Programming best practices.