# Doxygen

Dockerfile for a minimal doxygen environment, only ~43MB.

# Usage

```bash
cd /path/to/source
docker run --rm -v $(pwd):/data -it nhnghia/doxygen -h
```

For example, to generate callgraph

```bash
cd /path/to/source

# generate Doxyfile
docker run --rm -v $(pwd):/data -it nhnghia/doxygen -g

# Modify the following parameters in Doxyfile:
# HAVE_DOT               = YES
# EXTRACT_ALL            = YES
# EXTRACT_PRIVATE        = YES
# EXTRACT_STATIC         = YES
# CALL_GRAPH             = YES
# RECURSIVE              = YES

# generate documentation
docker run --rm -v $(pwd):/data -it nhnghia/doxygen Doxyfile
```


# Build

```
make
```
