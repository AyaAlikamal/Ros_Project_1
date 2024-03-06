// Generated by gencpp from file client_server/project1Response.msg
// DO NOT EDIT!


#ifndef CLIENT_SERVER_MESSAGE_PROJECT1RESPONSE_H
#define CLIENT_SERVER_MESSAGE_PROJECT1RESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace client_server
{
template <class ContainerAllocator>
struct project1Response_
{
  typedef project1Response_<ContainerAllocator> Type;

  project1Response_()
    : check_data()
    , temp_range()
    , hum_range()
    , pre_range()  {
    }
  project1Response_(const ContainerAllocator& _alloc)
    : check_data(_alloc)
    , temp_range(_alloc)
    , hum_range(_alloc)
    , pre_range(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _check_data_type;
  _check_data_type check_data;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _temp_range_type;
  _temp_range_type temp_range;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _hum_range_type;
  _hum_range_type hum_range;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pre_range_type;
  _pre_range_type pre_range;





  typedef boost::shared_ptr< ::client_server::project1Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::client_server::project1Response_<ContainerAllocator> const> ConstPtr;

}; // struct project1Response_

typedef ::client_server::project1Response_<std::allocator<void> > project1Response;

typedef boost::shared_ptr< ::client_server::project1Response > project1ResponsePtr;
typedef boost::shared_ptr< ::client_server::project1Response const> project1ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::client_server::project1Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::client_server::project1Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::client_server::project1Response_<ContainerAllocator1> & lhs, const ::client_server::project1Response_<ContainerAllocator2> & rhs)
{
  return lhs.check_data == rhs.check_data &&
    lhs.temp_range == rhs.temp_range &&
    lhs.hum_range == rhs.hum_range &&
    lhs.pre_range == rhs.pre_range;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::client_server::project1Response_<ContainerAllocator1> & lhs, const ::client_server::project1Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace client_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::client_server::project1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::client_server::project1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::client_server::project1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::client_server::project1Response_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::client_server::project1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::client_server::project1Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::client_server::project1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e030b2b793576c6ba544e6bc7508daff";
  }

  static const char* value(const ::client_server::project1Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe030b2b793576c6bULL;
  static const uint64_t static_value2 = 0xa544e6bc7508daffULL;
};

template<class ContainerAllocator>
struct DataType< ::client_server::project1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "client_server/project1Response";
  }

  static const char* value(const ::client_server::project1Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::client_server::project1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string check_data\n"
"string temp_range\n"
"string hum_range\n"
"string pre_range\n"
;
  }

  static const char* value(const ::client_server::project1Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::client_server::project1Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.check_data);
      stream.next(m.temp_range);
      stream.next(m.hum_range);
      stream.next(m.pre_range);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct project1Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::client_server::project1Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::client_server::project1Response_<ContainerAllocator>& v)
  {
    s << indent << "check_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.check_data);
    s << indent << "temp_range: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.temp_range);
    s << indent << "hum_range: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.hum_range);
    s << indent << "pre_range: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pre_range);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CLIENT_SERVER_MESSAGE_PROJECT1RESPONSE_H