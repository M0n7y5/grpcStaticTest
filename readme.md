# This is grpc example which fails to statically compile due to missing symbols 

## How to build
DONT OPEN SOLUTION IF YOU DONT HAVE REQUIRED PACKAGES INSTALLED

Install:
- vcpkg
    - https://github.com/microsoft/vcpkg#quick-start-windows
    - do `vcpkg integrate install` after installation 
- Install packages
    - command `vcpkg.exe install grpc:x64-windows-static protobuf:x64-windows-static`
- Open solution and switch to Release x64 and hit compile 

If you did everything right u should see this in output window:
```
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertOpenStore
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertCloseStore
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertEnumCertificatesInStore
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertFindCertificateInStore
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertDuplicateCertificateContext
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertFreeCertificateContext
1>libcrypto.lib(e_capi.obj) : error LNK2001: unresolved external symbol __imp_CertGetCertificateContextProperty
1>C:\Users\Admin\source\repos\grpcTest\x64\Release\grpcTest.exe : fatal error LNK1120: 7 unresolved externals
1>Done building project "grpcTest.vcxproj" -- FAILED.
```