Backup Script (Bash)


This project provides a simple and automated backup solution using a Bash script.
The script compresses a selected directory and stores it in a backup folder with a timestamped filename.
Features
Automatically creates compressed .tar.gz backups
Timestamped backup filenames
Creates the backup directory if it does not exist
Suitable for cron automation
Beginner-friendly DevOps practice


How It Works=>
The script:
1. Defines the source directory to back up
2. Defines the destination directory
3. Generates a filename based on the current date and time
4. Uses tar to create a compressed archive
5. Saves the archive in the backups folder


Usage=>
1. Clone the repository : git clone https://github.com/amirxebi/log-monitorig.git
cd log-monitoring
2. Make the script executable : chmod +x script.sh
3. Run the script : ./script.sh


Configure Source and Backup Paths=>
You can modify these lines inside script.sh : SOURCE_DIR="$HOME/projects"
BACKUP_DIR="$HOME/backups"

Automate with Cron (Optional)=>
To run the script daily at 2 AM:
1. crontab -e
2. 0 2 * * * /path/to/script.shl

Requirements=>
Linux system
Bash shell
tar installed (default on most systems)

Thank you :)