# Step 1: Install WSL 2
wsl --install

# Step 2: Install Windows Terminal
# (Download and install Windows Terminal from Microsoft Store manually)

# Step 3: Set up Linux username and password in WSL2
# (Follow on-screen instructions)

# Step 4: Update Ubuntu system
wsl sudo apt update
wsl sudo apt upgrade

# Step 5: Install Java 21 in WSL2
wsl sudo apt install openjdk-21-jdk

# Step 6: Install Maestro
curl -Ls "https://get.maestro.mobile.dev" | bash

# Step 7: Check Maestro version
maestro --version

# Step 8: Set up Android in WSL2 (Follow additional guide steps)

# Download Android command line tools zip file manually from Android official site

# Create a new directory in your home directory
wsl mkdir Android
wsl cd Android

# Unzip the Android command line tools zip file
# Note: Replace <command_line_zip_filename> with the actual filename
wsl unzip ~<command_line_zip_filename>.zip

# Move files to the correct directory
wsl mkdir latest
wsl mv cmdline-tools/* latest/
wsl mv latest/ cmdline-tools/

# Add environment variables to ~/.bashrc
wsl echo 'export ANDROID_HOME=$HOME/Android' >> ~/.bashrc
wsl echo 'export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/:$PATH' >> ~/.bashrc

# Reload the bashrc file
wsl source ~/.bashrc

# Install basic Android utilities
wsl sdkmanager --list
wsl sdkmanager --install "platform-tools"

# Add platform-tools to PATH
wsl echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools/:$PATH' >> ~/.bashrc

# Reload the bashrc file
wsl source ~/.bashrc

# Check Android tools installation
# (Follow additional guide steps for troubleshooting if needed)

# Ensure the Android emulator is running on Windows
# Open PowerShell prompt and run the following command
# (Note: Replace <WINDOWS_IPV4_ADDR> with the actual IPv4 address)
adb -a -P 5037 nodaemon server

# Continue with guide steps for troubleshooting and verification
