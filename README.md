# hare-vulkan

These are Vulkan bindings for [Hare](https://harelang.org).
They are generated with the
[glad2-hare branch of ~vladh/glad](https://git.sr.ht/~vladh/glad), which is
a fork of the original [glad by Dav1dde](https://github.com/Dav1dde/glad).
When Hare is released, a request to merge our version of glad upstream will
be submitted.

The glad generator was contributed by Christopher W. Nicholson (thank you!).

This repository contains a pregenerated set of useful Vulkan bindings, as well
as documentation regarding the state of Vulkan bindings in general in Hare,
including instructions on using glad2 with Hare.

## Status

Hare bindings can be generated using glad2 for Vulkan. If you spot any problems
with the pregenerated bindings, please send an email, or preferably a patch, to
[vlad@vladh.net](mailto:vlad@vladh.net).

**Note:** Extensions are currently not supported due to a limitation in our
code. Some of the code in the bindings is "protected" by guards. In C this would
mean the code is surrounded by e.g. `#if defined(VK_ENABLE_BETA_EXTENSIONS)`. In
the Hare bindings, this code is removed completely. This means that some of the
code extensions need to work properly is sometimes not generated. We should fix
this.

## Usage

To use the bindings, copy the appropriate subdirectory from this repository
into your project and adjust the `use` path accordingly. Alternatively,
follow the instructions below about how to generate your own bindings, for
example if you're using specific Vulkan extensions.

The functions and constants are named the same as their original Vulkan
counterparts, so you can use the `vkFunctions()` and `VK_CONSTANTS` you're used
to by prefixing them with `vk::`, i.e. `vk::vkCreateInstance()` and
`vk::VkResult`.

## Generating your own bindings

If you'd like to generate your own bindings, for example if you're using
specific Vulkan extensions, you're free to do this by cloning the
[glad-sdl2 repository](https://git.sr.ht/~vladh/glad) and running glad yourself.
It might look something like this.

```
python -m glad --out-path=../my-project --api vk=1.3 --extensions some_extension hare
```

Then, simply include the generated bindings by adjusting your `use` path
appropriately.
