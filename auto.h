/**
 * --------------------------------------------|
 This program will automate storage for me on  |
 my MacBook.                                   |
 @author Ja'Quis Franklin                      |
 @date: 03/26/2025                             |
 ----------------------------------------------|
 */

#include <iostream>
#include <fstream>
#include <filesystem>
#include <string>
#include <cstdlib>
#include <unistd.h>
#include <list>
#include <cctype>
#include <algorithm>

using namespace std;
#ifndef MYFUNCTIONS_H
#define MYFUNCTIONS_H
/**
 * Reads Every File within the downloads directory.
 * I am choosing this folder specifically because it
 * is where I save most of my files. Files will be
 * added to a List of strings.
 */
list<string> readDownloadFiles()
{
    list<string> files;
    // Retreives the home directory
    const char *homeDir = getenv("HOME");
    if (!homeDir)
    {
        cout << "Could not find home directory.";
        exit(1);
    }

    string path = string(homeDir) + "/downloads";

    try
    {
        // Reading through each file in the directory and printing the path
        for (const auto &entry : filesystem::directory_iterator(path))
        {
            string file = entry.path().filename().string();
            if (is_regular_file(entry))
            {

                files.push_back(file);
            }
        }
    }
    // Cathces the error if the file cannot be read
    catch (const filesystem::filesystem_error &ex)
    {
        cout << "Error getting path for the files.";
        exit(1);
    }
    return files;
}

/**
 * Reads Every Folders within the downloads directory.
 * I am choosing this folder specifically because it
 * is where I save most of my files. Folders will be
 * added to a List of strings.
 */
list<string> readDownloadFolders()
{
    list<string> folders;
    const char *homeDir = getenv("HOME");
    if (!homeDir)
    {
        cout << "Could not find home directory.";
        exit(1);
    }
    string path = string(homeDir) + "/downloads";
    try
    {
        for (const auto &entry : filesystem::directory_iterator(path))
        {
            string folder = entry.path().filename().string();
            if (!is_regular_file(entry))
            {
                folders.push_back(folder);
            }
        }
        return folders;
    }
    catch (const filesystem::filesystem_error &ex)
    {
        cout << "Error getting path for the files.";
        exit(1);
    }
}

/**
 * Reads each JPG and JPEG File in the
 * Download Files
 */
list<string> findJPG()
{
    list<string> jpgFiles;
    int jpgCount = 0;
    for (string entry : readDownloadFiles())
    {
        string jpgEnd = ".JPG";
        string lowerJPGEnd = jpgEnd;
        // Worlds most confusing to lower function
        transform(lowerJPGEnd.begin(), lowerJPGEnd.end(), lowerJPGEnd.begin(), ::tolower);
        int jpgLower = entry.find(lowerJPGEnd);
        int jpgUpper = entry.find(jpgEnd);
        int picTwo = entry.find(".jpeg");
        // Overall logic for JPG and JPEG Files
        if ((jpgLower != string::npos && entry.substr(jpgLower) == lowerJPGEnd) ||
            (jpgUpper != string::npos && entry.substr(jpgUpper) == jpgEnd) ||
            (picTwo != string::npos && entry.substr(picTwo) == ".jpeg") ||
            (picTwo != string::npos && entry.substr(picTwo) == ".JPEG"))
        {
            jpgFiles.push_back(entry);
            jpgCount++;
        }
    }
    cout << "Reading..." << "\n";
    cout << jpgCount << " files found ending with .JPG or .JPEG in the folder" << "\n";
    sleep(2);
    return jpgFiles;
}

/**
 * Reads each PNG and in the downloas folder
 * @return pngFiles
 */
list<string> findPNG()
{
    list<string> pngFiles;
    int pngCount = 0;
    for (string entry : readDownloadFiles())
    {
        string pngEnd = ".PNG";
        string lowerPNGEnd = pngEnd;
        // Worlds most confusing to lower function
        transform(lowerPNGEnd.begin(), lowerPNGEnd.end(), lowerPNGEnd.begin(), ::tolower);
        int jpgLower = entry.find(lowerPNGEnd);
        int jpgUpper = entry.find(pngEnd);
        // Overall logic for JPG and JPEG Files
        if ((jpgLower != string::npos && entry.substr(jpgLower) == lowerPNGEnd) ||
            (jpgUpper != string::npos && entry.substr(jpgUpper) == pngEnd))
        {
            pngFiles.push_back(entry);
            pngCount++;
        }
    }
    cout << "Reading..." << "\n";
    cout << pngCount << " files found ending with .PNG in the folder" << "\n";
    sleep(2);
    return pngFiles;
}
#endif