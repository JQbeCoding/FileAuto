/**
 * --------------------------------------------|
 This is a header for a program that will      |
 automate the Downloads directory for me on    |
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
 * C++ has a very long lowercase function
 * so I will be making one myself
 * @param word is the string to be lowercased
 * @return the lowercase word
 */
string toLowerCase(const string &word)
{
    string lowerWord = word;
    transform(lowerWord.begin(), lowerWord.end(), lowerWord.begin(), ::tolower);
    return lowerWord;
}

/**
 * Reads Every File within the downloads directory.
 * I am choosing this folder specifically because it
 * is where I save most of my files. Files will be
 * added to a List of strings.
 * @return Files in the Download directory
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
 * @return Folders in the download directory
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
 * @return JPG and JPEG files
 */
list<string> findJPG()
{
    list<string> jpgFiles;
    filesystem::path dir_path = "Photos";
    if (filesystem::create_directory(dir_path))
    {
        cout << "Directory created successfully." << "\n";
    }
    else
    {
        cerr << "Error creating directory or directory already exists." << "\n";
    }
    for (const auto &entry : readDownloadFiles())
    {
        string jpgEnd = ".JPG";
        string lowerJPGEnd = toLowerCase(jpgEnd);
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
        }
    }
    cout << "Reading..." << "\n";
    cout << jpgFiles.size() << " files found ending with .JPG or .JPEG in the folder" << "\n";
    sleep(2);
    return jpgFiles;
}

/**
 * Reads each PNG and in the Downloads folder
 * @return Png Files
 */
list<string> findPNG()
{
    list<string> pngFiles;
    for (const auto &entry : readDownloadFiles())
    {
        string pngEnd = ".PNG";
        string lowerPNGEnd = toLowerCase(pngEnd);
        int pngLower = entry.find(lowerPNGEnd);
        int pngUpper = entry.find(pngEnd);
        if ((pngLower != string::npos && entry.substr(pngLower) == lowerPNGEnd) ||
            (pngUpper != string::npos && entry.substr(pngUpper) == pngEnd))
        {
            pngFiles.push_back(entry);
        }
    }
    cout << "Reading..." << "\n";
    cout << pngFiles.size() << " files found ending with .PNG in the folder" << "\n";
    sleep(2);
    return pngFiles;
}

/**
 * Reads each WEBP and in the Downloads folder
 * @return Webp Files
 */
list<string> findWebp()
{
    list<string> webpFiles;
    for (const auto &entry : readDownloadFiles())
    {
        string webpEnd = ".WEBP";
        string lowerWebpEnd = toLowerCase(webpEnd);
        int webpLower = entry.find(lowerWebpEnd);
        int webpUpper = entry.find(webpEnd);
        if ((webpLower != string::npos && entry.substr(webpLower) == lowerWebpEnd) ||
            (webpUpper != string::npos && entry.substr(webpUpper) == webpEnd))
        {
            webpFiles.push_back(entry);
        }
    }
    cout << "Reading..." << "\n";
    cout << webpFiles.size() << " files found ending with .WEBP in the folder" << "\n";
    sleep(2);
    return webpFiles;
}

/**
 * Reads each doc and docx file Downloads directory
 * @return Doc and Docx Files
 */
list<string> findDoc()
{
    list<string> docFiles;
    for (const auto &entry : readDownloadFiles())
    {
        string docEnd = ".DOC";
        string docxEnd = ".DOCX";
        string docEndLower = toLowerCase(docEnd);
        string docxEndLower = toLowerCase(docxEnd);
        int docUpper = entry.find(docEnd);
        int docLower = entry.find(docEndLower);
        int docxUpper = entry.find(docxEnd);
        int docxLower = entry.find(docxEndLower);

        if ((docLower != string::npos && entry.substr(docLower) == docEndLower) ||
            (docUpper != string::npos && entry.substr(docUpper) == docEnd) ||
            (docxUpper != string::npos && entry.substr(docxUpper) == docxEnd) ||
            (docxLower != string::npos && entry.substr(docxLower) == docxEndLower))

        {
            docFiles.push_back(entry);
        }
    }
    cout << "Reading..." << "\n";
    cout << docFiles.size() << " files ending with .doc and .docx were found in the folder" << "\n";
    sleep(2);
    return docFiles;
}

/**
 * Reads each PDF file found within the Downloads directory
 * @return PDF files
 */
list<string> findPDF()
{
    list<string> pdfFiles;
    for (const auto &entry : readDownloadFiles())
    {
        string pdfEnding = ".PDF";
        string pdfEndingLower = toLowerCase(pdfEnding);
        int pdfUpper = entry.find(pdfEnding);
        int pdfLower = entry.find(pdfEndingLower);

        if ((pdfUpper != string::npos && entry.substr(pdfUpper) == pdfEnding) ||
            (pdfLower != string::npos && entry.substr(pdfLower) == pdfEndingLower))
        {
            pdfFiles.push_back(entry);
        }
    }

    cout << "Reading..." << "\n";
    cout << pdfFiles.size() << " files found ending with pdf found in the directory" << "\n";
    sleep(2);
    return pdfFiles;
}

/**
 * Reads each TXT file found within the Downloads directory
 * @return TXT files
 */
list<string> findTXT()
{
    list<string> txtFiles;
    for (const auto &entry : readDownloadFiles())
    {
        string txtEnding = ".TXT";
        string txtEndingLower = toLowerCase(txtEnding);
        int txtUpper = entry.find(txtEnding);
        int txtLower = entry.find(txtEndingLower);

        if ((txtUpper != string::npos && entry.substr(txtUpper) == txtEnding) ||
            (txtLower != string::npos && entry.substr(txtLower) == txtEndingLower))
        {
            txtFiles.push_back(entry);
        }
    }

    cout << "Reading..." << "\n";
    cout << txtFiles.size() << " files found ending with txt found in the directory" << "\n";
    sleep(2);
    return txtFiles;
}

#endif