# Antalya Karotcu

Professional concrete drilling, cutting, and construction services website for Antalya Karotcu - a pioneer in Turkish construction industry since 1995.

## Contact Information

- **Phone/WhatsApp:** +90 532 609 68 02
- **Website:** https://antalyakarotcu.com
- **Location:** Organize Sanayi Bölgesi, 1. Cadde No:12, Antalya, Turkey

---

## Project Status

**Phase:** Planning & Design
**Last Updated:** February 2026

This project is currently in documentation and design phase.

---

## Project Structure

```
antalyakarotcu.com/
├── docs/
│   ├── PRD.md                          # Product Requirements Document
│   ├── DESIGN.md                       # Technical Design Document
│   ├── UI_DESIGN.md                    # UI/UX Specifications
│   ├── UI_DESIGN_PROMPT.md             # Design Requirements
│   ├── karmakkarot contents/           # Content documentation
│   └── mockups/
│       └── landing-page/
│           ├── light/                    # Light theme prototype
│           └── dark/                     # Dark theme prototype
├── packages/
│   └── acore-scripts/                # Git submodule: Shared utility scripts
├── scripts/
│   └── format.sh                    # Project formatting script
└── README.md
```

---

## Documentation

### Core Documents

- **[PRD.md](docs/PRD.md)** - Comprehensive product requirements covering business goals, target markets, service specifications, and success metrics
- **[DESIGN.md](docs/DESIGN.md)** - Technical design document with operational architecture, methodologies, and resource strategy
- **[UI_DESIGN.md](docs/UI_DESIGN.md)** - User interface and experience design specifications
- **[UI_DESIGN_PROMPT.md](docs/UI_DESIGN_PROMPT.md)** - Design requirements and constraints

---

## Design Mockups

The project includes HTML-based landing page mockups in both light and dark themes:

- **Light Theme:** [docs/mockups/landing-page/light/code.html](docs/mockups/landing-page/light/code.html)
- **Dark Theme:** [docs/mockups/landing-page/dark/code.html](docs/mockups/landing-page/dark/code.html)

Both mockups are built with Tailwind CSS.

---

## Development Scripts

### Format Script

The project includes a formatting script at `scripts/format.sh` that uses acore-scripts to format project files:

```bash
./scripts/format.sh              # Format all files
./scripts/format.sh shell        # Format shell scripts only
./scripts/format.sh markdown      # Format markdown files only
./scripts/format.sh json         # Format JSON files only
./scripts/format.sh yaml         # Format YAML files only
```

**Formatters used:**
- Shell scripts: shfmt
- Markdown/JSON/YAML: Prettier

### acore-scripts

Project uses `packages/acore-scripts` as a git submodule providing reusable utilities:
- Logger functions for colored console output
- Formatting scripts for various file types
- Changelog generation
- Version management

See [acore-scripts](https://github.com/ahmet-cetinkaya/acore-scripts) for documentation.

---

## Getting Started

### Prerequisites

This project is currently in planning phase. To begin implementation:

1. **Review Documentation**
   - Read [PRD.md](docs/PRD.md) for business requirements
   - Review [DESIGN.md](docs/DESIGN.md) for technical specifications
   - Check [UI_DESIGN.md](docs/UI_DESIGN.md) for design guidelines

2. **Explore Mockups**
   - Open HTML files in `docs/mockups/landing-page/` in a browser
   - Review both light and dark themes
   - Note any customization requirements

3. **Technology Stack (Proposed)**
   - Based on mockups, project will likely use:
     - Tailwind CSS for styling
     - Modern JavaScript framework (to be determined)
     - Responsive web design principles
