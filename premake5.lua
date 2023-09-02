project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		--"imconfig.h",
		--"imgui.h",
		--"imgui.cpp",
		--"imgui_draw.cpp",
		--"imgui_internal.h",
		--"imgui_tables.cpp",
		--"imgui_widgets.cpp",
		--"imstb_rectpack.h",
		--"imstb_textedit.h",
		--"imstb_truetype.h",
		--"imgui_demo.cpp"
        "*.h",
        "*.cpp",
        "backends/imgui_impl_opengl3*",
        "backends/imgui_impl_glfw*"
	}

    defines
    {

    }

    includedirs
    {
        "./",
        "examples/libs/glfw/include"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

