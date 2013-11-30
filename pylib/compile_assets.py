from scss import Scss
import os

# Compile any scss files
compiler = Scss()
for root, dirs, files in os.walk("."):
	for f in files:
		if f.endswith(".scss"):
			cssfilename = os.path.join(root,f[:-5])+".css"
			with open(os.path.join(root,f),'r') as scssfile, \
			 open(cssfilename,'w') as cssfile:
				cssfile.write(compiler.compile(scssfile.read()))
