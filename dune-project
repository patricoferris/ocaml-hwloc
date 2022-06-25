(lang dune 3.0)
(using ctypes 0.1)
(name hwloc)
(generate_opam_files true)
(source
 (github patricoferris/ocaml-hwloc))
(authors "Patrick Ferris")
(maintainers "Patrick Ferris")
(license MIT)
(documentation https://ocaml.org/p/hwloc)
(package
 (name hwloc)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends
   conf-autoconf
   ctypes
   (alcotest :with-test)))