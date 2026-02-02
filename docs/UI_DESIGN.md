# UI/UX Design Specification: Antalya Karotcu Web Platform

---

**Document Version:** 1.0
**Date:** February 2, 2026
**Based on:** Product Requirements Document v1.0
**Status:** Draft

---

## 1. Design Strategy & Philosophy

### 1.1 Core Aesthetic: "Engineered Solidity"

The design language must reflect the company's 28+ years of experience and its focus on structural integrity.

- **Keywords:** Robust, Industrial, Precise, Safety-Oriented, Modern.
- **Visual Tone:** The interface should feel "heavy" and stable (like concrete) but behave with "precision" (like diamond cutting). Avoid whimsical elements; prioritize clean lines, high contrast, and grid-based layouts.

### 1.2 User Experience Goals

- **Trust Building:** Immediately highlight the 1995 establishment date and nationwide coverage to reassure new clients.
- **Frictionless Conversion:** Primary conversion paths (Call/WhatsApp) must be always visible, catering to the mobile-heavy nature of on-site construction managers.
- **Service Clarity:** Simplify complex technical terms (e.g., "Filiz Ekimi") with clear iconography and imagery.

---

## 2. Information Architecture (IA)

### 2.1 Sitemap Structure

Based on the service portfolio defined in PRD Section 2.2:

1. **Home:** Hero (Value Prop) → Quick Services Grid → About Teaser → Trust Signals/Stats → CTA.
2. **Services (Hub):**

- Karot (Core Drilling)
- Beton Delme & Kesme (Drilling/Cutting)
- Duvar Kırma (Wall Breaking)
- Kimyasal Ankraj & Filiz Ekimi (Chemical Anchor/Rebar)
- Hafriyat (Excavation)
- Asfalt Kesme (Asphalt Cutting)

3. **About Us:** Company History (1995), Mission, Safety Protocols (HSE).
4. **Projects/Gallery:** Filterable portfolio (Industrial, Residential, Infrastructure).
5. **Contact:** Map, Form, WhatsApp Direct, Phone Numbers.

### 2.2 User Flows

- **The "Emergency" Flow (Mobile):** Landing Page → Sticky "Call Now" Button → Dialer.
- **The "Procurement" Flow (Desktop):** Landing Page → Service Detail (Tech Specs) → "Get Quote" Form → Confirmation.

---

## 3. Visual Identity System

### 3.1 Color Palette

Derived from construction safety standards and concrete materials.

| Color Name        | Hex Code  | Usage                             | Rationale                                                  |
| ----------------- | --------- | --------------------------------- | ---------------------------------------------------------- |
| **Safety Orange** | `#FF6700` | Primary Buttons, Highlights, CTAs | Represents high-visibility vests/safety; drives attention. |
| **Concrete Grey** | `#2C3E50` | Headings, Footer Background       | Represents the core material; implies stability.           |
| **Steel Blue**    | `#34495E` | Secondary Text, Icons             | Represents engineering precision and diamond tips.         |
| **Dust White**    | `#F5F6FA` | Page Backgrounds                  | Clean, modern look that reduces eye strain.                |

### 3.2 Typography

- **Primary Font (Headings):** _Barlow_ or _Teko_ – Condensed, industrial sans-serif. Used for headers (H1-H3) to mimic architectural blueprints.
- **Secondary Font (Body):** _Inter_ or _Roboto_ – Highly legible sans-serif for reading technical specifications and safety protocols.

### 3.3 Iconography

Use "Outline" style icons with a 2px stroke width to match technical drawings.

- _Drill Bit icon_ for Karot.
- _Saw Blade icon_ for Concrete Cutting.
- _Helmet icon_ for Safety/HSE.
- _Chemical Flask/Bolt icon_ for Chemical Anchorage.

---

## 4. UI Layout Specifications

### 4.1 Header & Navigation

- **Top Bar (Utility):** Dark background. Contains "Establishment: 1995" badge and "Nationwide Service" text.
- **Main Nav:** Logo (Left), Menu Items (Center), **Primary CTA Button: "Get Quote / Teklif Al"** (Right - Safety Orange).

### 4.2 Hero Section (Homepage)

- **Background:** High-quality video loop or image of a _Hydraulic Rail Cutting_ machine in action (showing precision, not mess).
- **Headline:** "Precision Concrete Solutions Since 1995".
- **Sub-headline:** "Professional Core Drilling, Cutting, and Strengthening Services Across Turkey."
- **Input Field:** "Enter your phone number for a callback" (Quick Lead Gen).

### 4.3 Service Cards (Grid Layout)

Each service defined in PRD Section 5 will be represented by a card containing:

1. **Image:** High-res photo of the specific machinery (e.g., Floor Saw for Asphalt Cutting).
2. **Title:** e.g., "Kimyasal Ankraj (Chemical Anchorage)".
3. **Micro-copy:** Brief description (e.g., "Structural strengthening using high-strength epoxy").
4. **Action:** "View Specs →".

### 4.4 Technical Specification Tables (Service Detail Pages)

For pages like "Karot (Core Drilling)", display technical capabilities clearly as outlined in the PRD:

- **Component:** Data Table.
- **Columns:** Feature | Specification.
- **Rows Example:** "Drill Diameter" | "10mm - 500mm+".
- **Rows Example:** "Drilling Method" | "Wet (Dust-free) / Dry".

### 4.5 Trust & Safety Section

Dedicated block emphasizing the "Zero-incident safety goal".

- **Visual:** Icons of PPE (Helmet, Gloves, Goggles) arranged in a grid.
- **Text:** "Certified Technicians & Rigorous HSE Protocols."

---

## 5. Interaction Design & UX Features

### 5.1 Floating Action Button (FAB)

- **Position:** Bottom Right (Fixed).
- **Icon:** WhatsApp Logo.
- **Interaction:** Opens direct chat with `+90 532 609 68 02` pre-filled with "Hello, I need a quote.".

### 5.2 Project Quote Calculator (Simple)

A multi-step form to qualify leads:

1. _Select Service:_ (Dropdown: Core Drilling, Wall Breaking, etc.)
2. _Project Type:_ (Residential, Industrial, Infrastructure).
3. _Location:_ (City selector - promoting Nationwide coverage).
4. _Estimated Size:_ (Slider or text input).

### 5.3 Mobile Responsiveness

- **Thumb Zone:** All primary navigation and call buttons must be within the bottom 1/3 of the screen for one-handed use by site managers.
- **Click-to-Call:** All phone numbers (+90 532...) must be `tel:` links.

---

## 6. Accessibility & Performance

### 6.1 Accessibility (WCAG 2.1 AA)

- **Contrast:** Ensure "Safety Orange" text is only used on dark backgrounds, or use a darker variant for text on white backgrounds to meet 4.5:1 contrast ratio.
- **Touch Targets:** All buttons (especially on mobile) must be at least 44x44px.

### 6.2 Performance

- **Image Optimization:** Construction images are detail-heavy. Use WebP format and lazy loading for gallery sections to ensure fast load times on 4G networks common on construction sites.

---

## 7. Next Steps for Development Team

1. **Asset Collection:** Gather high-res images of _Hydraulic Rail Cutting_, _Wire Rope Cutting_, and _Core Drilling_ equipment.
2. **Prototype:** Build low-fidelity wireframes focusing on the "Service Detail" to "Quote" user flow.
3. **Content Strategy:** Draft service descriptions using the specific "Use Cases" listed in PRD Section 5 (e.g., "HVAC duct openings" for Concrete Drilling).
