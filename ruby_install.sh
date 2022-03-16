git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install -l
CONFIGURE_OPTS='--disable-install-rdoc' rbenv install 2.6.3
rbenv global 2.6.3
