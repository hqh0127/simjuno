CMTPATH=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
CMT_tag=$(tag)
CMTROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CMT/v1r26
CMT_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CMT/v1r26
CMTVERSION=v1r26
CMT_offset=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs
cmt_hardware_query_command=uname -m
cmt_hardware=`$(cmt_hardware_query_command)`
cmt_system_version_query_command=${CMTROOT}/mgr/cmt_linux_version.sh | ${CMTROOT}/mgr/cmt_filter_version.sh
cmt_system_version=`$(cmt_system_version_query_command)`
cmt_compiler_version_query_command=${CMTROOT}/mgr/cmt_gcc_version.sh | ${CMTROOT}/mgr/cmt_filter3_version.sh
cmt_compiler_version=`$(cmt_compiler_version_query_command)`
PATH=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/InstallArea/${CMTCONFIG}/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/InstallArea/${CMTCONFIG}/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CMT/v1r26/${CMTBIN}:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Geant4/9.4.p04/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Xercesc/3.1.1/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Python/2.7.6/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/libmore/0.8.3/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/HepMC/2.06.09/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/gsl/1.16/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/GCCXML/master/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Cmake/2.8.12.1/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CLHEP/2.1.0.1/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Boost/1.55.0/bin:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/ROOT/5.34.11/bin:/afs/ihep.ac.cn/users/w/wenjie/workfs/Simulation/geant4/bin/Linux-g++:/afs/ihep.ac.cn/soft/common/sysgroup/hep_job/bin:/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/bin:/usr/bin:/usr/externals/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/sbin:/usr/java/latest/bin
CLASSPATH=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CMT/v1r26/java
debug_option=-g
cc=gcc
ccomp=$(cc) -c $(includes) $(cdebugflags) $(cflags) $(pp_cflags)
clink=$(cc) $(clinkflags) $(cdebugflags)
ppcmd=-I
preproc=c++ -MD -c 
cpp=g++
cppflags=-fPIC -pipe -ansi -W -Wall -Wwrite-strings -Wpointer-arith -Woverloaded-virtual 
pp_cppflags=-D_GNU_SOURCE
cppcomp=$(cpp) -c $(includes) $(cppdebugflags) $(cppflags) $(pp_cppflags)
cpplink=$(cpp) $(cpplinkflags) $(cppdebugflags)
for=g77
fflags=$(debug_option)
fcomp=$(for) -c $(fincludes) $(fflags) $(pp_fflags)
flink=$(for) $(flinkflags)
javacomp=javac -classpath $(src):$(CLASSPATH) 
javacopy=cp
jar=jar
X11_cflags=-I/usr/include
Xm_cflags=-I/usr/include
X_linkopts=-L/usr/X11R6/lib -lXm -lXt -lXext -lX11 -lm
lex=lex $(lexflags)
yaccflags= -l -d 
yacc=yacc $(yaccflags)
ar=ar cr
ranlib=ranlib
make_shlib=${CMTROOT}/mgr/cmt_make_shlib_common.sh extract
shlibsuffix=so
shlibbuilder=g++ $(cmt_installarea_linkopts) 
shlibflags=-shared
symlink=/bin/ln -fs 
symunlink=/bin/rm -f 
library_install_command=python $(SniperPolicy_root)/cmt/fragments/install.py -xCVS -x.svn -x*~ -x*.stamp -s --log=./install.history 
build_library_links=$(cmtexe) build library_links -tag=$(tags)
remove_library_links=$(cmtexe) remove library_links -tag=$(tags)
cmtexe=${CMTROOT}/${CMTBIN}/cmt.exe
build_prototype=$(cmtexe) build prototype
build_dependencies=$(cmtexe) -tag=$(tags) build dependencies
build_triggers=$(cmtexe) build triggers
format_dependencies=${CMTROOT}/mgr/cmt_format_deps.sh
implied_library_prefix=-l
SHELL=/bin/sh
q="
src=../src/
doc=../doc/
inc=../src/
mgr=../cmt/
application_suffix=.exe
library_prefix=lib
unlock_command=rm -rf 
lock_name=cmt
lock_suffix=.lock
lock_file=${lock_name}${lock_suffix}
svn_checkout_command=python ${CMTROOT}/mgr/cmt_svn_checkout.py 
gmake_hosts=lx1 rsplus lxtest as7 dxplus ax7 hp2 aleph hp1 hpplus papou1-fe atlas
make_hosts=virgo-control1 rio0a vmpc38a
everywhere=hosts
install_command=python $(SniperPolicy_root)/cmt/fragments/install.py -xCVS -x.svn -x*~ -x*.stamp --log=./install.history 
uninstall_command=python $(SniperPolicy_root)/cmt/fragments/install.py -u --log=./install.history 
cmt_installarea_command=python $(SniperPolicy_root)/cmt/fragments/install.py -xCVS -x.svn -x*~ -x*.stamp -s --log=./install.history 
cmt_uninstallarea_command=/bin/rm -f 
cmt_install_area_command=$(cmt_installarea_command)
cmt_uninstall_area_command=$(cmt_uninstallarea_command)
cmt_install_action=$(CMTROOT)/mgr/cmt_install_action.sh
cmt_installdir_action=$(CMTROOT)/mgr/cmt_installdir_action.sh
cmt_uninstall_action=$(CMTROOT)/mgr/cmt_uninstall_action.sh
cmt_uninstalldir_action=$(CMTROOT)/mgr/cmt_uninstalldir_action.sh
mkdir=mkdir
cmt_cvs_protocol_level=v1r1
cmt_installarea_prefix=InstallArea
CMT_PATH_remove_regexp=/[^/]*/
CMT_PATH_remove_share_regexp=/share/
NEWCMTCONFIG=x86_64-sl65-gcc447
PhysiSim_tag=$(tag)
PHYSISIMROOT=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/PhysiSim
PhysiSim_root=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/PhysiSim
PHYSISIMVERSION=v0
PhysiSim_cmtpath=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline
PhysiSim_offset=Simulation/DetSimV2
PhysiSim_project=offline
SniperRelease_tag=$(tag)
SNIPERRELEASEROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperRelease
SniperRelease_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperRelease
SNIPERRELEASEVERSION=v2
SniperRelease_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
SniperRelease_project=sniper
SniperPolicy_tag=$(tag)
SNIPERPOLICYROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperPolicy
SniperPolicy_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperPolicy
SNIPERPOLICYVERSION=v0
SniperPolicy_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
SniperPolicy_project=sniper
libraryshr_linkopts=-fPIC -ldl -Wl,--as-needed -Wl,--no-undefined 
application_linkopts=-Wl,--export-dynamic 
BINDIR=$(tag)
remove_command=$(cmt_uninstallarea_command)
SniperKernel_tag=$(tag)
SNIPERKERNELROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperKernel
SniperKernel_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperKernel
SNIPERKERNELVERSION=v2
SniperKernel_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
SniperKernel_project=sniper
Boost_tag=$(tag)
BOOSTROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Boost
Boost_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Boost
BOOSTVERSION=v0
Boost_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
Boost_offset=Externals
Boost_project=ExternalInterface
Python_tag=$(tag)
PYTHONROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Python
Python_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Python
PYTHONVERSION=v0
Python_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
Python_offset=Externals
Python_project=ExternalInterface
Python_linkopts= `pkg-config --libs python` 
Python_cppflags= `pkg-config --cflags python` 
Boost_home=${JUNO_EXTLIB_Boost_HOME}
Boost_linkopts= -L$(Boost_home)/lib  -lboost_python 
includes= $(ppcmd)"$(srcdir)" $(ppcmd)"/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/PhysiSim/include" $(ppcmd)"/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/InstallArea/include" $(ppcmd)"/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/InstallArea/include" $(use_includes)
PYTHONPATH=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/InstallArea/python:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/InstallArea/python:/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/InstallArea/amd64_linux26/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/InstallArea/amd64_linux26/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Python/2.7.6/lib/./python2.7/lib-dynload:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/ROOT/5.34.11/lib:/usr/lib64/python
SniperKernel_linkopts= -lSniperKernel  -lSniperPython 
SniperKernel_stamps=${SNIPERKERNELROOT}/${BINDIR}/SniperPython.stamp 
SniperKernel_linker_library=SniperPython
SniperPython_dependencies=SniperKernel
SniperPython_shlibflags= -lSniperKernel 
DataBuffer_tag=$(tag)
DATABUFFERROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperUtil/DataBuffer
DataBuffer_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperUtil/DataBuffer
DATABUFFERVERSION=v0
DataBuffer_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
DataBuffer_offset=SniperUtil
DataBuffer_project=sniper
HelloWorld_tag=$(tag)
HELLOWORLDROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/Examples/HelloWorld
HelloWorld_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/Examples/HelloWorld
HELLOWORLDVERSION=v1
HelloWorld_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
HelloWorld_offset=Examples
HelloWorld_project=sniper
RootWriter_tag=$(tag)
ROOTWRITERROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperSvc/RootWriter
RootWriter_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/SniperSvc/RootWriter
ROOTWRITERVERSION=v0
RootWriter_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
RootWriter_offset=SniperSvc
RootWriter_project=sniper
ROOT_tag=$(tag)
ROOTROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/ROOT
ROOT_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/ROOT
ROOTVERSION=v0
ROOT_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
ROOT_offset=Externals
ROOT_project=ExternalInterface
ROOT_home=${JUNO_EXTLIB_ROOT_HOME}
ROOT_cppflags=`root-config --cflags` -Wno-long-long 
ROOT_linkopts=`root-config --evelibs` -lPyROOT 
rootcint="$(ROOT_home)/bin/rootcint"
RootWriter_linkopts= -lRootWriter 
RootWriter_stamps=${ROOTWRITERROOT}/${BINDIR}/RootWriter.stamp 
RootWriter_linker_library=RootWriter
DummyAlg_tag=$(tag)
DUMMYALGROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/Examples/DummyAlg
DummyAlg_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/Examples/DummyAlg
DUMMYALGVERSION=v0
DummyAlg_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
DummyAlg_offset=Examples
DummyAlg_project=sniper
DetSimPolicy_tag=$(tag)
DETSIMPOLICYROOT=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/DetSimPolicy
DetSimPolicy_root=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/DetSimPolicy
DETSIMPOLICYVERSION=v0
DetSimPolicy_cmtpath=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline
DetSimPolicy_offset=Simulation/DetSimV2
DetSimPolicy_project=offline
Geant4_tag=$(tag)
GEANT4ROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Geant4
Geant4_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Geant4
GEANT4VERSION=v0
Geant4_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
Geant4_offset=Externals
Geant4_project=ExternalInterface
Geant4_home=${JUNO_EXTLIB_Geant4_HOME}
Geant4_cppflags= `geant4-config --cflags` 
Geant4_linkopts= `geant4-config --libs` 
CLHEP_tag=$(tag)
CLHEPROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/CLHEP
CLHEP_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/CLHEP
CLHEPVERSION=v0
CLHEP_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
CLHEP_offset=Externals
CLHEP_project=ExternalInterface
CLHEP_linkopts= `clhep-config --libs` 
CLHEP_cppflags= `clhep-config --include` 
Xercesc_tag=$(tag)
XERCESCROOT=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Xercesc
Xercesc_root=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface/Externals/Xercesc
XERCESCVERSION=v0
Xercesc_cmtpath=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
Xercesc_offset=Externals
Xercesc_project=ExternalInterface
Xercesc_linkopts= `pkg-config --libs xerces-c` 
Xercesc_cppflags= `pkg-config --cflags xerces-c` 
PhysiSim_linkopts= -lPhysiSim 
PhysiSim_shlibflags=$(libraryshr_linkopts) $(cmt_installarea_linkopts) $(PhysiSim_use_linkopts)
PhysiSim_use_linkopts=    $(SniperRelease_linkopts)  $(DataBuffer_linkopts)  $(HelloWorld_linkopts)  $(DummyAlg_linkopts)  $(RootWriter_linkopts)  $(SniperKernel_linkopts)  $(SniperPolicy_linkopts)  $(Boost_linkopts)  $(Python_linkopts)  $(ROOT_linkopts)  $(DetSimPolicy_linkopts)  $(Geant4_linkopts)  $(CLHEP_linkopts)  $(Xercesc_linkopts) 
PhysiSim_stamps=${PHYSISIMROOT}/${BINDIR}/PhysiSim.stamp 
PhysiSim_linker_library=PhysiSim
DAYA_DATA_DIR=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/PhysiSim/data
tag=amd64_linux26
package=PhysiSim
version=v0
PACKAGE_ROOT=$(PHYSISIMROOT)
srcdir=../src
bin=../$(PhysiSim_tag)/
javabin=../classes/
mgrdir=cmt
BIN=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/Simulation/DetSimV2/PhysiSim/amd64_linux26/
project=offline
cmt_installarea_paths= $(cmt_installarea_prefix)/$(CMTCONFIG)/bin $(sniper_installarea_prefix)/$(CMTCONFIG)/lib $(sniper_installarea_prefix)/share/lib $(sniper_installarea_prefix)/share/bin $(offline_installarea_prefix)/$(CMTCONFIG)/lib $(offline_installarea_prefix)/share/lib $(offline_installarea_prefix)/share/bin
use_linkopts= $(cmt_installarea_linkopts)   $(PhysiSim_linkopts)  $(SniperRelease_linkopts)  $(DataBuffer_linkopts)  $(HelloWorld_linkopts)  $(DummyAlg_linkopts)  $(RootWriter_linkopts)  $(SniperKernel_linkopts)  $(SniperPolicy_linkopts)  $(Boost_linkopts)  $(Python_linkopts)  $(ROOT_linkopts)  $(DetSimPolicy_linkopts)  $(Geant4_linkopts)  $(CLHEP_linkopts)  $(Xercesc_linkopts) 
ExternalInterface_installarea_prefix=$(cmt_installarea_prefix)
ExternalInterface_installarea_prefix_remove=$(ExternalInterface_installarea_prefix)
LD_LIBRARY_PATH=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/InstallArea/${CMTCONFIG}/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/InstallArea/${CMTCONFIG}/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Geant4/9.4.p04/lib/geant4-9.4.4/Linux-g++:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/CLHEP/2.1.0.1/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Geant4/9.4.p04/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Xercesc/3.1.1/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Python/2.7.6/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/libmore/0.8.3/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/HepMC/2.06.09/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/gsl/1.16/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Boost/1.55.0/lib:/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/ROOT/5.34.11/lib:/usr/lib64/classads:/usr/lib64:/usr/lib
sniper_installarea_prefix=$(cmt_installarea_prefix)
sniper_installarea_prefix_remove=$(sniper_installarea_prefix)
offline_installarea_prefix=$(cmt_installarea_prefix)
offline_installarea_prefix_remove=$(offline_installarea_prefix)
cmt_installarea_linkopts= -L/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/$(offline_installarea_prefix)/$(CMTCONFIG)/lib  -L/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/$(sniper_installarea_prefix)/$(CMTCONFIG)/lib 
ExternalInterface_home=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/ExternalInterface
sniper_home=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper
offline_home=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline
offline_install_include= /afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/$(offline_installarea_prefix)/include 
sniper_install_include= /afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/$(sniper_installarea_prefix)/include 
sniper_python_path=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/$(sniper_installarea_prefix)/$(tag)/lib
offline_python_path=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/$(offline_installarea_prefix)/$(tag)/lib
sniper_install_python=/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r4/sniper/$(sniper_installarea_prefix)/python
offline_install_python=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/$(offline_installarea_prefix)/python
CMTINSTALLAREA=/afs/ihep.ac.cn/users/w/wenjie/junofs/juno_trunk/offline/$(cmt_installarea_prefix)
use_requirements=requirements $(CMT_root)/mgr/requirements $(SniperRelease_root)/cmt/requirements $(DataBuffer_root)/cmt/requirements $(HelloWorld_root)/cmt/requirements $(DummyAlg_root)/cmt/requirements $(RootWriter_root)/cmt/requirements $(SniperKernel_root)/cmt/requirements $(SniperPolicy_root)/cmt/requirements $(Boost_root)/cmt/requirements $(Python_root)/cmt/requirements $(ROOT_root)/cmt/requirements $(DetSimPolicy_root)/cmt/requirements $(Geant4_root)/cmt/requirements $(CLHEP_root)/cmt/requirements $(Xercesc_root)/cmt/requirements 
use_includes= $(ppcmd)"$(SniperRelease_root)/src" $(ppcmd)"$(DataBuffer_root)/src" $(ppcmd)"$(HelloWorld_root)/src" $(ppcmd)"$(DummyAlg_root)/src" $(ppcmd)"$(RootWriter_root)/src" $(ppcmd)"$(SniperKernel_root)/src" $(ppcmd)"$(SniperPolicy_root)/src" $(ppcmd)"/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Boost/1.55.0/include" $(ppcmd)"$(Python_root)/src" $(ppcmd)"/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/ROOT/5.34.11/include" $(ppcmd)"$(DetSimPolicy_root)/src" $(ppcmd)"$(Geant4_root)/src" $(ppcmd)"/afs/ihep.ac.cn/soft/juno/JUNO-ALL-SLC6/Release/J16v1r1/ExternalLibs/Geant4/9.4.p04/include/geant4" $(ppcmd)"$(CLHEP_root)/src" $(ppcmd)"$(Xercesc_root)/src" 
use_fincludes= $(use_includes)
use_stamps=  $(PhysiSim_stamps)  $(SniperRelease_stamps)  $(DataBuffer_stamps)  $(HelloWorld_stamps)  $(DummyAlg_stamps)  $(RootWriter_stamps)  $(SniperKernel_stamps)  $(SniperPolicy_stamps)  $(Boost_stamps)  $(Python_stamps)  $(ROOT_stamps)  $(DetSimPolicy_stamps)  $(Geant4_stamps)  $(CLHEP_stamps)  $(Xercesc_stamps) 
use_cflags=  $(PhysiSim_cflags)  $(SniperRelease_cflags)  $(DataBuffer_cflags)  $(HelloWorld_cflags)  $(DummyAlg_cflags)  $(RootWriter_cflags)  $(SniperKernel_cflags)  $(SniperPolicy_cflags)  $(Boost_cflags)  $(Python_cflags)  $(ROOT_cflags)  $(DetSimPolicy_cflags)  $(Geant4_cflags)  $(CLHEP_cflags)  $(Xercesc_cflags) 
use_pp_cflags=  $(PhysiSim_pp_cflags)  $(SniperRelease_pp_cflags)  $(DataBuffer_pp_cflags)  $(HelloWorld_pp_cflags)  $(DummyAlg_pp_cflags)  $(RootWriter_pp_cflags)  $(SniperKernel_pp_cflags)  $(SniperPolicy_pp_cflags)  $(Boost_pp_cflags)  $(Python_pp_cflags)  $(ROOT_pp_cflags)  $(DetSimPolicy_pp_cflags)  $(Geant4_pp_cflags)  $(CLHEP_pp_cflags)  $(Xercesc_pp_cflags) 
use_cppflags=  $(PhysiSim_cppflags)  $(SniperRelease_cppflags)  $(DataBuffer_cppflags)  $(HelloWorld_cppflags)  $(DummyAlg_cppflags)  $(RootWriter_cppflags)  $(SniperKernel_cppflags)  $(SniperPolicy_cppflags)  $(Boost_cppflags)  $(Python_cppflags)  $(ROOT_cppflags)  $(DetSimPolicy_cppflags)  $(Geant4_cppflags)  $(CLHEP_cppflags)  $(Xercesc_cppflags) 
use_pp_cppflags=  $(PhysiSim_pp_cppflags)  $(SniperRelease_pp_cppflags)  $(DataBuffer_pp_cppflags)  $(HelloWorld_pp_cppflags)  $(DummyAlg_pp_cppflags)  $(RootWriter_pp_cppflags)  $(SniperKernel_pp_cppflags)  $(SniperPolicy_pp_cppflags)  $(Boost_pp_cppflags)  $(Python_pp_cppflags)  $(ROOT_pp_cppflags)  $(DetSimPolicy_pp_cppflags)  $(Geant4_pp_cppflags)  $(CLHEP_pp_cppflags)  $(Xercesc_pp_cppflags) 
use_fflags=  $(PhysiSim_fflags)  $(SniperRelease_fflags)  $(DataBuffer_fflags)  $(HelloWorld_fflags)  $(DummyAlg_fflags)  $(RootWriter_fflags)  $(SniperKernel_fflags)  $(SniperPolicy_fflags)  $(Boost_fflags)  $(Python_fflags)  $(ROOT_fflags)  $(DetSimPolicy_fflags)  $(Geant4_fflags)  $(CLHEP_fflags)  $(Xercesc_fflags) 
use_pp_fflags=  $(PhysiSim_pp_fflags)  $(SniperRelease_pp_fflags)  $(DataBuffer_pp_fflags)  $(HelloWorld_pp_fflags)  $(DummyAlg_pp_fflags)  $(RootWriter_pp_fflags)  $(SniperKernel_pp_fflags)  $(SniperPolicy_pp_fflags)  $(Boost_pp_fflags)  $(Python_pp_fflags)  $(ROOT_pp_fflags)  $(DetSimPolicy_pp_fflags)  $(Geant4_pp_fflags)  $(CLHEP_pp_fflags)  $(Xercesc_pp_fflags) 
use_libraries= $(SniperRelease_libraries)  $(DataBuffer_libraries)  $(HelloWorld_libraries)  $(DummyAlg_libraries)  $(RootWriter_libraries)  $(SniperKernel_libraries)  $(SniperPolicy_libraries)  $(Boost_libraries)  $(Python_libraries)  $(ROOT_libraries)  $(DetSimPolicy_libraries)  $(Geant4_libraries)  $(CLHEP_libraries)  $(Xercesc_libraries) 
fincludes= $(includes)
PhysiSim_GUID={88BF15AB-5A2D-4bea-B64F-02752C2A1F4F}
make_GUID={88BF15AB-5A2D-4bea-B64F-02752C2A1F4F}
constituents= PhysiSim 
all_constituents= $(constituents)
constituentsclean= PhysiSimclean 
all_constituentsclean= $(constituentsclean)
cmt_actions_constituents= make 
cmt_actions_constituentsclean= makeclean 
PhysiSimprototype_dependencies= $(PhysiSimcompile_dependencies)