# IDE Config Dashboard GUI

This directory is intended for the Next.js Firebase GUI application. Below are instructions for integrating your Firebase GUI files with this repository.

## Integration Instructions

1. Copy your Next.js Firebase GUI files into this directory, maintaining the following structure:

```
gui/
├── components.json
├── docs/
├── next.config.ts
├── package.json
├── postcss.config.mjs
├── src/
├── tailwind.config.ts
└── tsconfig.json
```

2. Exclude the following directories/files when copying:
   - `.git/` (to avoid Git conflicts)
   - `node_modules/` (these should be reinstalled)
   - `.next/` (build output)
   - `.env` (create a new one with appropriate values)

3. Connect to the data by importing from the data directory:

```typescript
// Example usage in your components
import data from '../../data/gui_ready_data.json';

// Access extensions
const extensions = data.categories.extensions;

// Access security practices
const securityPractices = data.categories.security.items;

// Access AI rules
const aiRules = data.categories.ai_rules;
```

4. After copying your files, run the following commands to install dependencies and start the development server:

```bash
cd gui
npm install
npm run dev
```

## Data Structure

The `gui_ready_data.json` file in the `data` directory contains all the extracted recommendations from the Grok research document, structured for easy integration with your UI components.

## VS Code Settings

The `vscode_settings.json` file in the `data` directory contains recommended VS Code settings that can be applied to enhance security and productivity.

## .cursorrules

The `.cursorrules` content is included in the `gui_ready_data.json` file and can be extracted and saved to the appropriate location for AI assistant configuration.
