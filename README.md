Simple Delphi demo project using sample code from https://docwiki.embarcadero.com/CodeExamples/Athens/en/ZLibCompressDecompress_(Delphi)

I am trying to build this using RAD Studio 12.1.

Theory says that this project should build for Android 32/64, Linux 64 and Windows 32/64.

In practice, when I try to build under Linux I get the following error:

The error message is as follows;

[DCC Error] E2597 C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\ld-linux.exe: error: cannot find -lz
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::deflate(System::Zlib::z_stream&, int): error: undefined reference to 'deflate'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::deflateEnd(System::Zlib::z_stream&): error: undefined reference to 'deflateEnd'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::inflate(System::Zlib::z_stream&, int): error: undefined reference to 'inflate'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::inflateEnd(System::Zlib::z_stream&): error: undefined reference to 'inflateEnd'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::inflateReset(System::Zlib::z_stream&): error: undefined reference to 'inflateReset'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::deflateInit2_(System::Zlib::z_stream&, int, int, int, int, int, char*, int): error: undefined reference to 'deflateInit2_'
-  c:\program files (x86)\embarcadero\studio\23.0\lib\Linux64\debug\System.ZLib.o:System.ZLib:function System::Zlib::inflateInit2_(System::Zlib::z_stream&, int, char*, int): error: undefined reference to 'inflateInit2_'

[DCC Fatal Error] F2588 Linker error code: 1 ($00000001)
Failed
