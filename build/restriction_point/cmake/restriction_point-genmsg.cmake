# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "restriction_point: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(restriction_point_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_custom_target(_restriction_point_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "restriction_point" "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(restriction_point
  "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restriction_point
)

### Generating Module File
_generate_module_cpp(restriction_point
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restriction_point
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(restriction_point_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(restriction_point_generate_messages restriction_point_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_dependencies(restriction_point_generate_messages_cpp _restriction_point_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restriction_point_gencpp)
add_dependencies(restriction_point_gencpp restriction_point_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restriction_point_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(restriction_point
  "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restriction_point
)

### Generating Module File
_generate_module_eus(restriction_point
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restriction_point
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(restriction_point_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(restriction_point_generate_messages restriction_point_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_dependencies(restriction_point_generate_messages_eus _restriction_point_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restriction_point_geneus)
add_dependencies(restriction_point_geneus restriction_point_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restriction_point_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(restriction_point
  "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restriction_point
)

### Generating Module File
_generate_module_lisp(restriction_point
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restriction_point
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(restriction_point_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(restriction_point_generate_messages restriction_point_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_dependencies(restriction_point_generate_messages_lisp _restriction_point_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restriction_point_genlisp)
add_dependencies(restriction_point_genlisp restriction_point_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restriction_point_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(restriction_point
  "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restriction_point
)

### Generating Module File
_generate_module_nodejs(restriction_point
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restriction_point
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(restriction_point_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(restriction_point_generate_messages restriction_point_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_dependencies(restriction_point_generate_messages_nodejs _restriction_point_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restriction_point_gennodejs)
add_dependencies(restriction_point_gennodejs restriction_point_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restriction_point_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(restriction_point
  "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restriction_point
)

### Generating Module File
_generate_module_py(restriction_point
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restriction_point
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(restriction_point_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(restriction_point_generate_messages restriction_point_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuclearfree/catkin_ws/disaster_response/src/restriction_point/srv/test_srv.srv" NAME_WE)
add_dependencies(restriction_point_generate_messages_py _restriction_point_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(restriction_point_genpy)
add_dependencies(restriction_point_genpy restriction_point_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS restriction_point_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restriction_point)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/restriction_point
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(restriction_point_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restriction_point)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/restriction_point
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(restriction_point_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restriction_point)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/restriction_point
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(restriction_point_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restriction_point)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/restriction_point
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(restriction_point_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restriction_point)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restriction_point\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/restriction_point
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(restriction_point_generate_messages_py std_msgs_generate_messages_py)
endif()
