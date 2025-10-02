# Downloads File Organizer

A C++ command-line utility that automatically organizes files in your macOS Downloads folder into categorized subdirectories.

## Author

Ja'Quis Franklin  
Date: 03/26/2025

## Purpose

This program helps keep your Downloads folder organized by automatically sorting files into appropriate subdirectories based on their file types. It scans your Downloads folder and moves files into categorized folders, making it easier to find and manage your downloaded content.

## Features

- **Automatic File Categorization**: Organizes files into 7 main categories:

  - **PICTURES**: Images (JPG, JPEG, PNG, WEBP, HEIC, SVG, GIF, ICO)
  - **TEXT**: Documents (DOC, DOCX, PDF, PPTX, TXT)
  - **VIDEOS**: Video files (MP4, MOV)
  - **AUDIO**: Audio files (MP3, WAV, FLAC)
  - **CODE**: Programming files (C/C++, Java, Python, JavaScript, TypeScript, C#, HTML, CSS)
  - **DATA**: Data files (CSV, SQL, Excel formats)
  - **MISC**: Other files (ZIP, RAR, ISO, DMG, executables, logs, fonts, etc.)

- **Case-Insensitive**: Handles both uppercase and lowercase file extensions
- **Progress Feedback**: Displays real-time progress as files are organized
- **Summary Statistics**: Shows count of files moved to each directory
- **User Confirmation**: Prompts before organizing to prevent accidental changes

## How It Works

1. Scans your `~/Downloads` directory for files
2. Creates categorized subdirectories if they don't exist
3. Identifies file types based on extensions
4. Moves files to their appropriate category folder
5. Provides a summary of organized files

## Usage

1. Compile the program:

   ```bash
   g++ -std=c++17 autoMain.cpp -o file_organizer
   ```

2. Run the program:

   ```bash
   ./file_organizer
   ```

3. Select option `[1] Organize Files` from the menu
4. Confirm with `Y` when prompted
5. Watch as your Downloads folder gets organized!

## Requirements

- macOS (uses `HOME` environment variable and Downloads folder)
- C++17 or later (for `<filesystem>` support)
- G++ compiler or equivalent

## File Structure

- `auto.h`: Header file containing all file-finding and organization functions
- `autoMain.cpp`: Main program with user interface and menu system

## Notes

- Files are **moved** (not copied), so they will no longer appear in the main Downloads folder
- The program creates subdirectories automatically if they don't exist
- Future features include file deletion and advanced sorting options (currently in development)

## Safety

The program asks for confirmation before organizing files, preventing accidental file movement. All operations use `filesystem::rename()` with error handling to ensure safe file operations.
