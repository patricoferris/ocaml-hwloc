open Ctypes
module Types (F : TYPE) = struct
  open F

  module Topology = struct
    type t

    let hwloc : t Ctypes_static.structure F.typ = structure "hwloc_topology"

    let t : t Ctypes_static.structure ptr F.typ = typedef (ptr hwloc) "hwloc_topology_t"
  end

  module Object = struct
    module Type = struct 
    let system = constant "HWLOC_OBJ_SYSTEM" int64_t
    let machine = constant "HWLOC_OBJ_MACHINE" int64_t
    let numanode = constant "HWLOC_OBJ_NUMANODE" int64_t
    let package = constant "HWLOC_OBJ_PACKAGE" int64_t
    let cache = constant "HWLOC_OBJ_CACHE" int64_t
    let core = constant "HWLOC_OBJ_CORE" int64_t
    let pu = constant "HWLOC_OBJ_PU" int64_t
    let group = constant "HWLOC_OBJ_GROUP" int64_t
    let misc = constant "HWLOC_OBJ_MISC" int64_t
    let bridge = constant "HWLOC_OBJ_BRIDGE" int64_t
    let pci_device = constant "HWLOC_OBJ_PCI_DEVICE" int64_t
    let os_device = constant "HWLOC_OBJ_OS_DEVICE" int64_t

    type t = [
      `System | `Machine | `Numanode | `Package
      | `Cache | `Core | `Pu | `Group | `Misc
      | `Bridge | `Pci_device | `Os_device
    ]
    let t : t F.typ = enum "hwloc_obj_type_t" ~typedef:true [
      `System, system;
      `Machine, machine;
      `Numanode, numanode;
      `Package, package;
      `Cache, cache;
      `Core, core; 
      `Pu, pu; 
      `Group , group;
      `Misc, misc;
      `Bridge, bridge;
      `Pci_device, pci_device;
      `Os_device, os_device
    ]
    end
  end

end
