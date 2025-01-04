# IPTV M3U8 Builder/Generator

You need to have the following installed or configured on your machine:

- Foxtel Now active account
- Windows 10/11 laptop
- Python (latest)
- Git (latest)
- Google Chrome
- Proper github permission to git@github.com:githubuseraccount/reponame.git

### Prep

1. Copy\download the iptv folder.
2. Rename the `detailsenv.txt` to `.env`.
3. In the `.env` file, set the `FOXTEL_USERNAME` and `FOXTEL_PASSWORD` to the
   appropriate values and save the file.
4. Create a GitHub repository in order to save generated M3U8 playlist.
5. After repository created edit the `scrape.py`and instert your repo address `git@github.com:githubuseraccount/reponame.git`
6. In the `start.bat` file, update/modify the path to the extracted iptv folder location

### Setting up permissions to GitHub repo
- SSH generated key is required for laptop connection to GitHub repo. 
- This allows the script to upload the M3U8 files to the requested repo. 
- See below link for instructions on how to set this up.

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Some handy commands for the above to work.

### Generating the SSH key
- ssh-keygen -t ed25519 -C your_email@example.com

### Verifying SSH key should work
- ssh -T git@github.com

### Running the scrape
(note, the links that get generated expire every 5.5 hours, so a schedule is needed in order to keep the channels active)

For windows:

1. Open a powershell window as Administrator.
2. Change directory to the location where this application is installed/extracted.
3. Run `./scripts/windows/start.bat` to start running the scrape.

For macOS: Not tested, may not work.

1. Open a terminal window.
2. Change directory to the location where this application is installed/extracted.
3. Run `./scripts/macos/start.sh` to start running the scrape.
