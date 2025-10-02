/**
 * This is the main menu for the program
 * @author Ja'Quis Franklin
 * @date 03/26/2025
 */

#include <iostream>
#include "auto.h"

using namespace std;

/**
 * Menu for the files selected
 */
void displayMenu()
{
    cout << "[1] Organize Files \n";
    cout << "[2] Delete Files \n";
    cout << "[3] Sort Folder \n";
    cout << "[4] Exit \n";
}

int main()
{
    const char *homeDir = getenv("HOME");
    if (!homeDir)
    {
        cout << "Could not find home directory.";
        exit(1);
    }

    string path = string(homeDir) + "/downloads";

    cout << "****Welcome To the File Manipulator****" << "\n";
    cout << "          SELECT FROM CHOICES          " << "\n";
    int choice;
    // User entry
    displayMenu();
    while (!(cin >> choice))
    {
        cout << "Invalid input. Please enter an integer: ";
        cin.clear();
        cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    switch (choice)
    {
    case 1:
    {
        int downloadFiles = readDownloadFiles().size();
        if (downloadFiles < 1)
        {
            cout << "No files found." << "\n";
            cout << "Exiting..." << "\n";
            sleep(1);
            break;
        }
        else
        {
            string confirmationChoice;
            while (true)
            {
                cout << "Files within the downloads directory will be organized." << "\n";
                cout << "Are you sure you want to continue? [Y]es or [N]o" << "\n";

                if (cin >> confirmationChoice)
                {
                    string lowerChoice = toLowerCase(confirmationChoice);
                    if (lowerChoice == "y")
                    {
                        cout << downloadFiles << " files found in the directory" << "\n";
                        sleep(1);
                        cout << "        PICTURES           " << "\n";
                        string homeDirStr(homeDir);
                        filesystem::path downloadsPath = homeDirStr + "/downloads";
                        filesystem::path picturesPath = downloadsPath / "PICTURES";
                        try
                        {
                            if (filesystem::create_directory(picturesPath))
                            {
                                cout << picturesPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << picturesPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }

                        int imageTotal = findJPG().size() + findPNG().size() + findWebp().size() + findHEIC().size() + findSVG().size() + findGIF().size() + findICO().size();
                        cout << imageTotal << " image files found in the folder." << "\n";
                        cout << "\n";
                        // Text Files
                        cout << "          TEXT             " << "\n";
                        filesystem::path textPath = downloadsPath / "TEXT";
                        try
                        {
                            if (filesystem::create_directory(textPath))
                            {
                                cout << textPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << textPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int textTotal = findDoc().size() + findPDF().size() + findTXT().size() + findPPTX().size();
                        cout << textTotal << " text files found in the folder." << "\n";
                        cout << "\n";

                        // Video Directory
                        cout << "         VIDEOS            " << "\n";
                        filesystem::path vidPath = downloadsPath / "VIDEOS";
                        try
                        {
                            if (filesystem::create_directory(vidPath))
                            {
                                cout << vidPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << vidPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int videoTotal = findMP4().size() + findMOV().size();
                        cout << videoTotal << " Video files found in the folder." << "\n";
                        cout << "\n";
                        // Audio Directory
                        cout << "         AUDIO            " << "\n";
                        filesystem::path audPath = downloadsPath / "AUDIO";
                        try
                        {
                            if (filesystem::create_directory(audPath))
                            {
                                cout << audPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << audPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int audioTotal = findMP3().size() + findWAV().size() + findFLAC().size();
                        cout << audioTotal << " Audio files found in the folder." << "\n";
                        cout << "\n";

                        // CODE directory and code file handling
                        cout << "         CODE              " << "\n";
                        filesystem::path codePath = downloadsPath / "CODE";
                        try
                        {
                            if (filesystem::create_directory(codePath))
                            {
                                cout << codePath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << codePath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int codeTotal = findCPP().size() + findJava().size() + findPython().size() + findJS().size() + findTS().size() + findCS().size() + findWebSources().size();
                        cout << codeTotal << " code files found in the folder." << "\n";
                        cout << "\n";

                        // DATA directory (CSV / SQL / Excel)
                        cout << "         DATA              " << "\n";
                        filesystem::path dataPath = downloadsPath / "DATA";
                        try
                        {
                            if (filesystem::create_directory(dataPath))
                            {
                                cout << dataPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << dataPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int dataTotal = findCSV().size() + findSQL().size() + findExcel().size();
                        cout << dataTotal << " data files found in the folder." << "\n";
                        cout << "\n";

                        // MISC directory (other file types)
                        cout << "         MISC              " << "\n";
                        filesystem::path miscPath = downloadsPath / "MISC";
                        try
                        {
                            if (filesystem::create_directory(miscPath))
                            {
                                cout << miscPath.string() << " sucessfully created. \n";
                            }
                            else
                            {
                                cout << "Directory '" << miscPath.string() << "' already exists or could not be created. \n";
                            }
                        }
                        catch (const std::filesystem::filesystem_error &e)
                        {
                            cerr << "Filesystem error occurred: " << e.what() << "\n";
                        }
                        int miscTotal = findMisc().size();
                        cout << miscTotal << " misc files found in the folder." << "\n";
                        cout << "\n";

                        cout << "Files have been added to Respective Folders \n";
                        break;
                    }
                    else if (lowerChoice == "n")
                    {
                        cout << "Program is cancelled.\n";
                        break;
                    }
                    else if (lowerChoice == "")
                    {
                        lowerChoice = "y";
                    }
                    else
                    {
                        cout << "Invalid input. Please enter 'y' or 'n'.\n";
                    }
                }
                else
                {
                    cerr << "Error reading input. Please try again.\n";
                    cin.clear();
                    cin.ignore(numeric_limits<std::streamsize>::max(), '\n');
                }
            }
            break;
        }
    }

    case 2:
        cout << "Application still in development. \n";
        break;
    case 3:
        cout << "Application still in development. \n";
        break;
    case 4:
        cout << "Ending Application...\n";
        exit(0);
        break;
    default:
        cout << "Bro read the numbers closely";
    }
    cin.clear();
}
