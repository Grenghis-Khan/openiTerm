# Purpose

Open iTerm in the current directory from the Finder toolbar with a one click action.

## Setup

1. Open Automator (use Spotlight search by pressing Command + Space and typing "Automator")
2. Click "New Document"
3. Select "Application" and click "Choose"
4. Search "Actions" for "Run AppleScript"
5. Drag "Run AppleScript" to the right to the workflow panel
6. Copy and paste the code from "openiTerm.scpt" into the script window
7. Save the service
8. Open the app location in Finder and drag it to the Finder toolbar while holding the Command key
9. Use the service in Finder

## Custom Icon

### Recommended Method

1. Copy the ApplicationStubig.icns
2. In Finder, right-click on your Automator app and select "Show Package Contents"
3. Navigate to Contents/Resources
4. Replace the existing "ApplicationStubig.icns" file with the custom .icns file

### Alternative Method

1. Copy the ApplicationStubig.icns
2. In Finder, right-click on your Automator app and select "Get Info"
3. Click the current icon in the top left corner so it's highlighted
4. Press Command + V to paste the custom icon
5. Close the window

## Test

1. Open Finder and click the custom icon in the toolbar
