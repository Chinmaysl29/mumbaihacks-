# Logo Setup Instructions

## Adding the Medipilot Nexus Logo

1. Create a `public` folder in the root directory (if it doesn't exist)
2. Place your logo image file in the `public` folder
3. Name the file `logo.png` (or update the path in `src/App.jsx` if using a different name/format)

## Supported Formats
- PNG (recommended)
- SVG
- JPG/JPEG

## File Location
```
NESCOO/
  └── public/
      └── logo.png
```

The logo will automatically appear in the header beside "Medipilot Nexus" text.

## Current Implementation
- Logo height: 60px (desktop), 45px (mobile)
- Positioned to the left of the "Medipilot Nexus" text
- Includes hover effect and drop shadow
- Responsive design for mobile devices

