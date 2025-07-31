project "zlib"
    kind "StaticLib"
    language "C"

    targetdir ("bin/" .. outdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outdir .. "/%{prj.name}")

    files
    {
        "adler32.c",
        "compress.c",
        "crc32.h",
        "crc32.c",
        "deflate.h",
        "deflate.c",
        "gzclose.h",
        "gzclose.c",
        "gzguts.h",
        "gzlib.c",
        "gzread.c",
        "gzwrite.c",
        "infback.c",
        "inffast.h",
        "inffast.c",
        "inffixed.h",
        "inflate.h",
        "inflate.c",
        "inftrees.h",
        "inftrees.c",
        "trees.h",
        "trees.c",
        "uncompr.c",
        "zconf.h",
        "zlib.h",
        "zutil.h",
        "zutil.c"
    }

    filter "system:windows"
        buildoptions { "-std=c11" }
        systemversion "latest"
        staticruntime "On"

        defines
        {
            "_CRT_SECURE_NO_WARNINGS"
        }

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"