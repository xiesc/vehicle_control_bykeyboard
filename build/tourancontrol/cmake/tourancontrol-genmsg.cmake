# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tourancontrol: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itourancontrol:/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tourancontrol_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_custom_target(_tourancontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tourancontrol" "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tourancontrol
  "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tourancontrol
)

### Generating Services

### Generating Module File
_generate_module_cpp(tourancontrol
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tourancontrol
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tourancontrol_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tourancontrol_generate_messages tourancontrol_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_dependencies(tourancontrol_generate_messages_cpp _tourancontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tourancontrol_gencpp)
add_dependencies(tourancontrol_gencpp tourancontrol_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tourancontrol_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tourancontrol
  "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tourancontrol
)

### Generating Services

### Generating Module File
_generate_module_eus(tourancontrol
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tourancontrol
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tourancontrol_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tourancontrol_generate_messages tourancontrol_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_dependencies(tourancontrol_generate_messages_eus _tourancontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tourancontrol_geneus)
add_dependencies(tourancontrol_geneus tourancontrol_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tourancontrol_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tourancontrol
  "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tourancontrol
)

### Generating Services

### Generating Module File
_generate_module_lisp(tourancontrol
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tourancontrol
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tourancontrol_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tourancontrol_generate_messages tourancontrol_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_dependencies(tourancontrol_generate_messages_lisp _tourancontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tourancontrol_genlisp)
add_dependencies(tourancontrol_genlisp tourancontrol_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tourancontrol_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tourancontrol
  "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tourancontrol
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tourancontrol
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tourancontrol
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tourancontrol_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tourancontrol_generate_messages tourancontrol_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_dependencies(tourancontrol_generate_messages_nodejs _tourancontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tourancontrol_gennodejs)
add_dependencies(tourancontrol_gennodejs tourancontrol_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tourancontrol_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tourancontrol
  "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tourancontrol
)

### Generating Services

### Generating Module File
_generate_module_py(tourancontrol
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tourancontrol
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tourancontrol_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tourancontrol_generate_messages tourancontrol_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiesc/xieshichao/vehicle_control_by_keyboard/src/tourancontrol/msg/tourancontrol.msg" NAME_WE)
add_dependencies(tourancontrol_generate_messages_py _tourancontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tourancontrol_genpy)
add_dependencies(tourancontrol_genpy tourancontrol_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tourancontrol_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tourancontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tourancontrol
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tourancontrol_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tourancontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tourancontrol
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tourancontrol_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tourancontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tourancontrol
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tourancontrol_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tourancontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tourancontrol
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tourancontrol_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tourancontrol)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tourancontrol\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tourancontrol
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tourancontrol_generate_messages_py std_msgs_generate_messages_py)
endif()
