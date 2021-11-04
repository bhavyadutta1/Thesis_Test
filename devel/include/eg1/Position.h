// Generated by gencpp from file eg1/Position.msg
// DO NOT EDIT!


#ifndef EG1_MESSAGE_POSITION_H
#define EG1_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace eg1
{
template <class ContainerAllocator>
struct Position_
{
  typedef Position_<ContainerAllocator> Type;

  Position_()
    : profinet_msg()
    , main_portal(0.0)
    , gripper(0.0)  {
    }
  Position_(const ContainerAllocator& _alloc)
    : profinet_msg(_alloc)
    , main_portal(0.0)
    , gripper(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _profinet_msg_type;
  _profinet_msg_type profinet_msg;

   typedef double _main_portal_type;
  _main_portal_type main_portal;

   typedef double _gripper_type;
  _gripper_type gripper;





  typedef boost::shared_ptr< ::eg1::Position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::eg1::Position_<ContainerAllocator> const> ConstPtr;

}; // struct Position_

typedef ::eg1::Position_<std::allocator<void> > Position;

typedef boost::shared_ptr< ::eg1::Position > PositionPtr;
typedef boost::shared_ptr< ::eg1::Position const> PositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::eg1::Position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::eg1::Position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::eg1::Position_<ContainerAllocator1> & lhs, const ::eg1::Position_<ContainerAllocator2> & rhs)
{
  return lhs.profinet_msg == rhs.profinet_msg &&
    lhs.main_portal == rhs.main_portal &&
    lhs.gripper == rhs.gripper;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::eg1::Position_<ContainerAllocator1> & lhs, const ::eg1::Position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace eg1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::eg1::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::eg1::Position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eg1::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::eg1::Position_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eg1::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::eg1::Position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::eg1::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d583aa47902ed0af41ba41b575a0860f";
  }

  static const char* value(const ::eg1::Position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd583aa47902ed0afULL;
  static const uint64_t static_value2 = 0x41ba41b575a0860fULL;
};

template<class ContainerAllocator>
struct DataType< ::eg1::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eg1/Position";
  }

  static const char* value(const ::eg1::Position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::eg1::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string profinet_msg\n"
"float64 main_portal\n"
"float64 gripper\n"
;
  }

  static const char* value(const ::eg1::Position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::eg1::Position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.profinet_msg);
      stream.next(m.main_portal);
      stream.next(m.gripper);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::eg1::Position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::eg1::Position_<ContainerAllocator>& v)
  {
    s << indent << "profinet_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.profinet_msg);
    s << indent << "main_portal: ";
    Printer<double>::stream(s, indent + "  ", v.main_portal);
    s << indent << "gripper: ";
    Printer<double>::stream(s, indent + "  ", v.gripper);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EG1_MESSAGE_POSITION_H