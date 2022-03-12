# Geophysical Visualizations

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rwegener2/geophysviz/HEAD)

Visualizations for the visual and kinesthetic learnings of geophysical waves

## Starting
`julia`
`]`
`activate geophysiviz`
Ctrl + C to get back to repl

OR 
just type 
`jupyter-lab` and kernel is already installed (below)

## Notes

```
import Pkg; Pkg.add("Plots")
import Pkg; Pkg.add("InteractBulma")
```

```
import Pkg; Pkg.add("Interact")
import Pkg; Pkg.add("Colors")
```

### End of day 3/3
Following example notebook of Interact.jl
https://github.com/JuliaGizmos/Interact.jl/blob/master/doc/notebooks/01-Introduction.ipynb

Stuck installing webio_jupyter_extension in the Binder env 
https://juliagizmos.github.io/WebIO.jl/latest/providers/ijulia/

Next step: try just installing the extension in a local dev setting?

### Notes on Installation with interactive widget
create conda env with jupyterlab
in julia repl `add` IJulia adds the kernel to jupyterlab https://towardsdatascience.com/how-to-best-use-julia-with-jupyter-82678a482677
python3 -m pip install --upgrade webio_jupyter_extension in the conda env to get interact to work https://juliagizmos.github.io/WebIO.jl/latest/providers/ijulia/ 
