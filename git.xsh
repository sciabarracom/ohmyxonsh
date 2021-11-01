
def _gpush(args):
    cur = $(git rev-parse --abbrev-ref HEAD).strip()
    git push origin @(cur)

aliases |= { 
  "g": "git",
  "gst": "git status",
  "ga": "git add",
  "gb": "git branch", 
  "gco": "git checkout",
  "gc": "git commit",
  "gcam": "git commit -a -m",
  "gcmsg": "git commit -m", 
  "gpush": _gpush,
} 

