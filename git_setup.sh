# This script pulls down the relevant repos BEFORE the docker
# images are built, since they need to exist on the host in
# order for Vagrant to mount them

# Clone the bare repo (to make vagrant a git remote)
if ! test -d ./facade/facade.git; then
    # Doesn't exist, clone it
    git clone --bare https://github.com/wiota/facade.git ./facade/facade.git
fi

# Fetch updates
cd ./facade/facade.git
git fetch
cd -

# Install hooks
cp ./facade/hooks/* ./facade/facade.git/hooks/
chmod 755 ./facade/facade/git/hooks/*

# Clone a working directory from the bare repo
if ! test -d ./facade/facade; then
    # Doesn't exist, clone it
    git clone ./facade/facade.git ./facade/facade
fi

# Initialize submodules
cd ./facade/facade
git submodule init
git submodule update
git remote set-url origin /vagrant/facade/facade.git
cd -
