project "flatbuffers"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/flatbuffers/allocator.h",
		"include/flatbuffers/array.h",
		"include/flatbuffers/base.h",
		"include/flatbuffers/buffer.h",
		"include/flatbuffers/buffer_ref.h",
		"include/flatbuffers/default_allocator.h",
		"include/flatbuffers/detached_buffer.h",
		"include/flatbuffers/code_generator.h",
		"include/flatbuffers/file_manager.h",
		"include/flatbuffers/flatbuffer_builder.h",
		"include/flatbuffers/flatbuffers.h",
		"include/flatbuffers/flexbuffers.h",
		"include/flatbuffers/flex_flat_util.h",
		"include/flatbuffers/hash.h",
		"include/flatbuffers/idl.h",
		"include/flatbuffers/minireflect.h",
		"include/flatbuffers/reflection.h",
		"include/flatbuffers/reflection_generated.h",
		"include/flatbuffers/registry.h",
		"include/flatbuffers/stl_emulation.h",
		"include/flatbuffers/string.h",
		"include/flatbuffers/struct.h",
		"include/flatbuffers/table.h",
		"include/flatbuffers/util.h",
		"include/flatbuffers/vector.h",
		"include/flatbuffers/vector_downward.h",
		"include/flatbuffers/verifier.h",
		"src/idl_parser.cpp",
		"src/idl_gen_text.cpp",
		"src/reflection.cpp",
		"src/util.cpp"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "off"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

project "flatc"
	kind "ConsoleApp"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/**.h",
		"src/**.h",
		"src/idl_parser.cpp",
		"src/idl_gen_text.cpp",
		"src/reflection.cpp",
		"src/util.cpp",
		"src/idl_gen_binary.cpp",
		"src/idl_gen_text.cpp",
		"src/idl_gen_cpp.cpp",
		"src/idl_gen_csharp.cpp",
		"src/idl_gen_dart.cpp",
		"src/idl_gen_kotlin.cpp",
		"src/idl_gen_kotlin_kmp.cpp",
		"src/idl_gen_go.cpp",
		"src/idl_gen_java.cpp",
		"src/idl_gen_ts.cpp",
		"src/idl_gen_php.cpp",
		"src/idl_gen_python.cpp",
		"src/idl_gen_lobster.cpp",
		"src/idl_gen_rust.cpp",
		"src/idl_gen_fbs.cpp",
		"src/idl_gen_grpc.cpp",
		"src/idl_gen_json_schema.cpp",
		"src/idl_gen_swift.cpp",
		"src/file_name_saving_file_manager.cpp",
		"src/file_binary_writer.cpp",
		"src/file_writer.cpp",
		"src/idl_namer.h",
		"src/namer.h",
		"src/flatc.cpp",
		"src/flatc_main.cpp",
		"src/bfbs_gen.h",
		"src/bfbs_gen_lua.h",
		"src/bfbs_gen_nim.h",
		"src/bfbs_namer.h",
		"include/flatbuffers/code_generators.h",
		"src/binary_annotator.h",
		"src/binary_annotator.cpp",
		"src/annotated_binary_text_gen.h",
		"src/annotated_binary_text_gen.cpp",
		"src/bfbs_gen_lua.cpp",
		"src/bfbs_gen_nim.cpp",
		"src/code_generators.cpp",
		"grpc/src/compiler/schema_interface.h",
		"grpc/src/compiler/cpp_generator.h",
		"grpc/src/compiler/cpp_generator.cc",
		"grpc/src/compiler/go_generator.h",
		"grpc/src/compiler/go_generator.cc",
		"grpc/src/compiler/java_generator.h",
		"grpc/src/compiler/java_generator.cc",
		"grpc/src/compiler/python_generator.h",
		"grpc/src/compiler/python_generator.cc",
		"grpc/src/compiler/swift_generator.h",
		"grpc/src/compiler/swift_generator.cc",
		"grpc/src/compiler/ts_generator.h",
		"grpc/src/compiler/ts_generator.cc"
	}

	includedirs
	{
		"include",
		"src",
		"grpc"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "off"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"