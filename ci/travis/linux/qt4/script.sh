export PYTHONPATH=${HOME}/osgeo4travis/lib/python2.7/site-packages/
export PATH=${HOME}/osgeo4travis/bin:${HOME}/osgeo4travis/sbin:${PATH}
export LD_LIBRARY_PATH=${HOME}/osgeo4travis/lib
export CTEST_PARALLEL_LEVEL=1
export CCACHE_CPP2=yes

xvfb-run ctest -V -E 'qgis_openstreetmaptest|qgis_wcsprovidertest' -S ./qgis-test-travis.ctest --output-on-failure
