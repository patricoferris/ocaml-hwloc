open Ctypes
module T = Hwloc_c.C.Type
module F = Hwloc_c.C.Functions

let check_err = function
  | 0 -> ()
  | n -> failwith (string_of_int n)



module Topology = struct
  type t = T.Topology.t Ctypes_static.structure ptr ptr

  let create () = 
    let ptr = allocate ~finalise:(fun ptr -> F.Topology.destroy (!@ ptr)) T.Topology.t (Ctypes.from_voidp T.Topology.hwloc null) in
    check_err @@ F.Topology.init ptr;
    ptr

  let load t = check_err @@ F.Topology.load (!@ t)
  let depth t = F.Topology.depth (!@ t)

end

module Object = struct
  module Type = struct
    let get_type_depth top = F.Object.Type.get_type_depth (!@ top)
  end
end