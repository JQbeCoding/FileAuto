/**
 * --------------------------------------------|
 This is a header for a program that will      |
 read the Downloads directory for me on        |
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

const char *homeDir = getenv("HOME");
inline const filesystem::path PICTURES_DIR = string(homeDir) + "Downloads/PICTURES";
inline const filesystem::path TEXT_DIR = string(homeDir) + "Downloads/TEXT";
inline const filesystem::path MOV_DIR = string(homeDir) + "Downloads/VIDEOS";
inline const filesystem::path AUD_DIR = string(homeDir) + "Downloads/AUDIO";

/**
 * C++ has a lowercase function that I don't like
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
            string file = entry.path().string();
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
vector<filesystem::path> findJPG()
{
    vector<filesystem::path> jpgFiles;
    int copyCount = 0;

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
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(1);
    cout << copyCount << " JPG Files added sucessfully to the directory. \n";
    cout << jpgFiles.size() << " files found ending with .JPG or .JPEG in the folder" << "\n";
    return jpgFiles;
}

/**
 * Reads each PNG and in the Downloads folder
 * @return Png Files
 */
vector<filesystem::path> findPNG()
{
    vector<filesystem::path> pngFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string pngEnd = ".PNG";
        string lowerPNGEnd = toLowerCase(pngEnd);
        int pngLower = entry.find(lowerPNGEnd);
        int pngUpper = entry.find(pngEnd);
        if ((pngLower != string::npos && entry.substr(pngLower) == lowerPNGEnd) ||
            (pngUpper != string::npos && entry.substr(pngUpper) == pngEnd))
        {
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the PICTURES directory!! \n";
    cout << pngFiles.size() << " files found ending with .PNG in the folder" << "\n";
    return pngFiles;
}

/**
 * Reads each WEBP and in the Downloads folder
 * @return Webp Files
 */
vector<filesystem::path> findWebp()
{
    vector<filesystem::path> webpFiles;
    int copyCount = 0;
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
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the PICTURES directory!! \n";
    cout << webpFiles.size() << " files found ending with .WEBP in the folder" << "\n";
    return webpFiles;
}

/**
 * Reads each HEIC file found in the downloads directory
 * @return HEIC files
 */
vector<filesystem::path> findHEIC()
{
    vector<filesystem::path> heicFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string heicEnd = ".HEIC";
        string lowerHeicEnd = toLowerCase(heicEnd);
        int heicLower = entry.find(lowerHeicEnd);
        int heicUpper = entry.find(heicEnd);
        if ((heicLower != string::npos && entry.substr(heicLower) == lowerHeicEnd) ||
            (heicUpper != string::npos && entry.substr(heicUpper) == heicEnd))
        {
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the PICTURES directory!! \n";
    cout << heicFiles.size() << " files found ending with .HEIC in the folder" << "\n";
    return heicFiles;
}

/**
 * Reads SVG files found within the downloads directory
 * @return SVG files
 */
vector<filesystem::path> findSVG()
{
    vector<filesystem::path> svgFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string svgEnd = ".SVG";
        string lowerSvgEnd = toLowerCase(svgEnd);
        int svgLower = entry.find(lowerSvgEnd);
        int svgUpper = entry.find(svgEnd);
        if ((svgLower != string::npos && entry.substr(svgLower) == lowerSvgEnd) ||
            (svgUpper != string::npos && entry.substr(svgUpper) == svgEnd))
        {
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the PICTURES directory!! \n";
    cout << svgFiles.size() << " files found ending with .SVG in the folder" << "\n";
    return svgFiles;
}

/**
 * Reads GIF files found within the downloads directory
 * @return GIF files
 */
vector<filesystem::path> findGIF()
{
    vector<filesystem::path> gifFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string gifEnd = ".GIF";
        string lowerGifEnd = toLowerCase(gifEnd);
        int gifLower = entry.find(lowerGifEnd);
        int gifUpper = entry.find(gifEnd);
        if ((gifLower != string::npos && entry.substr(gifLower) == lowerGifEnd) ||
            (gifUpper != string::npos && entry.substr(gifUpper) == gifEnd))
        {
            filesystem::path source = entry;
            filesystem::path destination = PICTURES_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the PICTURES directory!! \n";
    return gifFiles;
}

/**
 * Reads each doc and docx file Downloads directory
 * @return Doc and Docx Files
 */
vector<filesystem::path> findDoc()
{
    vector<filesystem::path> docFiles;
    int copyCount = 0;
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
            filesystem::path source = entry;
            filesystem::path destination = TEXT_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the TEXT directory!! \n";
    cout << docFiles.size() << " files ending with .doc and .docx were found in the folder" << "\n";
    return docFiles;
}

/**
 * Reads each PDF file found within the Downloads directory
 * @return PDF files
 */
vector<filesystem::path> findPDF()
{
    vector<filesystem::path> pdfFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string pdfEnding = ".PDF";
        string pdfEndingLower = toLowerCase(pdfEnding);
        int pdfUpper = entry.find(pdfEnding);
        int pdfLower = entry.find(pdfEndingLower);

        if ((pdfUpper != string::npos && entry.substr(pdfUpper) == pdfEnding) ||
            (pdfLower != string::npos && entry.substr(pdfLower) == pdfEndingLower))
        {
            filesystem::path source = entry;
            filesystem::path destination = TEXT_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the TEXT directory!! \n";
    cout << pdfFiles.size() << " files found ending with pdf found in the directory" << "\n";
    return pdfFiles;
}

/**
 * Reads each TXT file found within the Downloads directory
 * @return TXT files
 */
vector<filesystem::path> findTXT()
{
    vector<filesystem::path> txtFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string txtEnding = ".TXT";
        string txtEndingLower = toLowerCase(txtEnding);
        int txtUpper = entry.find(txtEnding);
        int txtLower = entry.find(txtEndingLower);

        if ((txtUpper != string::npos && entry.substr(txtUpper) == txtEnding) ||
            (txtLower != string::npos && entry.substr(txtLower) == txtEndingLower))
        {
            filesystem::path source = entry;
            filesystem::path destination = TEXT_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the TEXT directory!! \n";
    cout << txtFiles.size() << " files found ending with txt found in the directory" << "\n";
    return txtFiles;
}

/**
 * Reads each MP4 File found within the Downloads directory
 * @return MP4 Files
 */
vector<filesystem::path> findMP4()
{
    vector<filesystem::path> mp4Files;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string mp4Ending = ".MP4";
        string mp4EndingLower = toLowerCase(mp4Ending);
        int mp4Upper = entry.find(mp4Ending);
        int mp4Lower = entry.find(mp4EndingLower);

        if ((mp4Upper != string::npos && entry.substr(mp4Upper) == mp4Ending) ||
            (mp4Lower != string::npos && entry.substr(mp4Lower) == mp4EndingLower))
        {
            filesystem::path source = entry;
            filesystem::path destination = MOV_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the VIDEO directory!! \n";
    cout << mp4Files.size() << " files found ending with MP4 in the directory." << "\n";
    return mp4Files;
}

/**
 * Reads each MOV file found within the downloads directory
 * @return MOV Files
 */

vector<filesystem::path> findMOV()
{
    vector<filesystem::path> movFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string movEnding = ".MOV";
        string movEndingLower = toLowerCase(movEnding);
        int movUpper = entry.find(movEnding);
        int movLower = entry.find(movEndingLower);

        filesystem::path source = entry;
        filesystem::path destination = MOV_DIR / source.filename();
        try
        {
            filesystem::rename(source, destination);
            copyCount++;
        }
        catch (const filesystem::filesystem_error &e)
        {
            cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the VIDEO directory!! \n";
    cout << movFiles.size() << " files found ending with MOV in the directory." << "\n";
    return movFiles;
}

/**
 * Reads each MP3 File within the directory
 * @return MP3 Files
 */
vector<filesystem::path> findMP3()
{
    vector<filesystem::path> mp3Files;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string mp3Ending = ".MP3";
        string mp3EndingLower = toLowerCase(mp3Ending);
        int mp3Upper = entry.find(mp3Ending);
        int mp3Lower = entry.find(mp3EndingLower);

        if ((mp3Upper != string::npos && entry.substr(mp3Upper) == mp3Ending) ||
            (mp3Lower != string::npos && entry.substr(mp3Lower) == mp3EndingLower))
        {
            filesystem::path source = entry;
            filesystem::path destination = AUD_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the AUDIO directory!! \n";
    return mp3Files;
}

/**
 * Reads each WAV file within the directory
 * @return WAV Files
 */
vector<filesystem::path> findWAV()
{
    vector<filesystem::path> wavFiles;
    int copyCount = 0;
    for (const auto &entry : readDownloadFiles())
    {
        string wavEnding = ".WAV";
        string wavEndingLower = toLowerCase(wavEnding);
        int wavUpper = entry.find(wavEnding);
        int wavLower = entry.find(wavEndingLower);

        if ((wavUpper != string::npos && entry.substr(wavUpper) == wavEnding) ||
            (wavLower != string::npos && entry.substr(wavLower) == wavEndingLower))
        {
            filesystem::path source = entry;
            filesystem::path destination = AUD_DIR / source.filename();
            try
            {
                filesystem::rename(source, destination);
                copyCount++;
            }
            catch (const filesystem::filesystem_error &e)
            {
                cerr << "Error copying " << source.filename() << ": " << e.what() << "\n";
            }
        }
    }
    cout << "Reading..." << "\n";
    sleep(2);
    cout << copyCount << " files added to the AUDIO directory!! \n";
    return wavFiles;
}

#endif