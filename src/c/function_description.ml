open Ctypes
module T = Types_generated

module Functions (F : Ctypes.FOREIGN) = struct
  open F

  module Topology = struct
    let init = foreign "hwloc_topology_init" (ptr T.Topology.t @-> returning int)
    let load = foreign "hwloc_topology_load" (T.Topology.t @-> returning int)

    let destroy = foreign "hwloc_topology_destroy" (T.Topology.t @-> returning void)

    let depth = foreign "hwloc_topology_get_depth" (T.Topology.t @-> returning int)
  end

  module Object = struct
    module Type = struct
      let get_type_depth = foreign "hwloc_get_type_depth" (T.Topology.t @-> T.Object.Type.t @-> returning int)
    end
  end
end