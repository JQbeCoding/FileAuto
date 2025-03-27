/*--------------------------------------------|
 This program will automate storage for me on |
 my MacBook.                                  |
 Author: Ja'Quis Franklin                     |
 Date: 03/26/2025                             |
 ---------------------------------------------|
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

int main()
{
    // Printing Each File
    cout << "***Files***" << "\n";
    // Displays photo files
    cout << "   PICTURES      " << "\n";
    int count = 0;
    for (string entry : readDownloadFiles())
    {

        string imageEnd = ".JPG";
        string lowerImageEnd = imageEnd;
        // Worlds most confusing to lower function
        transform(lowerImageEnd.begin(), lowerImageEnd.end(), lowerImageEnd.begin(), ::tolower);
        int jpgLower = entry.find(lowerImageEnd);
        int jpgUpper = entry.find(imageEnd);
        int picTwo = entry.find(".jpeg");
        // Overall logic for JPG and JPEG Files
        if ((jpgLower != string::npos && entry.substr(jpgLower) == lowerImageEnd) ||
            (jpgUpper != string::npos && entry.substr(jpgUpper) == imageEnd) ||
            (picTwo != string::npos && entry.substr(picTwo) == ".jpeg") ||
            (picTwo != string::npos && entry.substr(picTwo) == ".JPEG"))
        {
            cout << entry << "\n";
            usleep(10000);
            count++;
        }
    }
    cout << count << " files found ending with .JPG or .JPEG in the folder" << "\n";

    // Printing each folder
    readDownloadFolders();
    cout << "\n";
    cout << "***Folders***" << "\n";
    for (string entry : readDownloadFolders())
    {
        cout << entry << "\n";
    }

    return 0;
}