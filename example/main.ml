let () =
  let topology = Hwloc.Topology.create () in
  let () = Hwloc.Topology.load topology in
  let depth = Hwloc.Topology.depth topology in
  let packages = Hwloc.Object.Type.get_type_depth topology `Package in
  Printf.printf "Depth: %i\nPackages: %i\n" depth packages
