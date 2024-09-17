# My Vim Custom Configuration

This repository contains my custom Vim configuration that enhances productivity with improved key mappings, visual enhancements, and user-friendly options. The configuration includes a **Catppuccin Macchiato** colorscheme, optimized search, indentation settings, and custom keybindings.

## Features

### Customizations
- **Catppuccin Macchiato Colorscheme**: A beautiful, modern color theme that is easy on the eyes.
- **Smart Indentation**: Auto and smart indentation for programming files.
- **Space as Tabs**: Replaces tabs with spaces (tab size set to 2 spaces).
- **Enhanced Search**:
  - Incremental search like modern editors.
  - Case-insensitive search (unless uppercase letters are used).
  - Search wraps around the buffer.
- **Key Bindings**:
  - `jj`: Exit insert mode quickly.
  - `Ctrl-s`: Save the current buffer.
  - `Ctrl-S`: Save all buffers.
  - `Ctrl-a`: Select all content.
  - `Ctrl-h` and `Ctrl-l`: Move between buffers.
  - `Ctrl-j` and `Ctrl-k`: Join and split lines.
- **Relative Line Numbers**: Easier navigation with relative line numbers.
- **Auto-read**: Automatically reloads a file when changed from the outside.
- **Improved Buffer Management**: Buffers with unsaved changes are hidden instead of being forced to save.

### Multiple File Handling Shortcuts

This configuration includes custom shortcuts to simplify handling multiple files and buffers in Vim.

- **Switch Between Buffers**:
  - `Ctrl-h`: Move to the previous buffer.
  - `Ctrl-l`: Move to the next buffer.

- **Save and Update Buffers**:
  - `Ctrl-s`: Save the current buffer.
  - `Ctrl-S`: Save all open buffers using `:bufdo update`.

- **Buffer Navigation**:
  - `Ctrl-a`: Select all content in the current buffer.
  - `Ctrl-j`: Join the current line with the next line.
  - `Ctrl-k`: Split the current line at the cursor point.

- **Hidden Buffers**:
  - Buffers with unsaved changes can be hidden and reopened without forcing you to save them, making it easy to work on multiple files at once.

## Available Functions

1. **Catppuccin Macchiato Colorscheme**: Beautiful, soft color scheme applied for easy readability and focus.
2. **Quick Navigation**: Use `jj` to quickly exit insert mode and custom key bindings to move between buffers and manage text.
3. **Better Buffer Handling**: Improved buffer management with auto-save options, and you can move between unsaved buffers.
4. **Smart Search**: Intelligent search with smart case-sensitivity and quick, intuitive interaction.
5. **Indentation Control**: Smart auto-indentation for writing code with configurable spaces instead of tabs.

## Installation

There are two ways to install this Vim configuration: cloning from the repository or manually creating the necessary files and directories.

Clone this repository:
   ```sh
   git clone git@github.com:keult/my-vimrc.git

    ```


