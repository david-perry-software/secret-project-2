import js from "@eslint/js";
import globals from "globals";
import tseslint from "typescript-eslint";

export default [
  {
    ignores: [
      "**/Library/**",
      "**/Temp/**",
      "**/Logs/**",
      "**/Build/**",
      "**/Builds/**",
      "**/obj/**",
      "**/*.min.js"
    ]
  },
  js.configs.recommended,
  ...tseslint.configs.recommended,
  {
    files: ["**/*.{js,cjs,mjs,ts,mts,cts}"],
    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.node
      }
    },
    rules: {
      "no-console": "off"
    }
  },
  {
    files: ["**/*.{ts,mts,cts}"],
    rules: {
      "no-undef": "off"
    }
  }
];
