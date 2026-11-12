# Common Lisp / CFFI

This is a low-level binding to the public Raven API. Install CFFI (for
example, with Quicklisp), then register this directory with ASDF:

```lisp
(require :asdf)
(push #p"/path/to/Raven/bindings/common-lisp/" asdf:*central-registry*)
(asdf:load-system "raven")
(raven:load-library) ; or (raven:load-library "/path/to/libraven.so")
```

Loading the system only defines the bindings. `load-library` loads the shared
library, using an explicit path, `RAVEN_LIBRARY`, or the platform's library
search path (`raven.dll`, `libraven.dylib`, `libraven.so`). Build Raven with
`-DRAVEN_BUILD_SHARED=ON`.

Names preserve the C spelling and underscores, using normal case-insensitive
Lisp symbols: `Rwindow_create` becomes `raven:rwindow_create`. Enums and flags
are integers, with exported constants such as `raven:r_backend_vulkan`.
C booleans are integers too: zero is false (Lisp treats zero as true).

All C pointers, including strings, are CFFI pointers. Use
`cffi:null-pointer` for NULL, `cffi:with-foreign-string` with `:encoding :utf-8`
for input text, and `cffi:foreign-string-to-lisp` for returned text after
checking for NULL. Length parameters count bytes, not Lisp characters.
Borrowed pointers remain owned by Raven; caller-owned results such as `char*`
must be released with `raven:rmemory_free` when their API documentation says so.
Do not use temporary foreign storage for data Raven retains after a call.

```lisp
(raven:rinit raven:r_backend_vulkan)
(unwind-protect
     (let ((text "<Window Title=\"Hello\" Width=\"320\" Height=\"160\"/>"))
       (cffi:with-foreign-string ((xml size) text :encoding :utf-8)
         (raven:rwindow_create_from_xml
          xml (1- size)))
       (loop :while (not (zerop (raven:rwait_frame -1.0d0)))))
  (raven:rshutdown))
```

Structures use `(:struct raven:revent)` and exported slot names, for example
`raven:type`. Allocate structures and output parameters with
`cffi:with-foreign-object`, and read them with `cffi:foreign-slot-value` or
`cffi:mem-ref`. Fixed arrays are inline CFFI slots with `:count`.

Every callback typedef has a `define-<typename>` macro. Supply a callback
name, a list of argument names in the C order, and a body. The macro supplies
the CFFI argument and result types:

```lisp
(raven:define-ractioncallback quit (sender action user)
  (declare (ignore sender action user))
  (raven:rquit 0))

(cffi:with-foreign-string (name "quit" :encoding :utf-8)
  (raven:raction_bind name (cffi:callback quit) (cffi:null-pointer)))
```

Callback string arguments are pointers too. Keep callback data and any returned
foreign buffers alive for as long as Raven uses them. Do not allow Lisp errors
to unwind through C. Call Raven from the initializing thread; APIs that invoke
callbacks on workers additionally require your Lisp implementation's support
for callbacks from foreign threads.

Regenerate with `python3 tools/bindgen/bindgen.py common_lisp`; verify with
`python3 tools/bindgen/bindgen.py --check common_lisp`. The default generator
run includes Common Lisp. Generated files contain the C documentation comments.

After loading the ASDF system, load `smoke-test.lisp` to check integer widths,
structure access, and a CFFI callback round trip without a Raven shared library.
