// Generated by gencpp from file color_shape_pair_pkg/shape_eventRequest.msg
// DO NOT EDIT!


#ifndef COLOR_SHAPE_PAIR_PKG_MESSAGE_SHAPE_EVENTREQUEST_H
#define COLOR_SHAPE_PAIR_PKG_MESSAGE_SHAPE_EVENTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace color_shape_pair_pkg
{
template <class ContainerAllocator>
struct shape_eventRequest_
{
  typedef shape_eventRequest_<ContainerAllocator> Type;

  shape_eventRequest_()
    : shape(0)  {
    }
  shape_eventRequest_(const ContainerAllocator& _alloc)
    : shape(0)  {
  (void)_alloc;
    }



   typedef int64_t _shape_type;
  _shape_type shape;





  typedef boost::shared_ptr< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> const> ConstPtr;

}; // struct shape_eventRequest_

typedef ::color_shape_pair_pkg::shape_eventRequest_<std::allocator<void> > shape_eventRequest;

typedef boost::shared_ptr< ::color_shape_pair_pkg::shape_eventRequest > shape_eventRequestPtr;
typedef boost::shared_ptr< ::color_shape_pair_pkg::shape_eventRequest const> shape_eventRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator1> & lhs, const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator2> & rhs)
{
  return lhs.shape == rhs.shape;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator1> & lhs, const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace color_shape_pair_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9ee65fe15ebe84e535bbd0087a9af6ce";
  }

  static const char* value(const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9ee65fe15ebe84e5ULL;
  static const uint64_t static_value2 = 0x35bbd0087a9af6ceULL;
};

template<class ContainerAllocator>
struct DataType< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "color_shape_pair_pkg/shape_eventRequest";
  }

  static const char* value(const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 shape\n"
;
  }

  static const char* value(const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.shape);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct shape_eventRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::color_shape_pair_pkg::shape_eventRequest_<ContainerAllocator>& v)
  {
    s << indent << "shape: ";
    Printer<int64_t>::stream(s, indent + "  ", v.shape);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COLOR_SHAPE_PAIR_PKG_MESSAGE_SHAPE_EVENTREQUEST_H