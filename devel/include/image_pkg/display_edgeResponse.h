// Generated by gencpp from file image_pkg/display_edgeResponse.msg
// DO NOT EDIT!


#ifndef IMAGE_PKG_MESSAGE_DISPLAY_EDGERESPONSE_H
#define IMAGE_PKG_MESSAGE_DISPLAY_EDGERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace image_pkg
{
template <class ContainerAllocator>
struct display_edgeResponse_
{
  typedef display_edgeResponse_<ContainerAllocator> Type;

  display_edgeResponse_()
    : b()  {
    }
  display_edgeResponse_(const ContainerAllocator& _alloc)
    : b(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::image_pkg::display_edgeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::image_pkg::display_edgeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct display_edgeResponse_

typedef ::image_pkg::display_edgeResponse_<std::allocator<void> > display_edgeResponse;

typedef boost::shared_ptr< ::image_pkg::display_edgeResponse > display_edgeResponsePtr;
typedef boost::shared_ptr< ::image_pkg::display_edgeResponse const> display_edgeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::image_pkg::display_edgeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::image_pkg::display_edgeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::image_pkg::display_edgeResponse_<ContainerAllocator1> & lhs, const ::image_pkg::display_edgeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::image_pkg::display_edgeResponse_<ContainerAllocator1> & lhs, const ::image_pkg::display_edgeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace image_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_pkg::display_edgeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_pkg::display_edgeResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_pkg::display_edgeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18056e3ea359fc45f1d263e1c55228d3";
  }

  static const char* value(const ::image_pkg::display_edgeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18056e3ea359fc45ULL;
  static const uint64_t static_value2 = 0xf1d263e1c55228d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "image_pkg/display_edgeResponse";
  }

  static const char* value(const ::image_pkg::display_edgeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image b\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::image_pkg::display_edgeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct display_edgeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::image_pkg::display_edgeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::image_pkg::display_edgeResponse_<ContainerAllocator>& v)
  {
    s << indent << "b: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGE_PKG_MESSAGE_DISPLAY_EDGERESPONSE_H
