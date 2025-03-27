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

int main()
{
    // Printing Each File
    cout << "***Files***" << "\n";
    for (string entry : readDownloadFiles())
    {
        int pic = entry.find(".JPG");
        int picTwo = entry.find(".jpeg");

        if ((pic != string::npos && entry.substr(pic) == ".JPG"))
        {
            // print out the entry
            cout << entry << "\n";
        }
        else if (picTwo != string::npos && entry.substr(picTwo) == ".jpeg")
        {
            cout << entry << "\n";
        }
    }

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