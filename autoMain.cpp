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
                        int imageTotal = findJPG().size() + findPNG().size() + findWebp().size() + findHEIC().size() + findSVG().size();
                        cout << imageTotal << " image files found in the folder." << "\n";
                        cout << "\n";
                        cout << "          TEXT             " << "\n";
                        int textTotal = findDoc().size() + findPDF().size() + findTXT().size();
                        cout << textTotal << " text files found in the folder." << "\n";
                        cout << "\n";
                        cout << "         VIDEOS            " << "\n";
                        int videoTotal = findMP4().size() + findMOV().size();
                        cout << videoTotal << " Video files found in the folder." << "\n";
                        cout << "\n";
                        cout << "         AUDIO            " << "\n";
                        int audioTotal = findMP3().size();
                        cout << audioTotal << " Audio files found in the folder." << "\n";
                        cout << "\n";

                        cout << "Files have been added to Respective Folders";
                        break;
                    }
                    else if (lowerChoice == "n")
                    {
                        cout << "Program is cancelled.\n";
                        break;
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

    case 4:
        cout << "Ending File...";
        exit(0);
        break;
    default:
        cout << "Bro read the numbers closely";
    }
    cin.clear();
}