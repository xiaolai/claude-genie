#!/bin/bash

# Claude Genie Installation Script
# Copies agents and commands folders to $HOME/.claude/

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored messages
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${YELLOW}➜${NC} $1"
}

# Main installation
main() {
    print_info "Starting Claude Genie installation..."
    
    # Get the script's directory
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    TARGET_DIR="$HOME/.claude"
    
    # Create target directory if it doesn't exist
    if [ ! -d "$TARGET_DIR" ]; then
        print_info "Creating $TARGET_DIR directory..."
        mkdir -p "$TARGET_DIR"
        print_success "Created $TARGET_DIR"
    else
        print_info "$TARGET_DIR already exists"
    fi
    
    # Copy agents folder
    if [ -d "$SCRIPT_DIR/agents" ]; then
        print_info "Copying agents folder..."
        
        # Create agents directory if it doesn't exist
        if [ ! -d "$TARGET_DIR/agents" ]; then
            mkdir -p "$TARGET_DIR/agents"
        fi
        
        # Copy all agent files
        cp -r "$SCRIPT_DIR/agents/"* "$TARGET_DIR/agents/" 2>/dev/null || true
        print_success "Copied agents to $TARGET_DIR/agents/"
    else
        print_error "agents folder not found in $SCRIPT_DIR"
        exit 1
    fi
    
    # Copy commands folder
    if [ -d "$SCRIPT_DIR/commands" ]; then
        print_info "Copying commands folder..."
        
        # Create commands directory if it doesn't exist
        if [ ! -d "$TARGET_DIR/commands" ]; then
            mkdir -p "$TARGET_DIR/commands"
        fi
        
        # Copy all command files
        cp -r "$SCRIPT_DIR/commands/"* "$TARGET_DIR/commands/" 2>/dev/null || true
        print_success "Copied commands to $TARGET_DIR/commands/"
    else
        print_error "commands folder not found in $SCRIPT_DIR"
        exit 1
    fi
    
    # List installed items
    print_info "Installed items:"
    
    # List agents
    if [ -d "$TARGET_DIR/agents" ]; then
        echo ""
        echo "  ${GREEN}Agents installed:${NC}"
        echo "    - ${YELLOW}@genie${NC} - Claude Code optimization expert"
        echo "    - ${YELLOW}@guru${NC} - Natural Language Programming master"
    fi
    
    # List commands
    if [ -d "$TARGET_DIR/commands" ]; then
        echo ""
        echo "  ${GREEN}Commands installed:${NC}"
        echo "    - ${YELLOW}/claude-setup-wizard${NC} - Smart setup orchestrator"
        echo "    - ${YELLOW}/claude-setup-wizard-global${NC} - User identity setup"
        echo "    - ${YELLOW}/claude-setup-wizard-project${NC} - Project configuration"
    fi
    
    echo ""
    print_success "Installation complete!"
    
    # Check if CLAUDE.md exists and provide clear next steps
    if [ ! -f "$TARGET_DIR/CLAUDE.md" ]; then
        echo ""
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "  ${YELLOW}Next Step:${NC} Run ${GREEN}/claude-setup-wizard${NC} in Claude Code"
        echo "  This will configure your personalized environment"
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    else
        print_info "Your Claude environment is already configured!"
        print_info "You can run /claude-setup-wizard anytime to reconfigure"
    fi
}

# Run main function
main