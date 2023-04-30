# buildifier: disable=module-docstring
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

SDL_VERSION = "2.26.5"

def sdl_repositories():
    """Load all repositories needed for sdl"""

    maybe(
        http_archive,
        name = "sdl",
        build_file = Label("//third_party/sdl:BUILD.sdl.bazel"),
        strip_prefix = "SDL-release-%s" % (SDL_VERSION),
        sha256 = "8f347d4b5adff605098f31fe35c23cdd91482e76edebacb4fa3b83a91465af83",
        urls = [
            "https://github.com/libsdl-org/SDL/archive/refs/tags/release-%s.tar.gz" % (SDL_VERSION),
        ],
    )
