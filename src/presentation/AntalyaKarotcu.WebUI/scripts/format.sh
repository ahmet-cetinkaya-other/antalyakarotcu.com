#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$(dirname "$SCRIPT_DIR")/../../.." && pwd)"

# shellcheck source=/dev/null
source "$PROJECT_ROOT/packages/acore-scripts/src/logger.sh"

PROJECT_DIR="$PROJECT_ROOT/src/presentation/AntalyaKarotcu.WebUI"

show_usage() {
  cat << EOF
Usage: format.sh [TYPE]

Format AntalyaKarotcu.WebUI (Astro) project files.

Arguments:
  TYPE                 File type to format (default: all)
                       Options: all, astro, ts, js, css, json

Examples:
  ./format.sh                     Format all project files
  ./format.sh astro               Format .astro files only
  ./format.sh ts                  Format TypeScript files only

EOF
}

format_astro() {
  acore_log_info "Formatting Astro files (.astro)..."
  if ! command -v prettier &> /dev/null; then
    acore_log_error "prettier not found. Install: npm install -g prettier"
    return 1
  fi

  if [[ ! -d "$PROJECT_DIR/src" ]]; then
    acore_log_info "No Astro files found (src directory not exists)"
    return 0
  fi

  find "$PROJECT_DIR/src" -name "*.astro" -type f -exec prettier --write {} \; 2> /dev/null || true
  acore_log_success "Astro files formatted"
}

format_ts() {
  acore_log_info "Formatting TypeScript files (.ts, .tsx)..."
  if ! command -v prettier &> /dev/null; then
    acore_log_error "prettier not found. Install: npm install -g prettier"
    return 1
  fi

  local ts_files
  ts_files=$(find "$PROJECT_DIR" -name "*.ts" -o -name "*.tsx" 2> /dev/null || true)

  if [[ -z "$ts_files" ]]; then
    acore_log_info "No TypeScript files found"
    return 0
  fi

  echo "$ts_files" | xargs -r prettier --write 2> /dev/null || true
  acore_log_success "TypeScript files formatted"
}

format_js() {
  acore_log_info "Formatting JavaScript files (.js, .jsx)..."
  if ! command -v prettier &> /dev/null; then
    acore_log_error "prettier not found. Install: npm install -g prettier"
    return 1
  fi

  local js_files
  js_files=$(find "$PROJECT_DIR" -name "*.js" -o -name "*.jsx" 2> /dev/null || true)

  if [[ -z "$js_files" ]]; then
    acore_log_info "No JavaScript files found"
    return 0
  fi

  echo "$js_files" | xargs -r prettier --write 2> /dev/null || true
  acore_log_success "JavaScript files formatted"
}

format_css() {
  acore_log_info "Formatting CSS files (.css, .scss)..."
  if ! command -v prettier &> /dev/null; then
    acore_log_error "prettier not found. Install: npm install -g prettier"
    return 1
  fi

  if [[ ! -d "$PROJECT_DIR/src" ]]; then
    acore_log_info "No CSS files found (src directory not exists)"
    return 0
  fi

  local css_files
  css_files=$(find "$PROJECT_DIR/src" \( -name "*.css" -o -name "*.scss" \) -type f 2> /dev/null || true)

  if [[ -z "$css_files" ]]; then
    acore_log_info "No CSS files found"
    return 0
  fi

  echo "$css_files" | xargs -r prettier --write 2> /dev/null || true
  acore_log_success "CSS files formatted"
}

format_json() {
  acore_log_info "Formatting JSON files..."
  if ! command -v prettier &> /dev/null; then
    acore_log_error "prettier not found. Install: npm install -g prettier"
    return 1
  fi

  local json_files
  json_files=$(find "$PROJECT_DIR" -name "*.json" -type f 2> /dev/null || true)

  if [[ -z "$json_files" ]]; then
    acore_log_info "No JSON files found"
    return 0
  fi

  echo "$json_files" | xargs -r prettier --write 2> /dev/null || true
  acore_log_success "JSON files formatted"
}

main() {
  local format_type="${1:-all}"

  acore_log_header "AntalyaKarotcu.WebUI Format Script" "="
  acore_log_info "Project directory: $PROJECT_DIR"

  if [[ ! -d "$PROJECT_DIR" ]]; then
    acore_log_warning "Project directory not found. Skipping."
    exit 0
  fi

  case "$format_type" in
    all)
      format_astro
      format_ts
      format_js
      format_css
      format_json
      ;;
    astro)
      format_astro
      ;;
    ts)
      format_ts
      ;;
    js)
      format_js
      ;;
    css)
      format_css
      ;;
    json)
      format_json
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
