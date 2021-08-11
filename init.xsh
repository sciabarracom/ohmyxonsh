xontrib load prompt_bar

def _vx(args):
  pushd $HOME/.ohmyxonsh
  $file = args[0]+".xsh" if len(args) >0 else "xonshrc"
  vi $file
  source $HOME/.xonshrc
  popd

def _vxsync(args):
  pushd $HOME/.ohmyxonsh
  git add xonshrc *.xsh
  git commit -m "edit $file" -a
  git pull origin main
  git push origin main
  popd

aliases |= { 
  "vx": _vx,
  "vxsync": _vxsync,
  "l": "ls",
  "ll": "ls -l",
} 

for i in $(echo $HOME/.ohmyxonsh/*.xsh).split():
  if not i.endswith("init.xsh"):
    print("loading %s" %i)
    source @(i)

