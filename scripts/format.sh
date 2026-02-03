#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$(dirname "$SCRIPT_DIR")" && pwd)"

# shellcheck source=/dev/null
source "$PROJECT_ROOT/packages/acore-scripts/src/logger.sh"

ACORE_DIR="$PROJECT_ROOT/packages/acore-scripts/src"

show_usage() {
  cat << EOF
Usage: format.sh [TYPE]

Format project files using acore-scripts.

Arguments:
  TYPE                 File type to format (default: all)
                       Options: all, shell, markdown, json, yaml, webui

Examples:
  ./format.sh                     Format all files
  ./format.sh shell               Format shell scripts only
  ./format.sh json                Format JSON files only
  ./format.sh webui               Format WebUI (Astro) project files

EOF
}

main() {
  local format_type="${1:-all}"

  acore_log_header "🎨 Antalya Karotcu Format Script" "="

  case "$format_type" in
    all)
      bash "$ACORE_DIR/format_sh.sh"
      bash "$ACORE_DIR/format_md.sh"
      bash "$ACORE_DIR/format_json.sh"
      bash "$ACORE_DIR/format_yaml.sh"
      bash "$PROJECT_ROOT/src/presentation/AntalyaKarotcu.WebUI/scripts/format.sh"
      ;;
    shell)
      bash "$ACORE_DIR/format_sh.sh"
      ;;
    markdown)
      bash "$ACORE_DIR/format_md.sh"
      ;;
    json)
      bash "$ACORE_DIR/format_json.sh"
      ;;
    yaml)
      bash "$ACORE_DIR/format_yaml.sh"
      ;;
    webui)
      bash "$PROJECT_ROOT/src/presentation/AntalyaKarotcu.WebUI/scripts/format.sh"
      ;;
    -h | --help)
      show_usage
      exit 0
      ;;
    *)
      acore_log_error "Unknown type: $format_type"
      show_usage
      exit 1
      ;;
  esac

  acore_log_divider
  acore_log_success "Formatting completed"
}

main "$@"
