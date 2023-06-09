// Generated by gencpp from file restriction_point/test_srvResponse.msg
// DO NOT EDIT!


#ifndef RESTRICTION_POINT_MESSAGE_TEST_SRVRESPONSE_H
#define RESTRICTION_POINT_MESSAGE_TEST_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace restriction_point
{
template <class ContainerAllocator>
struct test_srvResponse_
{
  typedef test_srvResponse_<ContainerAllocator> Type;

  test_srvResponse_()
    {
    }
  test_srvResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::restriction_point::test_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::restriction_point::test_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct test_srvResponse_

typedef ::restriction_point::test_srvResponse_<std::allocator<void> > test_srvResponse;

typedef boost::shared_ptr< ::restriction_point::test_srvResponse > test_srvResponsePtr;
typedef boost::shared_ptr< ::restriction_point::test_srvResponse const> test_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::restriction_point::test_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::restriction_point::test_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace restriction_point

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::restriction_point::test_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::restriction_point::test_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::restriction_point::test_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::restriction_point::test_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::restriction_point::test_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::restriction_point::test_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::restriction_point::test_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::restriction_point::test_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::restriction_point::test_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "restriction_point/test_srvResponse";
  }

  static const char* value(const ::restriction_point::test_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::restriction_point::test_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::restriction_point::test_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::restriction_point::test_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct test_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::restriction_point::test_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::restriction_point::test_srvResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // RESTRICTION_POINT_MESSAGE_TEST_SRVRESPONSE_H
