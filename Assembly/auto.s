automain:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
100001d78: d101c3ff    	sub	sp, sp, #0x70
100001d7c: a9067bfd    	stp	x29, x30, [sp, #0x60]
100001d80: 910183fd    	add	x29, sp, #0x60
100001d84: f90007e8    	str	x8, [sp, #0x8]
100001d88: aa0003e8    	mov	x8, x0
100001d8c: f94007e0    	ldr	x0, [sp, #0x8]
100001d90: aa0003e9    	mov	x9, x0
100001d94: f81f83a9    	stur	x9, [x29, #-0x8]
100001d98: f81f03a8    	stur	x8, [x29, #-0x10]
100001d9c: 52800008    	mov	w8, #0x0                ; =0
100001da0: 12000108    	and	w8, w8, #0x1
100001da4: 12000108    	and	w8, w8, #0x1
100001da8: 381ef3a8    	sturb	w8, [x29, #-0x11]
100001dac: f85f03a1    	ldur	x1, [x29, #-0x10]
100001db0: 94002406    	bl	0x10000adc8 <_strlen+0x10000adc8>
100001db4: f94007e0    	ldr	x0, [sp, #0x8]
100001db8: 94000050    	bl	0x100001ef8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::begin[abi:ne180100]()>
100001dbc: aa0003e8    	mov	x8, x0
100001dc0: f94007e0    	ldr	x0, [sp, #0x8]
100001dc4: f81e03a8    	stur	x8, [x29, #-0x20]
100001dc8: 9400005f    	bl	0x100001f44 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::end[abi:ne180100]()>
100001dcc: aa0003e8    	mov	x8, x0
100001dd0: f94007e0    	ldr	x0, [sp, #0x8]
100001dd4: f81d83a8    	stur	x8, [x29, #-0x28]
100001dd8: 94000048    	bl	0x100001ef8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::begin[abi:ne180100]()>
100001ddc: f9001be0    	str	x0, [sp, #0x30]
100001de0: f85e03a0    	ldur	x0, [x29, #-0x20]
100001de4: f85d83a1    	ldur	x1, [x29, #-0x28]
100001de8: f9401be2    	ldr	x2, [sp, #0x30]
100001dec: f0000043    	adrp	x3, 0x10000c000 <_strlen+0x10000c000>
100001df0: f9400863    	ldr	x3, [x3, #0x10]
100001df4: 9400001b    	bl	0x100001e60 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))>
100001df8: f9000be0    	str	x0, [sp, #0x10]
100001dfc: 14000001    	b	0x100001e00 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x88>
100001e00: f9400be8    	ldr	x8, [sp, #0x10]
100001e04: f9000fe8    	str	x8, [sp, #0x18]
100001e08: 52800028    	mov	w8, #0x1                ; =1
100001e0c: 12000108    	and	w8, w8, #0x1
100001e10: 12000108    	and	w8, w8, #0x1
100001e14: 381ef3a8    	sturb	w8, [x29, #-0x11]
100001e18: 385ef3a8    	ldurb	w8, [x29, #-0x11]
100001e1c: 37000188    	tbnz	w8, #0x0, 0x100001e4c 

<toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xd4>   //Expecting a string& as input
100001e20: 14000008    	b	0x100001e40 
<toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xc8>
100001e24: aa0003e8    	mov	x8, x0          //Move 'word' to address x8
100001e28: f94007e0    	ldr	x0, [sp, #0x8]  //Load the pointer to the orginal string
100001e2c: f90017e8    	str	x8, [sp, #0x28] //Save the string into another address to prepare copy
100001e30: aa0103e8    	mov	x8, x1          //Move word at x8 to x1
100001e34: b90027e8    	str	w8, [sp, #0x24] //Store it as an original word
100001e38: 940023ea    	bl	0x10000ade0 <_strlen+0x10000ade0>
100001e3c: 14000007    	b	0x100001e58 
<toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xe0>
100001e40: f94007e0    	ldr	x0, [sp, #0x8]
100001e44: 940023e7    	bl	0x10000ade0 <_strlen+0x10000ade0>
100001e48: 14000001    	b	0x100001e4c 
<toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xd4>
100001e4c: a9467bfd    	ldp	x29, x30, [sp, #0x60]
100001e50: 9101c3ff    	add	sp, sp, #0x70
100001e54: d65f03c0    	ret
100001e58: f94017e0    	ldr	x0, [sp, #0x28]
100001e5c: 94002399    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100001e60 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))>:
100001e60: d10143ff    	sub	sp, sp, #0x50
100001e64: a9047bfd    	stp	x29, x30, [sp, #0x40]
100001e68: 910103fd    	add	x29, sp, #0x40
100001e6c: f81f03a0    	stur	x0, [x29, #-0x10]
100001e70: f81e83a1    	stur	x1, [x29, #-0x18]
100001e74: f90013e2    	str	x2, [sp, #0x20]
100001e78: f9000fe3    	str	x3, [sp, #0x18]
100001e7c: 14000001    	b	0x100001e80 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))+0x20>
100001e80: d10043a0    	sub	x0, x29, #0x10
100001e84: d10063a1    	sub	x1, x29, #0x18
100001e88: 9400191f    	bl	0x100008304 <bool std::__1::operator!=[abi:ne180100]<char*>(std::__1::__wrap_iter<char*> const&, std::__1::__wrap_iter<char*> const&)>
100001e8c: 360002a0    	tbz	w0, #0x0, 0x100001ee0 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))+0x80>
100001e90: 14000001    	b	0x100001e94 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))+0x34>
100001e94: f9400fe8    	ldr	x8, [sp, #0x18]
100001e98: f90007e8    	str	x8, [sp, #0x8]
100001e9c: d10043a0    	sub	x0, x29, #0x10
100001ea0: 94001926    	bl	0x100008338 <std::__1::__wrap_iter<char*>::operator*[abi:ne180100]() const>
100001ea4: f94007e8    	ldr	x8, [sp, #0x8]
100001ea8: 39c00000    	ldrsb	w0, [x0]
100001eac: d63f0100    	blr	x8
100001eb0: b90017e0    	str	w0, [sp, #0x14]
100001eb4: 910083e0    	add	x0, sp, #0x20
100001eb8: 94001920    	bl	0x100008338 <std::__1::__wrap_iter<char*>::operator*[abi:ne180100]() const>
100001ebc: aa0003e8    	mov	x8, x0
100001ec0: b94017e0    	ldr	w0, [sp, #0x14]
100001ec4: 39000100    	strb	w0, [x8]
100001ec8: 14000001    	b	0x100001ecc <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))+0x6c>
100001ecc: d10043a0    	sub	x0, x29, #0x10
100001ed0: 94001920    	bl	0x100008350 <std::__1::__wrap_iter<char*>::operator++[abi:ne180100]()>
100001ed4: 910083e0    	add	x0, sp, #0x20
100001ed8: 9400191e    	bl	0x100008350 <std::__1::__wrap_iter<char*>::operator++[abi:ne180100]()>
100001edc: 17ffffe9    	b	0x100001e80 <std::__1::__wrap_iter<char*> std::__1::transform[abi:ne180100]<std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int)>(std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, std::__1::__wrap_iter<char*>, int (*)(int))+0x20>
100001ee0: f94013e8    	ldr	x8, [sp, #0x20]
100001ee4: f81f83a8    	stur	x8, [x29, #-0x8]
100001ee8: f85f83a0    	ldur	x0, [x29, #-0x8]
100001eec: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100001ef0: 910143ff    	add	sp, sp, #0x50
100001ef4: d65f03c0    	ret

0000000100001ef8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::begin[abi:ne180100]()>:
100001ef8: d100c3ff    	sub	sp, sp, #0x30
100001efc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001f00: 910083fd    	add	x29, sp, #0x20
100001f04: f9000be0    	str	x0, [sp, #0x10]
100001f08: f9400be0    	ldr	x0, [sp, #0x10]
100001f0c: f90003e0    	str	x0, [sp]
100001f10: 940018ba    	bl	0x1000081f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()>
100001f14: aa0003e1    	mov	x1, x0
100001f18: f94003e0    	ldr	x0, [sp]
100001f1c: 940018ab    	bl	0x1000081c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__make_iterator[abi:ne180100](char*)>
100001f20: f90007e0    	str	x0, [sp, #0x8]
100001f24: 14000001    	b	0x100001f28 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::begin[abi:ne180100]()+0x30>
100001f28: f94007e8    	ldr	x8, [sp, #0x8]
100001f2c: f81f83a8    	stur	x8, [x29, #-0x8]
100001f30: f85f83a0    	ldur	x0, [x29, #-0x8]
100001f34: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001f38: 9100c3ff    	add	sp, sp, #0x30
100001f3c: d65f03c0    	ret
100001f40: 94000212    	bl	0x100002788 <___clang_call_terminate>

0000000100001f44 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::end[abi:ne180100]()>:
100001f44: d100c3ff    	sub	sp, sp, #0x30
100001f48: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001f4c: 910083fd    	add	x29, sp, #0x20
100001f50: f9000be0    	str	x0, [sp, #0x10]
100001f54: f9400be0    	ldr	x0, [sp, #0x10]
100001f58: f90007e0    	str	x0, [sp, #0x8]
100001f5c: 940018a7    	bl	0x1000081f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()>
100001f60: aa0003e8    	mov	x8, x0
100001f64: f94007e0    	ldr	x0, [sp, #0x8]
100001f68: f90003e8    	str	x8, [sp]
100001f6c: 9400166f    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100001f70: f94003e8    	ldr	x8, [sp]
100001f74: aa0003e9    	mov	x9, x0
100001f78: f94007e0    	ldr	x0, [sp, #0x8]
100001f7c: 8b090101    	add	x1, x8, x9
100001f80: 94001892    	bl	0x1000081c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__make_iterator[abi:ne180100](char*)>
100001f84: f81f83a0    	stur	x0, [x29, #-0x8]
100001f88: f85f83a0    	ldur	x0, [x29, #-0x8]
100001f8c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001f90: 9100c3ff    	add	sp, sp, #0x30
100001f94: d65f03c0    	ret

0000000100001f98 <tolower(int)>:
100001f98: d10083ff    	sub	sp, sp, #0x20
100001f9c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001fa0: 910043fd    	add	x29, sp, #0x10
100001fa4: b81fc3a0    	stur	w0, [x29, #-0x4]
100001fa8: b85fc3a0    	ldur	w0, [x29, #-0x4]
100001fac: 940023ff    	bl	0x10000afa8 <_strlen+0x10000afa8>
100001fb0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001fb4: 910083ff    	add	sp, sp, #0x20
100001fb8: d65f03c0    	ret

0000000100001fbc <readDownloadFiles()>:
100001fbc: d10583ff    	sub	sp, sp, #0x160
100001fc0: a9146ffc    	stp	x28, x27, [sp, #0x140]
100001fc4: a9157bfd    	stp	x29, x30, [sp, #0x150]
100001fc8: 910543fd    	add	x29, sp, #0x150
100001fcc: aa0803e0    	mov	x0, x8
100001fd0: f90017e0    	str	x0, [sp, #0x28]
100001fd4: aa0003e8    	mov	x8, x0
100001fd8: f81e83a8    	stur	x8, [x29, #-0x18]
100001fdc: 52800008    	mov	w8, #0x0                ; =0
100001fe0: 12000108    	and	w8, w8, #0x1
100001fe4: 12000108    	and	w8, w8, #0x1
100001fe8: 381e73a8    	sturb	w8, [x29, #-0x19]
100001fec: 940000d1    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100001ff0: d0000040    	adrp	x0, 0x10000b000 <GCC_except_table0+0x4>
100001ff4: 91169000    	add	x0, x0, #0x5a4
100001ff8: 940023f2    	bl	0x10000afc0 <_strlen+0x10000afc0>
100001ffc: f9001be0    	str	x0, [sp, #0x30]
100002000: 14000001    	b	0x100002004 <readDownloadFiles()+0x48>
100002004: f9401be8    	ldr	x8, [sp, #0x30]
100002008: f81d83a8    	stur	x8, [x29, #-0x28]
10000200c: f85d83a8    	ldur	x8, [x29, #-0x28]
100002010: f1000108    	subs	x8, x8, #0x0
100002014: 1a9f07e8    	cset	w8, ne
100002018: 37000208    	tbnz	w8, #0x0, 0x100002058 <readDownloadFiles()+0x9c>
10000201c: 14000001    	b	0x100002020 <readDownloadFiles()+0x64>
100002020: d0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100002024: f940d000    	ldr	x0, [x0, #0x1a0]
100002028: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000202c: 9116a421    	add	x1, x1, #0x5a9
100002030: 940000cb    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100002034: 14000001    	b	0x100002038 <readDownloadFiles()+0x7c>
100002038: 52800020    	mov	w0, #0x1                ; =1
10000203c: 940023de    	bl	0x10000afb4 <_strlen+0x10000afb4>
100002040: 14000001    	b	0x100002044 <readDownloadFiles()+0x88>
100002044: d4200020    	brk	#0x1
100002048: f81d03a0    	stur	x0, [x29, #-0x30]
10000204c: aa0103e8    	mov	x8, x1
100002050: b81cc3a8    	stur	w8, [x29, #-0x34]
100002054: 140000b1    	b	0x100002318 <readDownloadFiles()+0x35c>
100002058: f85d83a1    	ldur	x1, [x29, #-0x28]
10000205c: d101a3a0    	sub	x0, x29, #0x68
100002060: 940000e1    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100002064: 14000001    	b	0x100002068 <readDownloadFiles()+0xac>
100002068: d10143a8    	sub	x8, x29, #0x50
10000206c: d101a3a0    	sub	x0, x29, #0x68
100002070: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002074: 91172021    	add	x1, x1, #0x5c8
100002078: 940000cb    	bl	0x1000023a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> std::__1::operator+[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, char const*)>
10000207c: 14000001    	b	0x100002080 <readDownloadFiles()+0xc4>
100002080: d101a3a0    	sub	x0, x29, #0x68
100002084: 94002357    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002088: d10263a0    	sub	x0, x29, #0x98
10000208c: d10143a1    	sub	x1, x29, #0x50
100002090: 52800002    	mov	w2, #0x0                ; =0
100002094: 940000e1    	bl	0x100002418 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)>
100002098: 14000001    	b	0x10000209c <readDownloadFiles()+0xe0>
10000209c: d10203a0    	sub	x0, x29, #0x80
1000020a0: d10263a1    	sub	x1, x29, #0x98
1000020a4: 940000ec    	bl	0x100002454 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::path const&)>
1000020a8: 14000001    	b	0x1000020ac <readDownloadFiles()+0xf0>
1000020ac: d10263a0    	sub	x0, x29, #0x98
1000020b0: 940000f8    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000020b4: d10203a8    	sub	x8, x29, #0x80
1000020b8: f81903a8    	stur	x8, [x29, #-0x70]
1000020bc: f85903a1    	ldur	x1, [x29, #-0x70]
1000020c0: 910263e0    	add	x0, sp, #0x98
1000020c4: f9000fe0    	str	x0, [sp, #0x18]
1000020c8: 9400010b    	bl	0x1000024f4 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>
1000020cc: f9400fe0    	ldr	x0, [sp, #0x18]
1000020d0: 9102a3e8    	add	x8, sp, #0xa8
1000020d4: 940000fa    	bl	0x1000024bc <std::__1::__fs::filesystem::begin[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>
1000020d8: f9400fe0    	ldr	x0, [sp, #0x18]
1000020dc: 94000113    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
1000020e0: f85903a1    	ldur	x1, [x29, #-0x70]
1000020e4: 9101e3e0    	add	x0, sp, #0x78
1000020e8: f90013e0    	str	x0, [sp, #0x20]
1000020ec: 94000102    	bl	0x1000024f4 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>
1000020f0: f94013e0    	ldr	x0, [sp, #0x20]
1000020f4: 910223e8    	add	x8, sp, #0x88
1000020f8: 94000117    	bl	0x100002554 <std::__1::__fs::filesystem::end[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>
1000020fc: f94013e0    	ldr	x0, [sp, #0x20]
100002100: 9400010a    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002104: 14000001    	b	0x100002108 <readDownloadFiles()+0x14c>
100002108: 9102a3e0    	add	x0, sp, #0xa8
10000210c: 910223e1    	add	x1, sp, #0x88
100002110: 9400011e    	bl	0x100002588 <std::__1::__fs::filesystem::operator!=[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&, std::__1::__fs::filesystem::directory_iterator const&)>
100002114: 37000320    	tbnz	w0, #0x0, 0x100002178 <readDownloadFiles()+0x1bc>
100002118: 14000001    	b	0x10000211c <readDownloadFiles()+0x160>
10000211c: 910223e0    	add	x0, sp, #0x88
100002120: 94000102    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002124: 9102a3e0    	add	x0, sp, #0xa8
100002128: 94000100    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
10000212c: d10203a0    	sub	x0, x29, #0x80
100002130: 940000fe    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002134: 1400005f    	b	0x1000022b0 <readDownloadFiles()+0x2f4>
100002138: f81d03a0    	stur	x0, [x29, #-0x30]
10000213c: aa0103e8    	mov	x8, x1
100002140: b81cc3a8    	stur	w8, [x29, #-0x34]
100002144: d101a3a0    	sub	x0, x29, #0x68
100002148: 94002326    	bl	0x10000ade0 <_strlen+0x10000ade0>
10000214c: 14000073    	b	0x100002318 <readDownloadFiles()+0x35c>
100002150: f81d03a0    	stur	x0, [x29, #-0x30]
100002154: aa0103e8    	mov	x8, x1
100002158: b81cc3a8    	stur	w8, [x29, #-0x34]
10000215c: 14000043    	b	0x100002268 <readDownloadFiles()+0x2ac>
100002160: f81d03a0    	stur	x0, [x29, #-0x30]
100002164: aa0103e8    	mov	x8, x1
100002168: b81cc3a8    	stur	w8, [x29, #-0x34]
10000216c: d10263a0    	sub	x0, x29, #0x98
100002170: 940000c8    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
100002174: 1400003d    	b	0x100002268 <readDownloadFiles()+0x2ac>
100002178: 9102a3e0    	add	x0, sp, #0xa8
10000217c: 94000110    	bl	0x1000025bc <std::__1::__fs::filesystem::directory_iterator::operator*[abi:ne180100]() const>
100002180: f9000be0    	str	x0, [sp, #0x10]
100002184: 14000001    	b	0x100002188 <readDownloadFiles()+0x1cc>
100002188: f9400be8    	ldr	x8, [sp, #0x10]
10000218c: f9003be8    	str	x8, [sp, #0x70]
100002190: f9403be0    	ldr	x0, [sp, #0x70]
100002194: 94000113    	bl	0x1000025e0 <std::__1::__fs::filesystem::directory_entry::path[abi:ne180100]() const>
100002198: 910103e8    	add	x8, sp, #0x40
10000219c: 94000116    	bl	0x1000025f4 <std::__1::__fs::filesystem::path::filename[abi:ne180100]() const>
1000021a0: 14000001    	b	0x1000021a4 <readDownloadFiles()+0x1e8>
1000021a4: 910163e8    	add	x8, sp, #0x58
1000021a8: 910103e0    	add	x0, sp, #0x40
1000021ac: 9400012a    	bl	0x100002654 <std::__1::__fs::filesystem::path::string[abi:ne180100]() const>
1000021b0: 14000001    	b	0x1000021b4 <readDownloadFiles()+0x1f8>
1000021b4: 910103e0    	add	x0, sp, #0x40
1000021b8: 940000b6    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000021bc: f9403be0    	ldr	x0, [sp, #0x70]
1000021c0: 94000147    	bl	0x1000026dc <std::__1::__fs::filesystem::directory_entry::operator std::__1::__fs::filesystem::path const&[abi:ne180100]() const>
1000021c4: 94000132    	bl	0x10000268c <std::__1::__fs::filesystem::is_regular_file[abi:ne180100](std::__1::__fs::filesystem::path const&)>
1000021c8: b9000fe0    	str	w0, [sp, #0xc]
1000021cc: 14000001    	b	0x1000021d0 <readDownloadFiles()+0x214>
1000021d0: b9400fe8    	ldr	w8, [sp, #0xc]
1000021d4: 360002e8    	tbz	w8, #0x0, 0x100002230 <readDownloadFiles()+0x274>
1000021d8: 14000001    	b	0x1000021dc <readDownloadFiles()+0x220>
1000021dc: f94017e0    	ldr	x0, [sp, #0x28]
1000021e0: 910163e1    	add	x1, sp, #0x58
1000021e4: 94000143    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000021e8: 14000001    	b	0x1000021ec <readDownloadFiles()+0x230>
1000021ec: 14000011    	b	0x100002230 <readDownloadFiles()+0x274>
1000021f0: f81d03a0    	stur	x0, [x29, #-0x30]
1000021f4: aa0103e8    	mov	x8, x1
1000021f8: b81cc3a8    	stur	w8, [x29, #-0x34]
1000021fc: 14000014    	b	0x10000224c <readDownloadFiles()+0x290>
100002200: f81d03a0    	stur	x0, [x29, #-0x30]
100002204: aa0103e8    	mov	x8, x1
100002208: b81cc3a8    	stur	w8, [x29, #-0x34]
10000220c: 910103e0    	add	x0, sp, #0x40
100002210: 940000a0    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
100002214: 1400000e    	b	0x10000224c <readDownloadFiles()+0x290>
100002218: f81d03a0    	stur	x0, [x29, #-0x30]
10000221c: aa0103e8    	mov	x8, x1
100002220: b81cc3a8    	stur	w8, [x29, #-0x34]
100002224: 910163e0    	add	x0, sp, #0x58
100002228: 940022ee    	bl	0x10000ade0 <_strlen+0x10000ade0>
10000222c: 14000008    	b	0x10000224c <readDownloadFiles()+0x290>
100002230: 910163e0    	add	x0, sp, #0x58
100002234: 940022eb    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002238: 14000001    	b	0x10000223c <readDownloadFiles()+0x280>
10000223c: 9102a3e0    	add	x0, sp, #0xa8
100002240: 94000148    	bl	0x100002760 <std::__1::__fs::filesystem::directory_iterator::operator++[abi:ne180100]()>
100002244: 14000001    	b	0x100002248 <readDownloadFiles()+0x28c>
100002248: 17ffffb0    	b	0x100002108 <readDownloadFiles()+0x14c>
10000224c: 910223e0    	add	x0, sp, #0x88
100002250: 940000b6    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002254: 9102a3e0    	add	x0, sp, #0xa8
100002258: 940000b4    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
10000225c: d10203a0    	sub	x0, x29, #0x80
100002260: 940000b2    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002264: 14000001    	b	0x100002268 <readDownloadFiles()+0x2ac>
100002268: b85cc3a8    	ldur	w8, [x29, #-0x34]
10000226c: 71000508    	subs	w8, w8, #0x1
100002270: 1a9f07e8    	cset	w8, ne
100002274: 370003e8    	tbnz	w8, #0x0, 0x1000022f0 <readDownloadFiles()+0x334>
100002278: 14000001    	b	0x10000227c <readDownloadFiles()+0x2c0>
10000227c: f85d03a0    	ldur	x0, [x29, #-0x30]
100002280: 9400233b    	bl	0x10000af6c <_strlen+0x10000af6c>
100002284: f9001fe0    	str	x0, [sp, #0x38]
100002288: d0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000228c: f940d000    	ldr	x0, [x0, #0x1a0]
100002290: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002294: 91174c21    	add	x1, x1, #0x5d3
100002298: 94000031    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000229c: 14000001    	b	0x1000022a0 <readDownloadFiles()+0x2e4>
1000022a0: 52800020    	mov	w0, #0x1                ; =1
1000022a4: 94002344    	bl	0x10000afb4 <_strlen+0x10000afb4>
1000022a8: 14000001    	b	0x1000022ac <readDownloadFiles()+0x2f0>
1000022ac: d4200020    	brk	#0x1
1000022b0: 14000007    	b	0x1000022cc <readDownloadFiles()+0x310>
1000022b4: f81d03a0    	stur	x0, [x29, #-0x30]
1000022b8: aa0103e8    	mov	x8, x1
1000022bc: b81cc3a8    	stur	w8, [x29, #-0x34]
1000022c0: 9400232e    	bl	0x10000af78 <_strlen+0x10000af78>
1000022c4: 14000001    	b	0x1000022c8 <readDownloadFiles()+0x30c>
1000022c8: 1400000a    	b	0x1000022f0 <readDownloadFiles()+0x334>
1000022cc: 52800028    	mov	w8, #0x1                ; =1
1000022d0: 12000108    	and	w8, w8, #0x1
1000022d4: 12000108    	and	w8, w8, #0x1
1000022d8: 381e73a8    	sturb	w8, [x29, #-0x19]
1000022dc: d10143a0    	sub	x0, x29, #0x50
1000022e0: 940022c0    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000022e4: 385e73a8    	ldurb	w8, [x29, #-0x19]
1000022e8: 37000108    	tbnz	w8, #0x0, 0x100002308 <readDownloadFiles()+0x34c>
1000022ec: 14000004    	b	0x1000022fc <readDownloadFiles()+0x340>
1000022f0: d10143a0    	sub	x0, x29, #0x50
1000022f4: 940022bb    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000022f8: 14000008    	b	0x100002318 <readDownloadFiles()+0x35c>
1000022fc: f94017e0    	ldr	x0, [sp, #0x28]
100002300: 94000126    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100002304: 14000001    	b	0x100002308 <readDownloadFiles()+0x34c>
100002308: a9557bfd    	ldp	x29, x30, [sp, #0x150]
10000230c: a9546ffc    	ldp	x28, x27, [sp, #0x140]
100002310: 910583ff    	add	sp, sp, #0x160
100002314: d65f03c0    	ret
100002318: f94017e0    	ldr	x0, [sp, #0x28]
10000231c: 9400011f    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100002320: 14000001    	b	0x100002324 <readDownloadFiles()+0x368>
100002324: f85d03a0    	ldur	x0, [x29, #-0x30]
100002328: 94002266    	bl	0x10000acc0 <_strlen+0x10000acc0>
10000232c: 94000117    	bl	0x100002788 <___clang_call_terminate>

0000000100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>:
100002330: d10083ff    	sub	sp, sp, #0x20
100002334: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002338: 910043fd    	add	x29, sp, #0x10
10000233c: f90007e0    	str	x0, [sp, #0x8]
100002340: f94007e0    	ldr	x0, [sp, #0x8]
100002344: f90003e0    	str	x0, [sp]
100002348: 94001822    	bl	0x1000083d0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
10000234c: f94003e0    	ldr	x0, [sp]
100002350: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002354: 910083ff    	add	sp, sp, #0x20
100002358: d65f03c0    	ret

000000010000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>:
10000235c: d100c3ff    	sub	sp, sp, #0x30
100002360: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002364: 910083fd    	add	x29, sp, #0x20
100002368: f81f83a0    	stur	x0, [x29, #-0x8]
10000236c: f9000be1    	str	x1, [sp, #0x10]
100002370: f85f83a8    	ldur	x8, [x29, #-0x8]
100002374: f90007e8    	str	x8, [sp, #0x8]
100002378: f9400be8    	ldr	x8, [sp, #0x10]
10000237c: f90003e8    	str	x8, [sp]
100002380: f9400be0    	ldr	x0, [sp, #0x10]
100002384: 9400190e    	bl	0x1000087bc <std::__1::char_traits<char>::length[abi:ne180100](char const*)>
100002388: f94003e1    	ldr	x1, [sp]
10000238c: aa0003e2    	mov	x2, x0
100002390: f94007e0    	ldr	x0, [sp, #0x8]
100002394: 9400188f    	bl	0x1000085d0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)>
100002398: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000239c: 9100c3ff    	add	sp, sp, #0x30
1000023a0: d65f03c0    	ret

00000001000023a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> std::__1::operator+[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, char const*)>:
1000023a4: d100c3ff    	sub	sp, sp, #0x30
1000023a8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000023ac: 910083fd    	add	x29, sp, #0x20
1000023b0: f90003e8    	str	x8, [sp]
1000023b4: f81f83a8    	stur	x8, [x29, #-0x8]
1000023b8: f9000be0    	str	x0, [sp, #0x10]
1000023bc: f90007e1    	str	x1, [sp, #0x8]
1000023c0: f9400be0    	ldr	x0, [sp, #0x10]
1000023c4: f94007e1    	ldr	x1, [sp, #0x8]
1000023c8: 94002274    	bl	0x10000ad98 <_strlen+0x10000ad98>
1000023cc: aa0003e1    	mov	x1, x0
1000023d0: f94003e0    	ldr	x0, [sp]
1000023d4: 940014ee    	bl	0x10000778c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)>
1000023d8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000023dc: 9100c3ff    	add	sp, sp, #0x30
1000023e0: d65f03c0    	ret

00000001000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>:
1000023e4: d100c3ff    	sub	sp, sp, #0x30
1000023e8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000023ec: 910083fd    	add	x29, sp, #0x20
1000023f0: f81f83a0    	stur	x0, [x29, #-0x8]
1000023f4: f9000be1    	str	x1, [sp, #0x10]
1000023f8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000023fc: f90007e0    	str	x0, [sp, #0x8]
100002400: f9400be1    	ldr	x1, [sp, #0x10]
100002404: 94001aa3    	bl	0x100008e90 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100002408: f94007e0    	ldr	x0, [sp, #0x8]
10000240c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002410: 9100c3ff    	add	sp, sp, #0x30
100002414: d65f03c0    	ret

0000000100002418 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)>:
100002418: d100c3ff    	sub	sp, sp, #0x30
10000241c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002420: 910083fd    	add	x29, sp, #0x20
100002424: f81f83a0    	stur	x0, [x29, #-0x8]
100002428: f9000be1    	str	x1, [sp, #0x10]
10000242c: 39003fe2    	strb	w2, [sp, #0xf]
100002430: f85f83a0    	ldur	x0, [x29, #-0x8]
100002434: f90003e0    	str	x0, [sp]
100002438: f9400be1    	ldr	x1, [sp, #0x10]
10000243c: 39403fe2    	ldrb	w2, [sp, #0xf]
100002440: 94001aaa    	bl	0x100008ee8 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)>
100002444: f94003e0    	ldr	x0, [sp]
100002448: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000244c: 9100c3ff    	add	sp, sp, #0x30
100002450: d65f03c0    	ret

0000000100002454 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::path const&)>:
100002454: d100c3ff    	sub	sp, sp, #0x30
100002458: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000245c: 910083fd    	add	x29, sp, #0x20
100002460: f81f83a0    	stur	x0, [x29, #-0x8]
100002464: f9000be1    	str	x1, [sp, #0x10]
100002468: f85f83a0    	ldur	x0, [x29, #-0x8]
10000246c: f90007e0    	str	x0, [sp, #0x8]
100002470: f9400be1    	ldr	x1, [sp, #0x10]
100002474: d2800002    	mov	x2, #0x0                ; =0
100002478: 52800003    	mov	w3, #0x0                ; =0
10000247c: 94002283    	bl	0x10000ae88 <_strlen+0x10000ae88>
100002480: f94007e0    	ldr	x0, [sp, #0x8]
100002484: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002488: 9100c3ff    	add	sp, sp, #0x30
10000248c: d65f03c0    	ret

0000000100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>:
100002490: d10083ff    	sub	sp, sp, #0x20
100002494: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002498: 910043fd    	add	x29, sp, #0x10
10000249c: f90007e0    	str	x0, [sp, #0x8]
1000024a0: f94007e0    	ldr	x0, [sp, #0x8]
1000024a4: f90003e0    	str	x0, [sp]
1000024a8: 940012e1    	bl	0x10000702c <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000024ac: f94003e0    	ldr	x0, [sp]
1000024b0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000024b4: 910083ff    	add	sp, sp, #0x20
1000024b8: d65f03c0    	ret

00000001000024bc <std::__1::__fs::filesystem::begin[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>:
1000024bc: d100c3ff    	sub	sp, sp, #0x30
1000024c0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000024c4: 910083fd    	add	x29, sp, #0x20
1000024c8: f90007e8    	str	x8, [sp, #0x8]
1000024cc: aa0003e1    	mov	x1, x0
1000024d0: f94007e0    	ldr	x0, [sp, #0x8]
1000024d4: aa0003e8    	mov	x8, x0
1000024d8: f81f83a8    	stur	x8, [x29, #-0x8]
1000024dc: aa0103e8    	mov	x8, x1
1000024e0: f9000be8    	str	x8, [sp, #0x10]
1000024e4: 940012dd    	bl	0x100007058 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator&&)>
1000024e8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000024ec: 9100c3ff    	add	sp, sp, #0x30
1000024f0: d65f03c0    	ret

00000001000024f4 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>:
1000024f4: d100c3ff    	sub	sp, sp, #0x30
1000024f8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000024fc: 910083fd    	add	x29, sp, #0x20
100002500: f81f83a0    	stur	x0, [x29, #-0x8]
100002504: f9000be1    	str	x1, [sp, #0x10]
100002508: f85f83a0    	ldur	x0, [x29, #-0x8]
10000250c: f90007e0    	str	x0, [sp, #0x8]
100002510: f9400be1    	ldr	x1, [sp, #0x10]
100002514: 94001308    	bl	0x100007134 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>
100002518: f94007e0    	ldr	x0, [sp, #0x8]
10000251c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002520: 9100c3ff    	add	sp, sp, #0x30
100002524: d65f03c0    	ret

0000000100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>:
100002528: d10083ff    	sub	sp, sp, #0x20
10000252c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002530: 910043fd    	add	x29, sp, #0x10
100002534: f90007e0    	str	x0, [sp, #0x8]
100002538: f94007e0    	ldr	x0, [sp, #0x8]
10000253c: f90003e0    	str	x0, [sp]
100002540: 94001352    	bl	0x100007288 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002544: f94003e0    	ldr	x0, [sp]
100002548: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000254c: 910083ff    	add	sp, sp, #0x20
100002550: d65f03c0    	ret

0000000100002554 <std::__1::__fs::filesystem::end[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>:
100002554: d100c3ff    	sub	sp, sp, #0x30
100002558: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000255c: 910083fd    	add	x29, sp, #0x20
100002560: f90007e8    	str	x8, [sp, #0x8]
100002564: aa0003e8    	mov	x8, x0
100002568: f94007e0    	ldr	x0, [sp, #0x8]
10000256c: aa0003e9    	mov	x9, x0
100002570: f81f83a9    	stur	x9, [x29, #-0x8]
100002574: f9000be8    	str	x8, [sp, #0x10]
100002578: 940013a9    	bl	0x10000741c <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100]()>
10000257c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002580: 9100c3ff    	add	sp, sp, #0x30
100002584: d65f03c0    	ret

0000000100002588 <std::__1::__fs::filesystem::operator!=[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&, std::__1::__fs::filesystem::directory_iterator const&)>:
100002588: d10083ff    	sub	sp, sp, #0x20
10000258c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002590: 910043fd    	add	x29, sp, #0x10
100002594: f90007e0    	str	x0, [sp, #0x8]
100002598: f90003e1    	str	x1, [sp]
10000259c: f94007e0    	ldr	x0, [sp, #0x8]
1000025a0: f94003e1    	ldr	x1, [sp]
1000025a4: 940013c6    	bl	0x1000074bc <std::__1::__fs::filesystem::operator==[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&, std::__1::__fs::filesystem::directory_iterator const&)>
1000025a8: 52000008    	eor	w8, w0, #0x1
1000025ac: 12000100    	and	w0, w8, #0x1
1000025b0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000025b4: 910083ff    	add	sp, sp, #0x20
1000025b8: d65f03c0    	ret

00000001000025bc <std::__1::__fs::filesystem::directory_iterator::operator*[abi:ne180100]() const>:
1000025bc: d10083ff    	sub	sp, sp, #0x20
1000025c0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000025c4: 910043fd    	add	x29, sp, #0x10
1000025c8: f90007e0    	str	x0, [sp, #0x8]
1000025cc: f94007e0    	ldr	x0, [sp, #0x8]
1000025d0: 940021c8    	bl	0x10000acf0 <_strlen+0x10000acf0>
1000025d4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000025d8: 910083ff    	add	sp, sp, #0x20
1000025dc: d65f03c0    	ret

00000001000025e0 <std::__1::__fs::filesystem::directory_entry::path[abi:ne180100]() const>:
1000025e0: d10043ff    	sub	sp, sp, #0x10
1000025e4: f90007e0    	str	x0, [sp, #0x8]
1000025e8: f94007e0    	ldr	x0, [sp, #0x8]
1000025ec: 910043ff    	add	sp, sp, #0x10
1000025f0: d65f03c0    	ret

00000001000025f4 <std::__1::__fs::filesystem::path::filename[abi:ne180100]() const>:
1000025f4: d10183ff    	sub	sp, sp, #0x60
1000025f8: a9057bfd    	stp	x29, x30, [sp, #0x50]
1000025fc: 910143fd    	add	x29, sp, #0x50
100002600: f90007e8    	str	x8, [sp, #0x8]
100002604: f81f83a8    	stur	x8, [x29, #-0x8]
100002608: f81f03a0    	stur	x0, [x29, #-0x10]
10000260c: f85f03a0    	ldur	x0, [x29, #-0x10]
100002610: 940021bb    	bl	0x10000acfc <_strlen+0x10000acfc>
100002614: aa0103e8    	mov	x8, x1
100002618: 910063e1    	add	x1, sp, #0x18
10000261c: f9000fe0    	str	x0, [sp, #0x18]
100002620: f90013e8    	str	x8, [sp, #0x20]
100002624: 9100a3e0    	add	x0, sp, #0x28
100002628: f9000be0    	str	x0, [sp, #0x10]
10000262c: 940013c8    	bl	0x10000754c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string<std::__1::basic_string_view<char, std::__1::char_traits<char>>, 0>(std::__1::basic_string_view<char, std::__1::char_traits<char>> const&)>
100002630: f94007e0    	ldr	x0, [sp, #0x8]
100002634: f9400be1    	ldr	x1, [sp, #0x10]
100002638: 52800002    	mov	w2, #0x0                ; =0
10000263c: 940013d1    	bl	0x100007580 <std::__1::__fs::filesystem::path::path[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, std::__1::__fs::filesystem::path::format)>
100002640: f9400be0    	ldr	x0, [sp, #0x10]
100002644: 940021e7    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002648: a9457bfd    	ldp	x29, x30, [sp, #0x50]
10000264c: 910183ff    	add	sp, sp, #0x60
100002650: d65f03c0    	ret

0000000100002654 <std::__1::__fs::filesystem::path::string[abi:ne180100]() const>:
100002654: d100c3ff    	sub	sp, sp, #0x30
100002658: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000265c: 910083fd    	add	x29, sp, #0x20
100002660: f90007e8    	str	x8, [sp, #0x8]
100002664: aa0003e8    	mov	x8, x0
100002668: f94007e0    	ldr	x0, [sp, #0x8]
10000266c: aa0003e9    	mov	x9, x0
100002670: f81f83a9    	stur	x9, [x29, #-0x8]
100002674: f9000be8    	str	x8, [sp, #0x10]
100002678: f9400be1    	ldr	x1, [sp, #0x10]
10000267c: 940021d3    	bl	0x10000adc8 <_strlen+0x10000adc8>
100002680: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002684: 9100c3ff    	add	sp, sp, #0x30
100002688: d65f03c0    	ret

000000010000268c <std::__1::__fs::filesystem::is_regular_file[abi:ne180100](std::__1::__fs::filesystem::path const&)>:
10000268c: d100c3ff    	sub	sp, sp, #0x30
100002690: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002694: 910083fd    	add	x29, sp, #0x20
100002698: f81f83a0    	stur	x0, [x29, #-0x8]
10000269c: f85f83a0    	ldur	x0, [x29, #-0x8]
1000026a0: 910043e8    	add	x8, sp, #0x10
1000026a4: f90003e8    	str	x8, [sp]
1000026a8: d2800001    	mov	x1, #0x0                ; =0
1000026ac: 9400220f    	bl	0x10000aee8 <_strlen+0x10000aee8>
1000026b0: f94003e0    	ldr	x0, [sp]
1000026b4: 940014e0    	bl	0x100007a34 <std::__1::__fs::filesystem::is_regular_file[abi:ne180100](std::__1::__fs::filesystem::file_status)>
1000026b8: aa0003e8    	mov	x8, x0
1000026bc: f94003e0    	ldr	x0, [sp]
1000026c0: b9000fe8    	str	w8, [sp, #0xc]
1000026c4: 940014e9    	bl	0x100007a68 <std::__1::__fs::filesystem::file_status::~file_status[abi:ne180100]()>
1000026c8: b9400fe0    	ldr	w0, [sp, #0xc]
1000026cc: 12000000    	and	w0, w0, #0x1
1000026d0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000026d4: 9100c3ff    	add	sp, sp, #0x30
1000026d8: d65f03c0    	ret

00000001000026dc <std::__1::__fs::filesystem::directory_entry::operator std::__1::__fs::filesystem::path const&[abi:ne180100]() const>:
1000026dc: d10043ff    	sub	sp, sp, #0x10
1000026e0: f90007e0    	str	x0, [sp, #0x8]
1000026e4: f94007e0    	ldr	x0, [sp, #0x8]
1000026e8: 910043ff    	add	sp, sp, #0x10
1000026ec: d65f03c0    	ret

00000001000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
1000026f0: d10103ff    	sub	sp, sp, #0x40
1000026f4: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000026f8: 9100c3fd    	add	x29, sp, #0x30
1000026fc: f81f83a0    	stur	x0, [x29, #-0x8]
100002700: f81f03a1    	stur	x1, [x29, #-0x10]
100002704: f85f83a0    	ldur	x0, [x29, #-0x8]
100002708: f90007e0    	str	x0, [sp, #0x8]
10000270c: f85f03a3    	ldur	x3, [x29, #-0x10]
100002710: d2800002    	mov	x2, #0x0                ; =0
100002714: aa0203e1    	mov	x1, x2
100002718: 94002188    	bl	0x10000ad38 <_strlen+0x10000ad38>
10000271c: f9000fe0    	str	x0, [sp, #0x18]
100002720: f9400fe0    	ldr	x0, [sp, #0x18]
100002724: 94001e40    	bl	0x10000a024 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__as_link[abi:ne180100]()>
100002728: aa0003e8    	mov	x8, x0
10000272c: f94007e0    	ldr	x0, [sp, #0x8]
100002730: f9000be8    	str	x8, [sp, #0x10]
100002734: f9400be1    	ldr	x1, [sp, #0x10]
100002738: f9400be2    	ldr	x2, [sp, #0x10]
10000273c: 94001e43    	bl	0x10000a048 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__link_nodes_at_back(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
100002740: f94007e0    	ldr	x0, [sp, #0x8]
100002744: 94001551    	bl	0x100007c88 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]()>
100002748: f9400008    	ldr	x8, [x0]
10000274c: 91000508    	add	x8, x8, #0x1
100002750: f9000008    	str	x8, [x0]
100002754: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100002758: 910103ff    	add	sp, sp, #0x40
10000275c: d65f03c0    	ret

0000000100002760 <std::__1::__fs::filesystem::directory_iterator::operator++[abi:ne180100]()>:
100002760: d10083ff    	sub	sp, sp, #0x20
100002764: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002768: 910043fd    	add	x29, sp, #0x10
10000276c: f90007e0    	str	x0, [sp, #0x8]
100002770: f94007e0    	ldr	x0, [sp, #0x8]
100002774: d2800001    	mov	x1, #0x0                ; =0
100002778: 940021c1    	bl	0x10000ae7c <_strlen+0x10000ae7c>
10000277c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002780: 910083ff    	add	sp, sp, #0x20
100002784: d65f03c0    	ret

0000000100002788 <___clang_call_terminate>:
100002788: a9bf7bfd    	stp	x29, x30, [sp, #-0x10]!
10000278c: 910003fd    	mov	x29, sp
100002790: 940021f7    	bl	0x10000af6c <_strlen+0x10000af6c>
100002794: 940021e4    	bl	0x10000af24 <_strlen+0x10000af24>

0000000100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>:
100002798: d10083ff    	sub	sp, sp, #0x20
10000279c: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000027a0: 910043fd    	add	x29, sp, #0x10
1000027a4: f90007e0    	str	x0, [sp, #0x8]
1000027a8: f94007e0    	ldr	x0, [sp, #0x8]
1000027ac: f90003e0    	str	x0, [sp]
1000027b0: 940014c4    	bl	0x100007ac0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000027b4: f94003e0    	ldr	x0, [sp]
1000027b8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000027bc: 910083ff    	add	sp, sp, #0x20
1000027c0: d65f03c0    	ret

00000001000027c4 <readDownloadFolders()>:
1000027c4: d10583ff    	sub	sp, sp, #0x160
1000027c8: a9146ffc    	stp	x28, x27, [sp, #0x140]
1000027cc: a9157bfd    	stp	x29, x30, [sp, #0x150]
1000027d0: 910543fd    	add	x29, sp, #0x150
1000027d4: aa0803e0    	mov	x0, x8
1000027d8: f90017e0    	str	x0, [sp, #0x28]
1000027dc: aa0003e8    	mov	x8, x0
1000027e0: f81e83a8    	stur	x8, [x29, #-0x18]
1000027e4: 52800008    	mov	w8, #0x0                ; =0
1000027e8: 12000108    	and	w8, w8, #0x1
1000027ec: 12000108    	and	w8, w8, #0x1
1000027f0: 381e73a8    	sturb	w8, [x29, #-0x19]
1000027f4: 97fffecf    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
1000027f8: b0000040    	adrp	x0, 0x10000b000 <GCC_except_table0+0x4>
1000027fc: 91169000    	add	x0, x0, #0x5a4
100002800: 940021f0    	bl	0x10000afc0 <_strlen+0x10000afc0>
100002804: f9001be0    	str	x0, [sp, #0x30]
100002808: 14000001    	b	0x10000280c <readDownloadFolders()+0x48>
10000280c: f9401be8    	ldr	x8, [sp, #0x30]
100002810: f81d83a8    	stur	x8, [x29, #-0x28]
100002814: f85d83a8    	ldur	x8, [x29, #-0x28]
100002818: f1000108    	subs	x8, x8, #0x0
10000281c: 1a9f07e8    	cset	w8, ne
100002820: 37000208    	tbnz	w8, #0x0, 0x100002860 <readDownloadFolders()+0x9c>
100002824: 14000001    	b	0x100002828 <readDownloadFolders()+0x64>
100002828: d0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000282c: f940d000    	ldr	x0, [x0, #0x1a0]
100002830: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002834: 9116a421    	add	x1, x1, #0x5a9
100002838: 97fffec9    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000283c: 14000001    	b	0x100002840 <readDownloadFolders()+0x7c>
100002840: 52800020    	mov	w0, #0x1                ; =1
100002844: 940021dc    	bl	0x10000afb4 <_strlen+0x10000afb4>
100002848: 14000001    	b	0x10000284c <readDownloadFolders()+0x88>
10000284c: d4200020    	brk	#0x1
100002850: f81d03a0    	stur	x0, [x29, #-0x30]
100002854: aa0103e8    	mov	x8, x1
100002858: b81cc3a8    	stur	w8, [x29, #-0x34]
10000285c: 140000b0    	b	0x100002b1c <readDownloadFolders()+0x358>
100002860: f85d83a1    	ldur	x1, [x29, #-0x28]
100002864: d101a3a0    	sub	x0, x29, #0x68
100002868: 97fffedf    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
10000286c: 14000001    	b	0x100002870 <readDownloadFolders()+0xac>
100002870: d10143a8    	sub	x8, x29, #0x50
100002874: d101a3a0    	sub	x0, x29, #0x68
100002878: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000287c: 91172021    	add	x1, x1, #0x5c8
100002880: 97fffec9    	bl	0x1000023a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> std::__1::operator+[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, char const*)>
100002884: 14000001    	b	0x100002888 <readDownloadFolders()+0xc4>
100002888: d101a3a0    	sub	x0, x29, #0x68
10000288c: 94002155    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002890: d10263a0    	sub	x0, x29, #0x98
100002894: d10143a1    	sub	x1, x29, #0x50
100002898: 52800002    	mov	w2, #0x0                ; =0
10000289c: 97fffedf    	bl	0x100002418 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)>
1000028a0: 14000001    	b	0x1000028a4 <readDownloadFolders()+0xe0>
1000028a4: d10203a0    	sub	x0, x29, #0x80
1000028a8: d10263a1    	sub	x1, x29, #0x98
1000028ac: 97fffeea    	bl	0x100002454 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::path const&)>
1000028b0: 14000001    	b	0x1000028b4 <readDownloadFolders()+0xf0>
1000028b4: d10263a0    	sub	x0, x29, #0x98
1000028b8: 97fffef6    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000028bc: d10203a8    	sub	x8, x29, #0x80
1000028c0: f81903a8    	stur	x8, [x29, #-0x70]
1000028c4: f85903a1    	ldur	x1, [x29, #-0x70]
1000028c8: 910263e0    	add	x0, sp, #0x98
1000028cc: f9000fe0    	str	x0, [sp, #0x18]
1000028d0: 97ffff09    	bl	0x1000024f4 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>
1000028d4: f9400fe0    	ldr	x0, [sp, #0x18]
1000028d8: 9102a3e8    	add	x8, sp, #0xa8
1000028dc: 97fffef8    	bl	0x1000024bc <std::__1::__fs::filesystem::begin[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>
1000028e0: f9400fe0    	ldr	x0, [sp, #0x18]
1000028e4: 97ffff11    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
1000028e8: f85903a1    	ldur	x1, [x29, #-0x70]
1000028ec: 9101e3e0    	add	x0, sp, #0x78
1000028f0: f90013e0    	str	x0, [sp, #0x20]
1000028f4: 97ffff00    	bl	0x1000024f4 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>
1000028f8: f94013e0    	ldr	x0, [sp, #0x20]
1000028fc: 910223e8    	add	x8, sp, #0x88
100002900: 97ffff15    	bl	0x100002554 <std::__1::__fs::filesystem::end[abi:ne180100](std::__1::__fs::filesystem::directory_iterator)>
100002904: f94013e0    	ldr	x0, [sp, #0x20]
100002908: 97ffff08    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
10000290c: 14000001    	b	0x100002910 <readDownloadFolders()+0x14c>
100002910: 9102a3e0    	add	x0, sp, #0xa8
100002914: 910223e1    	add	x1, sp, #0x88
100002918: 97ffff1c    	bl	0x100002588 <std::__1::__fs::filesystem::operator!=[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&, std::__1::__fs::filesystem::directory_iterator const&)>
10000291c: 37000320    	tbnz	w0, #0x0, 0x100002980 <readDownloadFolders()+0x1bc>
100002920: 14000001    	b	0x100002924 <readDownloadFolders()+0x160>
100002924: 910223e0    	add	x0, sp, #0x88
100002928: 97ffff00    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
10000292c: 9102a3e0    	add	x0, sp, #0xa8
100002930: 97fffefe    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002934: d10203a0    	sub	x0, x29, #0x80
100002938: 97fffefc    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
10000293c: 1400005f    	b	0x100002ab8 <readDownloadFolders()+0x2f4>
100002940: f81d03a0    	stur	x0, [x29, #-0x30]
100002944: aa0103e8    	mov	x8, x1
100002948: b81cc3a8    	stur	w8, [x29, #-0x34]
10000294c: d101a3a0    	sub	x0, x29, #0x68
100002950: 94002124    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002954: 14000072    	b	0x100002b1c <readDownloadFolders()+0x358>
100002958: f81d03a0    	stur	x0, [x29, #-0x30]
10000295c: aa0103e8    	mov	x8, x1
100002960: b81cc3a8    	stur	w8, [x29, #-0x34]
100002964: 14000043    	b	0x100002a70 <readDownloadFolders()+0x2ac>
100002968: f81d03a0    	stur	x0, [x29, #-0x30]
10000296c: aa0103e8    	mov	x8, x1
100002970: b81cc3a8    	stur	w8, [x29, #-0x34]
100002974: d10263a0    	sub	x0, x29, #0x98
100002978: 97fffec6    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
10000297c: 1400003d    	b	0x100002a70 <readDownloadFolders()+0x2ac>
100002980: 9102a3e0    	add	x0, sp, #0xa8
100002984: 97ffff0e    	bl	0x1000025bc <std::__1::__fs::filesystem::directory_iterator::operator*[abi:ne180100]() const>
100002988: f9000be0    	str	x0, [sp, #0x10]
10000298c: 14000001    	b	0x100002990 <readDownloadFolders()+0x1cc>
100002990: f9400be8    	ldr	x8, [sp, #0x10]
100002994: f9003be8    	str	x8, [sp, #0x70]
100002998: f9403be0    	ldr	x0, [sp, #0x70]
10000299c: 97ffff11    	bl	0x1000025e0 <std::__1::__fs::filesystem::directory_entry::path[abi:ne180100]() const>
1000029a0: 910103e8    	add	x8, sp, #0x40
1000029a4: 97ffff14    	bl	0x1000025f4 <std::__1::__fs::filesystem::path::filename[abi:ne180100]() const>
1000029a8: 14000001    	b	0x1000029ac <readDownloadFolders()+0x1e8>
1000029ac: 910163e8    	add	x8, sp, #0x58
1000029b0: 910103e0    	add	x0, sp, #0x40
1000029b4: 97ffff28    	bl	0x100002654 <std::__1::__fs::filesystem::path::string[abi:ne180100]() const>
1000029b8: 14000001    	b	0x1000029bc <readDownloadFolders()+0x1f8>
1000029bc: 910103e0    	add	x0, sp, #0x40
1000029c0: 97fffeb4    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000029c4: f9403be0    	ldr	x0, [sp, #0x70]
1000029c8: 97ffff45    	bl	0x1000026dc <std::__1::__fs::filesystem::directory_entry::operator std::__1::__fs::filesystem::path const&[abi:ne180100]() const>
1000029cc: 97ffff30    	bl	0x10000268c <std::__1::__fs::filesystem::is_regular_file[abi:ne180100](std::__1::__fs::filesystem::path const&)>
1000029d0: b9000fe0    	str	w0, [sp, #0xc]
1000029d4: 14000001    	b	0x1000029d8 <readDownloadFolders()+0x214>
1000029d8: b9400fe8    	ldr	w8, [sp, #0xc]
1000029dc: 370002e8    	tbnz	w8, #0x0, 0x100002a38 <readDownloadFolders()+0x274>
1000029e0: 14000001    	b	0x1000029e4 <readDownloadFolders()+0x220>
1000029e4: f94017e0    	ldr	x0, [sp, #0x28]
1000029e8: 910163e1    	add	x1, sp, #0x58
1000029ec: 97ffff41    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000029f0: 14000001    	b	0x1000029f4 <readDownloadFolders()+0x230>
1000029f4: 14000011    	b	0x100002a38 <readDownloadFolders()+0x274>
1000029f8: f81d03a0    	stur	x0, [x29, #-0x30]
1000029fc: aa0103e8    	mov	x8, x1
100002a00: b81cc3a8    	stur	w8, [x29, #-0x34]
100002a04: 14000014    	b	0x100002a54 <readDownloadFolders()+0x290>
100002a08: f81d03a0    	stur	x0, [x29, #-0x30]
100002a0c: aa0103e8    	mov	x8, x1
100002a10: b81cc3a8    	stur	w8, [x29, #-0x34]
100002a14: 910103e0    	add	x0, sp, #0x40
100002a18: 97fffe9e    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
100002a1c: 1400000e    	b	0x100002a54 <readDownloadFolders()+0x290>
100002a20: f81d03a0    	stur	x0, [x29, #-0x30]
100002a24: aa0103e8    	mov	x8, x1
100002a28: b81cc3a8    	stur	w8, [x29, #-0x34]
100002a2c: 910163e0    	add	x0, sp, #0x58
100002a30: 940020ec    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002a34: 14000008    	b	0x100002a54 <readDownloadFolders()+0x290>
100002a38: 910163e0    	add	x0, sp, #0x58
100002a3c: 940020e9    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002a40: 14000001    	b	0x100002a44 <readDownloadFolders()+0x280>
100002a44: 9102a3e0    	add	x0, sp, #0xa8
100002a48: 97ffff46    	bl	0x100002760 <std::__1::__fs::filesystem::directory_iterator::operator++[abi:ne180100]()>
100002a4c: 14000001    	b	0x100002a50 <readDownloadFolders()+0x28c>
100002a50: 17ffffb0    	b	0x100002910 <readDownloadFolders()+0x14c>
100002a54: 910223e0    	add	x0, sp, #0x88
100002a58: 97fffeb4    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002a5c: 9102a3e0    	add	x0, sp, #0xa8
100002a60: 97fffeb2    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002a64: d10203a0    	sub	x0, x29, #0x80
100002a68: 97fffeb0    	bl	0x100002528 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>
100002a6c: 14000001    	b	0x100002a70 <readDownloadFolders()+0x2ac>
100002a70: b85cc3a8    	ldur	w8, [x29, #-0x34]
100002a74: 71000508    	subs	w8, w8, #0x1
100002a78: 1a9f07e8    	cset	w8, ne
100002a7c: 370003c8    	tbnz	w8, #0x0, 0x100002af4 <readDownloadFolders()+0x330>
100002a80: 14000001    	b	0x100002a84 <readDownloadFolders()+0x2c0>
100002a84: f85d03a0    	ldur	x0, [x29, #-0x30]
100002a88: 94002139    	bl	0x10000af6c <_strlen+0x10000af6c>
100002a8c: f9001fe0    	str	x0, [sp, #0x38]
100002a90: d0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100002a94: f940d000    	ldr	x0, [x0, #0x1a0]
100002a98: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002a9c: 91174c21    	add	x1, x1, #0x5d3
100002aa0: 97fffe2f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100002aa4: 14000001    	b	0x100002aa8 <readDownloadFolders()+0x2e4>
100002aa8: 52800020    	mov	w0, #0x1                ; =1
100002aac: 94002142    	bl	0x10000afb4 <_strlen+0x10000afb4>
100002ab0: 14000001    	b	0x100002ab4 <readDownloadFolders()+0x2f0>
100002ab4: d4200020    	brk	#0x1
100002ab8: 52800028    	mov	w8, #0x1                ; =1
100002abc: 12000108    	and	w8, w8, #0x1
100002ac0: 12000108    	and	w8, w8, #0x1
100002ac4: 381e73a8    	sturb	w8, [x29, #-0x19]
100002ac8: d10143a0    	sub	x0, x29, #0x50
100002acc: 940020c5    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002ad0: 385e73a8    	ldurb	w8, [x29, #-0x19]
100002ad4: 370001c8    	tbnz	w8, #0x0, 0x100002b0c <readDownloadFolders()+0x348>
100002ad8: 1400000a    	b	0x100002b00 <readDownloadFolders()+0x33c>
100002adc: f81d03a0    	stur	x0, [x29, #-0x30]
100002ae0: aa0103e8    	mov	x8, x1
100002ae4: b81cc3a8    	stur	w8, [x29, #-0x34]
100002ae8: 94002124    	bl	0x10000af78 <_strlen+0x10000af78>
100002aec: 14000001    	b	0x100002af0 <readDownloadFolders()+0x32c>
100002af0: 14000001    	b	0x100002af4 <readDownloadFolders()+0x330>
100002af4: d10143a0    	sub	x0, x29, #0x50
100002af8: 940020ba    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002afc: 14000008    	b	0x100002b1c <readDownloadFolders()+0x358>
100002b00: f94017e0    	ldr	x0, [sp, #0x28]
100002b04: 97ffff25    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100002b08: 14000001    	b	0x100002b0c <readDownloadFolders()+0x348>
100002b0c: a9557bfd    	ldp	x29, x30, [sp, #0x150]
100002b10: a9546ffc    	ldp	x28, x27, [sp, #0x140]
100002b14: 910583ff    	add	sp, sp, #0x160
100002b18: d65f03c0    	ret
100002b1c: f94017e0    	ldr	x0, [sp, #0x28]
100002b20: 97ffff1e    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100002b24: 14000001    	b	0x100002b28 <readDownloadFolders()+0x364>
100002b28: f85d03a0    	ldur	x0, [x29, #-0x30]
100002b2c: 94002065    	bl	0x10000acc0 <_strlen+0x10000acc0>
100002b30: 97ffff16    	bl	0x100002788 <___clang_call_terminate>

0000000100002b34 <findJPG()>:
100002b34: d10683ff    	sub	sp, sp, #0x1a0
100002b38: a9186ffc    	stp	x28, x27, [sp, #0x180]
100002b3c: a9197bfd    	stp	x29, x30, [sp, #0x190]
100002b40: 910643fd    	add	x29, sp, #0x190
100002b44: d102e3a9    	sub	x9, x29, #0xb8
100002b48: f90023e9    	str	x9, [sp, #0x40]
100002b4c: aa0803e0    	mov	x0, x8
100002b50: f90027e0    	str	x0, [sp, #0x48]
100002b54: aa0003e8    	mov	x8, x0
100002b58: f9005128    	str	x8, [x9, #0xa0]
100002b5c: 52800008    	mov	w8, #0x0                ; =0
100002b60: b90053e8    	str	w8, [sp, #0x50]
100002b64: 12000108    	and	w8, w8, #0x1
100002b68: 12000108    	and	w8, w8, #0x1
100002b6c: 381e73a8    	sturb	w8, [x29, #-0x19]
100002b70: 97fffdf0    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100002b74: b94053e2    	ldr	w2, [sp, #0x50]
100002b78: d100e3a0    	sub	x0, x29, #0x38
100002b7c: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002b80: 9117d421    	add	x1, x1, #0x5f5
100002b84: 94000160    	bl	0x100003104 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)>
100002b88: 14000001    	b	0x100002b8c <findJPG()+0x58>
100002b8c: d101a3a8    	sub	x8, x29, #0x68
100002b90: 97fffd0b    	bl	0x100001fbc <readDownloadFiles()>
100002b94: 14000001    	b	0x100002b98 <findJPG()+0x64>
100002b98: f94023e8    	ldr	x8, [sp, #0x40]
100002b9c: d101a3a9    	sub	x9, x29, #0x68
100002ba0: f9003509    	str	x9, [x8, #0x68]
100002ba4: f9403500    	ldr	x0, [x8, #0x68]
100002ba8: 94000166    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100002bac: f94023e8    	ldr	x8, [sp, #0x40]
100002bb0: f9002500    	str	x0, [x8, #0x48]
100002bb4: f9403500    	ldr	x0, [x8, #0x68]
100002bb8: 9400016d    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100002bbc: f94023e8    	ldr	x8, [sp, #0x40]
100002bc0: f9002100    	str	x0, [x8, #0x40]
100002bc4: 14000001    	b	0x100002bc8 <findJPG()+0x94>
100002bc8: d101c3a0    	sub	x0, x29, #0x70
100002bcc: d101e3a1    	sub	x1, x29, #0x78
100002bd0: 94000172    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100002bd4: b9003fe0    	str	w0, [sp, #0x3c]
100002bd8: 14000001    	b	0x100002bdc <findJPG()+0xa8>
100002bdc: b9403fe8    	ldr	w8, [sp, #0x3c]
100002be0: 37000288    	tbnz	w8, #0x0, 0x100002c30 <findJPG()+0xfc>
100002be4: 14000001    	b	0x100002be8 <findJPG()+0xb4>
100002be8: d101a3a0    	sub	x0, x29, #0x68
100002bec: 97fffeeb    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100002bf0: 1400010a    	b	0x100003018 <findJPG()+0x4e4>
100002bf4: f94023e9    	ldr	x9, [sp, #0x40]
100002bf8: f9003d20    	str	x0, [x9, #0x78]
100002bfc: aa0103e8    	mov	x8, x1
100002c00: b9007528    	str	w8, [x9, #0x74]
100002c04: 1400013a    	b	0x1000030ec <findJPG()+0x5b8>
100002c08: f94023e9    	ldr	x9, [sp, #0x40]
100002c0c: f9003d20    	str	x0, [x9, #0x78]
100002c10: aa0103e8    	mov	x8, x1
100002c14: b9007528    	str	w8, [x9, #0x74]
100002c18: 1400012b    	b	0x1000030c4 <findJPG()+0x590>
100002c1c: f94023e9    	ldr	x9, [sp, #0x40]
100002c20: f9003d20    	str	x0, [x9, #0x78]
100002c24: aa0103e8    	mov	x8, x1
100002c28: b9007528    	str	w8, [x9, #0x74]
100002c2c: 140000f8    	b	0x10000300c <findJPG()+0x4d8>
100002c30: d101c3a0    	sub	x0, x29, #0x70
100002c34: 94000166    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100002c38: f9001be0    	str	x0, [sp, #0x30]
100002c3c: 14000001    	b	0x100002c40 <findJPG()+0x10c>
100002c40: f94023e9    	ldr	x9, [sp, #0x40]
100002c44: f9401be8    	ldr	x8, [sp, #0x30]
100002c48: f9001d28    	str	x8, [x9, #0x38]
100002c4c: d10263a0    	sub	x0, x29, #0x98
100002c50: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002c54: 9117f021    	add	x1, x1, #0x5fc
100002c58: 97fffde3    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100002c5c: 14000001    	b	0x100002c60 <findJPG()+0x12c>
100002c60: d102c3a8    	sub	x8, x29, #0xb0
100002c64: d10263a0    	sub	x0, x29, #0x98
100002c68: 97fffc44    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100002c6c: 14000001    	b	0x100002c70 <findJPG()+0x13c>
100002c70: f94023e8    	ldr	x8, [sp, #0x40]
100002c74: f9401d00    	ldr	x0, [x8, #0x38]
100002c78: d102c3a1    	sub	x1, x29, #0xb0
100002c7c: d2800002    	mov	x2, #0x0                ; =0
100002c80: f90017e2    	str	x2, [sp, #0x28]
100002c84: 9400015d    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100002c88: f94017e2    	ldr	x2, [sp, #0x28]
100002c8c: f94023e8    	ldr	x8, [sp, #0x40]
100002c90: aa0003e9    	mov	x9, x0
100002c94: b9000509    	str	w9, [x8, #0x4]
100002c98: f9401d00    	ldr	x0, [x8, #0x38]
100002c9c: d10263a1    	sub	x1, x29, #0x98
100002ca0: 94000156    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100002ca4: f94017e2    	ldr	x2, [sp, #0x28]
100002ca8: f94023e8    	ldr	x8, [sp, #0x40]
100002cac: aa0003e9    	mov	x9, x0
100002cb0: b9000109    	str	w9, [x8]
100002cb4: f9401d00    	ldr	x0, [x8, #0x38]
100002cb8: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002cbc: 91180421    	add	x1, x1, #0x601
100002cc0: 9400016c    	bl	0x100003270 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](char const*, unsigned long) const>
100002cc4: f94023e8    	ldr	x8, [sp, #0x40]
100002cc8: aa0003e9    	mov	x9, x0
100002ccc: b81443a9    	stur	w9, [x29, #-0xbc]
100002cd0: b9800508    	ldrsw	x8, [x8, #0x4]
100002cd4: b1000508    	adds	x8, x8, #0x1
100002cd8: 1a9f17e8    	cset	w8, eq
100002cdc: 5280002a    	mov	w10, #0x1               ; =1
100002ce0: 52800009    	mov	w9, #0x0                ; =0
100002ce4: 1200012b    	and	w11, w9, #0x1
100002ce8: 1200016b    	and	w11, w11, #0x1
100002cec: 3902dfeb    	strb	w11, [sp, #0xb7]
100002cf0: 1200012b    	and	w11, w9, #0x1
100002cf4: 0a0a016b    	and	w11, w11, w10
100002cf8: 39025feb    	strb	w11, [sp, #0x97]
100002cfc: 1200012b    	and	w11, w9, #0x1
100002d00: 0a0a016b    	and	w11, w11, w10
100002d04: 3901dfeb    	strb	w11, [sp, #0x77]
100002d08: 12000129    	and	w9, w9, #0x1
100002d0c: 0a0a0129    	and	w9, w9, w10
100002d10: 39015fe9    	strb	w9, [sp, #0x57]
100002d14: 37000288    	tbnz	w8, #0x0, 0x100002d64 <findJPG()+0x230>
100002d18: 14000001    	b	0x100002d1c <findJPG()+0x1e8>
100002d1c: f94023e8    	ldr	x8, [sp, #0x40]
100002d20: f9401d00    	ldr	x0, [x8, #0x38]
100002d24: b9800501    	ldrsw	x1, [x8, #0x4]
100002d28: 9102e3e8    	add	x8, sp, #0xb8
100002d2c: 92800002    	mov	x2, #-0x1               ; =-1
100002d30: 940001bf    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100002d34: 14000001    	b	0x100002d38 <findJPG()+0x204>
100002d38: 52800028    	mov	w8, #0x1                ; =1
100002d3c: 12000108    	and	w8, w8, #0x1
100002d40: 12000108    	and	w8, w8, #0x1
100002d44: 3902dfe8    	strb	w8, [sp, #0xb7]
100002d48: 9102e3e0    	add	x0, sp, #0xb8
100002d4c: d102c3a1    	sub	x1, x29, #0xb0
100002d50: 94000165    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100002d54: 52800028    	mov	w8, #0x1                ; =1
100002d58: b90027e8    	str	w8, [sp, #0x24]
100002d5c: 370009a0    	tbnz	w0, #0x0, 0x100002e90 <findJPG()+0x35c>
100002d60: 14000001    	b	0x100002d64 <findJPG()+0x230>
100002d64: f94023e8    	ldr	x8, [sp, #0x40]
100002d68: b9800108    	ldrsw	x8, [x8]
100002d6c: b1000508    	adds	x8, x8, #0x1
100002d70: 1a9f17e8    	cset	w8, eq
100002d74: 37000288    	tbnz	w8, #0x0, 0x100002dc4 <findJPG()+0x290>
100002d78: 14000001    	b	0x100002d7c <findJPG()+0x248>
100002d7c: f94023e8    	ldr	x8, [sp, #0x40]
100002d80: f9401d00    	ldr	x0, [x8, #0x38]
100002d84: b9800101    	ldrsw	x1, [x8]
100002d88: 910263e8    	add	x8, sp, #0x98
100002d8c: 92800002    	mov	x2, #-0x1               ; =-1
100002d90: 940001a7    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100002d94: 14000001    	b	0x100002d98 <findJPG()+0x264>
100002d98: 52800028    	mov	w8, #0x1                ; =1
100002d9c: 12000108    	and	w8, w8, #0x1
100002da0: 12000108    	and	w8, w8, #0x1
100002da4: 39025fe8    	strb	w8, [sp, #0x97]
100002da8: 910263e0    	add	x0, sp, #0x98
100002dac: d10263a1    	sub	x1, x29, #0x98
100002db0: 9400014d    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100002db4: 52800028    	mov	w8, #0x1                ; =1
100002db8: b90027e8    	str	w8, [sp, #0x24]
100002dbc: 370006a0    	tbnz	w0, #0x0, 0x100002e90 <findJPG()+0x35c>
100002dc0: 14000001    	b	0x100002dc4 <findJPG()+0x290>
100002dc4: b89443a8    	ldursw	x8, [x29, #-0xbc]
100002dc8: b1000508    	adds	x8, x8, #0x1
100002dcc: 1a9f17e8    	cset	w8, eq
100002dd0: 370002a8    	tbnz	w8, #0x0, 0x100002e24 <findJPG()+0x2f0>
100002dd4: 14000001    	b	0x100002dd8 <findJPG()+0x2a4>
100002dd8: f94023e8    	ldr	x8, [sp, #0x40]
100002ddc: f9401d00    	ldr	x0, [x8, #0x38]
100002de0: b89443a1    	ldursw	x1, [x29, #-0xbc]
100002de4: 9101e3e8    	add	x8, sp, #0x78
100002de8: 92800002    	mov	x2, #-0x1               ; =-1
100002dec: 94000190    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100002df0: 14000001    	b	0x100002df4 <findJPG()+0x2c0>
100002df4: 52800028    	mov	w8, #0x1                ; =1
100002df8: 12000108    	and	w8, w8, #0x1
100002dfc: 12000108    	and	w8, w8, #0x1
100002e00: 3901dfe8    	strb	w8, [sp, #0x77]
100002e04: 9101e3e0    	add	x0, sp, #0x78
100002e08: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002e0c: 91180421    	add	x1, x1, #0x601
100002e10: 940001a1    	bl	0x100003494 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)>
100002e14: 52800028    	mov	w8, #0x1                ; =1
100002e18: b90027e8    	str	w8, [sp, #0x24]
100002e1c: 370003a0    	tbnz	w0, #0x0, 0x100002e90 <findJPG()+0x35c>
100002e20: 14000001    	b	0x100002e24 <findJPG()+0x2f0>
100002e24: b89443a8    	ldursw	x8, [x29, #-0xbc]
100002e28: b1000508    	adds	x8, x8, #0x1
100002e2c: 1a9f17e8    	cset	w8, eq
100002e30: 52800000    	mov	w0, #0x0                ; =0
100002e34: b90023e0    	str	w0, [sp, #0x20]
100002e38: 37000268    	tbnz	w8, #0x0, 0x100002e84 <findJPG()+0x350>
100002e3c: 14000001    	b	0x100002e40 <findJPG()+0x30c>
100002e40: f94023e8    	ldr	x8, [sp, #0x40]
100002e44: f9401d00    	ldr	x0, [x8, #0x38]
100002e48: b89443a1    	ldursw	x1, [x29, #-0xbc]
100002e4c: 910163e8    	add	x8, sp, #0x58
100002e50: 92800002    	mov	x2, #-0x1               ; =-1
100002e54: 94000176    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100002e58: 14000001    	b	0x100002e5c <findJPG()+0x328>
100002e5c: 52800028    	mov	w8, #0x1                ; =1
100002e60: 12000108    	and	w8, w8, #0x1
100002e64: 12000108    	and	w8, w8, #0x1
100002e68: 39015fe8    	strb	w8, [sp, #0x57]
100002e6c: 910163e0    	add	x0, sp, #0x58
100002e70: b0000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100002e74: 91181c21    	add	x1, x1, #0x607
100002e78: 94000187    	bl	0x100003494 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)>
100002e7c: b90023e0    	str	w0, [sp, #0x20]
100002e80: 14000001    	b	0x100002e84 <findJPG()+0x350>
100002e84: b94023e8    	ldr	w8, [sp, #0x20]
100002e88: b90027e8    	str	w8, [sp, #0x24]
100002e8c: 14000001    	b	0x100002e90 <findJPG()+0x35c>
100002e90: b94027e8    	ldr	w8, [sp, #0x24]
100002e94: b9001fe8    	str	w8, [sp, #0x1c]
100002e98: 39415fe8    	ldrb	w8, [sp, #0x57]
100002e9c: 360000a8    	tbz	w8, #0x0, 0x100002eb0 <findJPG()+0x37c>
100002ea0: 14000001    	b	0x100002ea4 <findJPG()+0x370>
100002ea4: 910163e0    	add	x0, sp, #0x58
100002ea8: 94001fce    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002eac: 14000001    	b	0x100002eb0 <findJPG()+0x37c>
100002eb0: 3941dfe8    	ldrb	w8, [sp, #0x77]
100002eb4: 360000a8    	tbz	w8, #0x0, 0x100002ec8 <findJPG()+0x394>
100002eb8: 14000001    	b	0x100002ebc <findJPG()+0x388>
100002ebc: 9101e3e0    	add	x0, sp, #0x78
100002ec0: 94001fc8    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002ec4: 14000001    	b	0x100002ec8 <findJPG()+0x394>
100002ec8: 39425fe8    	ldrb	w8, [sp, #0x97]
100002ecc: 360000a8    	tbz	w8, #0x0, 0x100002ee0 <findJPG()+0x3ac>
100002ed0: 14000001    	b	0x100002ed4 <findJPG()+0x3a0>
100002ed4: 910263e0    	add	x0, sp, #0x98
100002ed8: 94001fc2    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002edc: 14000001    	b	0x100002ee0 <findJPG()+0x3ac>
100002ee0: 3942dfe8    	ldrb	w8, [sp, #0xb7]
100002ee4: 360000a8    	tbz	w8, #0x0, 0x100002ef8 <findJPG()+0x3c4>
100002ee8: 14000001    	b	0x100002eec <findJPG()+0x3b8>
100002eec: 9102e3e0    	add	x0, sp, #0xb8
100002ef0: 94001fbc    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002ef4: 14000001    	b	0x100002ef8 <findJPG()+0x3c4>
100002ef8: b9401fe8    	ldr	w8, [sp, #0x1c]
100002efc: 360006a8    	tbz	w8, #0x0, 0x100002fd0 <findJPG()+0x49c>
100002f00: 14000001    	b	0x100002f04 <findJPG()+0x3d0>
100002f04: f94027e0    	ldr	x0, [sp, #0x48]
100002f08: f94023e8    	ldr	x8, [sp, #0x40]
100002f0c: f9401d01    	ldr	x1, [x8, #0x38]
100002f10: 97fffdf8    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100002f14: 14000001    	b	0x100002f18 <findJPG()+0x3e4>
100002f18: 1400002e    	b	0x100002fd0 <findJPG()+0x49c>
100002f1c: f94023e9    	ldr	x9, [sp, #0x40]
100002f20: f9003d20    	str	x0, [x9, #0x78]
100002f24: aa0103e8    	mov	x8, x1
100002f28: b9007528    	str	w8, [x9, #0x74]
100002f2c: 14000035    	b	0x100003000 <findJPG()+0x4cc>
100002f30: f94023e9    	ldr	x9, [sp, #0x40]
100002f34: f9003d20    	str	x0, [x9, #0x78]
100002f38: aa0103e8    	mov	x8, x1
100002f3c: b9007528    	str	w8, [x9, #0x74]
100002f40: 1400002d    	b	0x100002ff4 <findJPG()+0x4c0>
100002f44: f94023e9    	ldr	x9, [sp, #0x40]
100002f48: f9003d20    	str	x0, [x9, #0x78]
100002f4c: aa0103e8    	mov	x8, x1
100002f50: b9007528    	str	w8, [x9, #0x74]
100002f54: 14000018    	b	0x100002fb4 <findJPG()+0x480>
100002f58: f94023e9    	ldr	x9, [sp, #0x40]
100002f5c: f9003d20    	str	x0, [x9, #0x78]
100002f60: aa0103e8    	mov	x8, x1
100002f64: b9007528    	str	w8, [x9, #0x74]
100002f68: 1400000c    	b	0x100002f98 <findJPG()+0x464>
100002f6c: f94023e9    	ldr	x9, [sp, #0x40]
100002f70: f9003d20    	str	x0, [x9, #0x78]
100002f74: aa0103e8    	mov	x8, x1
100002f78: b9007528    	str	w8, [x9, #0x74]
100002f7c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100002f80: 360000a8    	tbz	w8, #0x0, 0x100002f94 <findJPG()+0x460>
100002f84: 14000001    	b	0x100002f88 <findJPG()+0x454>
100002f88: 9101e3e0    	add	x0, sp, #0x78
100002f8c: 94001f95    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002f90: 14000001    	b	0x100002f94 <findJPG()+0x460>
100002f94: 14000001    	b	0x100002f98 <findJPG()+0x464>
100002f98: 39425fe8    	ldrb	w8, [sp, #0x97]
100002f9c: 360000a8    	tbz	w8, #0x0, 0x100002fb0 <findJPG()+0x47c>
100002fa0: 14000001    	b	0x100002fa4 <findJPG()+0x470>
100002fa4: 910263e0    	add	x0, sp, #0x98
100002fa8: 94001f8e    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002fac: 14000001    	b	0x100002fb0 <findJPG()+0x47c>
100002fb0: 14000001    	b	0x100002fb4 <findJPG()+0x480>
100002fb4: 3942dfe8    	ldrb	w8, [sp, #0xb7]
100002fb8: 360000a8    	tbz	w8, #0x0, 0x100002fcc <findJPG()+0x498>
100002fbc: 14000001    	b	0x100002fc0 <findJPG()+0x48c>
100002fc0: 9102e3e0    	add	x0, sp, #0xb8
100002fc4: 94001f87    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002fc8: 14000001    	b	0x100002fcc <findJPG()+0x498>
100002fcc: 1400000a    	b	0x100002ff4 <findJPG()+0x4c0>
100002fd0: d102c3a0    	sub	x0, x29, #0xb0
100002fd4: 94001f83    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002fd8: d10263a0    	sub	x0, x29, #0x98
100002fdc: 94001f81    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002fe0: 14000001    	b	0x100002fe4 <findJPG()+0x4b0>
100002fe4: d101c3a0    	sub	x0, x29, #0x70
100002fe8: 94000156    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100002fec: 14000001    	b	0x100002ff0 <findJPG()+0x4bc>
100002ff0: 17fffef6    	b	0x100002bc8 <findJPG()+0x94>
100002ff4: d102c3a0    	sub	x0, x29, #0xb0
100002ff8: 94001f7a    	bl	0x10000ade0 <_strlen+0x10000ade0>
100002ffc: 14000001    	b	0x100003000 <findJPG()+0x4cc>
100003000: d10263a0    	sub	x0, x29, #0x98
100003004: 94001f77    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003008: 14000001    	b	0x10000300c <findJPG()+0x4d8>
10000300c: d101a3a0    	sub	x0, x29, #0x68
100003010: 97fffde2    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003014: 1400002c    	b	0x1000030c4 <findJPG()+0x590>
100003018: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000301c: f940d000    	ldr	x0, [x0, #0x1a0]
100003020: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003024: 91183421    	add	x1, x1, #0x60d
100003028: 97fffccd    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000302c: f9000be0    	str	x0, [sp, #0x10]
100003030: 14000001    	b	0x100003034 <findJPG()+0x500>
100003034: f9400be0    	ldr	x0, [sp, #0x10]
100003038: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000303c: 91186021    	add	x1, x1, #0x618
100003040: 97fffcc7    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003044: 14000001    	b	0x100003048 <findJPG()+0x514>
100003048: 52800040    	mov	w0, #0x2                ; =2
10000304c: 94001fe6    	bl	0x10000afe4 <_strlen+0x10000afe4>
100003050: 14000001    	b	0x100003054 <findJPG()+0x520>
100003054: f94027e0    	ldr	x0, [sp, #0x48]
100003058: 94000142    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
10000305c: aa0003e1    	mov	x1, x0
100003060: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100003064: f940d000    	ldr	x0, [x0, #0x1a0]
100003068: 94001f73    	bl	0x10000ae34 <_strlen+0x10000ae34>
10000306c: f90007e0    	str	x0, [sp, #0x8]
100003070: 14000001    	b	0x100003074 <findJPG()+0x540>
100003074: f94007e0    	ldr	x0, [sp, #0x8]
100003078: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000307c: 91186821    	add	x1, x1, #0x61a
100003080: 97fffcb7    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003084: f90003e0    	str	x0, [sp]
100003088: 14000001    	b	0x10000308c <findJPG()+0x558>
10000308c: f94003e0    	ldr	x0, [sp]
100003090: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003094: 91186021    	add	x1, x1, #0x618
100003098: 97fffcb1    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000309c: 14000001    	b	0x1000030a0 <findJPG()+0x56c>
1000030a0: 52800028    	mov	w8, #0x1                ; =1
1000030a4: 12000108    	and	w8, w8, #0x1
1000030a8: 12000108    	and	w8, w8, #0x1
1000030ac: 381e73a8    	sturb	w8, [x29, #-0x19]
1000030b0: d100e3a0    	sub	x0, x29, #0x38
1000030b4: 97fffcf7    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000030b8: 385e73a8    	ldurb	w8, [x29, #-0x19]
1000030bc: 37000108    	tbnz	w8, #0x0, 0x1000030dc <findJPG()+0x5a8>
1000030c0: 14000004    	b	0x1000030d0 <findJPG()+0x59c>
1000030c4: d100e3a0    	sub	x0, x29, #0x38
1000030c8: 97fffcf2    	bl	0x100002490 <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>
1000030cc: 14000008    	b	0x1000030ec <findJPG()+0x5b8>
1000030d0: f94027e0    	ldr	x0, [sp, #0x48]
1000030d4: 97fffdb1    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000030d8: 14000001    	b	0x1000030dc <findJPG()+0x5a8>
1000030dc: a9597bfd    	ldp	x29, x30, [sp, #0x190]
1000030e0: a9586ffc    	ldp	x28, x27, [sp, #0x180]
1000030e4: 910683ff    	add	sp, sp, #0x1a0
1000030e8: d65f03c0    	ret
1000030ec: f94027e0    	ldr	x0, [sp, #0x48]
1000030f0: 97fffdaa    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000030f4: 14000001    	b	0x1000030f8 <findJPG()+0x5c4>
1000030f8: f94023e8    	ldr	x8, [sp, #0x40]
1000030fc: f9403d00    	ldr	x0, [x8, #0x78]
100003100: 94001ef0    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100003104 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)>:
100003104: d100c3ff    	sub	sp, sp, #0x30
100003108: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000310c: 910083fd    	add	x29, sp, #0x20
100003110: f81f83a0    	stur	x0, [x29, #-0x8]
100003114: f9000be1    	str	x1, [sp, #0x10]
100003118: 39003fe2    	strb	w2, [sp, #0xf]
10000311c: f85f83a0    	ldur	x0, [x29, #-0x8]
100003120: f90003e0    	str	x0, [sp]
100003124: f9400be1    	ldr	x1, [sp, #0x10]
100003128: 39403fe2    	ldrb	w2, [sp, #0xf]
10000312c: 94001cb9    	bl	0x10000a410 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)>
100003130: f94003e0    	ldr	x0, [sp]
100003134: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003138: 9100c3ff    	add	sp, sp, #0x30
10000313c: d65f03c0    	ret

0000000100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>:
100003140: d10083ff    	sub	sp, sp, #0x20
100003144: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003148: 910043fd    	add	x29, sp, #0x10
10000314c: f90003e0    	str	x0, [sp]
100003150: f94003e0    	ldr	x0, [sp]
100003154: 94001cf5    	bl	0x10000a528 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100003158: f90007e0    	str	x0, [sp, #0x8]
10000315c: f94007e0    	ldr	x0, [sp, #0x8]
100003160: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003164: 910083ff    	add	sp, sp, #0x20
100003168: d65f03c0    	ret

000000010000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>:
10000316c: d10083ff    	sub	sp, sp, #0x20
100003170: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003174: 910043fd    	add	x29, sp, #0x10
100003178: f90003e0    	str	x0, [sp]
10000317c: f94003e0    	ldr	x0, [sp]
100003180: 94001d0b    	bl	0x10000a5ac <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100003184: f90007e0    	str	x0, [sp, #0x8]
100003188: f94007e0    	ldr	x0, [sp, #0x8]
10000318c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003190: 910083ff    	add	sp, sp, #0x20
100003194: d65f03c0    	ret

0000000100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>:
100003198: d10083ff    	sub	sp, sp, #0x20
10000319c: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000031a0: 910043fd    	add	x29, sp, #0x10
1000031a4: f90007e0    	str	x0, [sp, #0x8]
1000031a8: f90003e1    	str	x1, [sp]
1000031ac: f94007e0    	ldr	x0, [sp, #0x8]
1000031b0: f94003e1    	ldr	x1, [sp]
1000031b4: 94001d0b    	bl	0x10000a5e0 <std::__1::operator==[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
1000031b8: 52000008    	eor	w8, w0, #0x1
1000031bc: 12000100    	and	w0, w8, #0x1
1000031c0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000031c4: 910083ff    	add	sp, sp, #0x20
1000031c8: d65f03c0    	ret

00000001000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>:
1000031cc: d10083ff    	sub	sp, sp, #0x20
1000031d0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000031d4: 910043fd    	add	x29, sp, #0x10
1000031d8: f90007e0    	str	x0, [sp, #0x8]
1000031dc: f94007e8    	ldr	x8, [sp, #0x8]
1000031e0: f9400100    	ldr	x0, [x8]
1000031e4: 940012b3    	bl	0x100007cb0 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__as_node[abi:ne180100]()>
1000031e8: 94001320    	bl	0x100007e68 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__get_value[abi:ne180100]()>
1000031ec: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000031f0: 910083ff    	add	sp, sp, #0x20
1000031f4: d65f03c0    	ret

00000001000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>:
1000031f8: d10143ff    	sub	sp, sp, #0x50
1000031fc: a9047bfd    	stp	x29, x30, [sp, #0x40]
100003200: 910103fd    	add	x29, sp, #0x40
100003204: f81f83a0    	stur	x0, [x29, #-0x8]
100003208: f81f03a1    	stur	x1, [x29, #-0x10]
10000320c: f81e83a2    	stur	x2, [x29, #-0x18]
100003210: f85f83a0    	ldur	x0, [x29, #-0x8]
100003214: f90003e0    	str	x0, [sp]
100003218: 9400189e    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
10000321c: aa0003e1    	mov	x1, x0
100003220: f94003e0    	ldr	x0, [sp]
100003224: f90013e1    	str	x1, [sp, #0x20]
100003228: 940011c0    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
10000322c: f90007e0    	str	x0, [sp, #0x8]
100003230: f85f03a0    	ldur	x0, [x29, #-0x10]
100003234: 94001897    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
100003238: f9000be0    	str	x0, [sp, #0x10]
10000323c: f85e83a8    	ldur	x8, [x29, #-0x18]
100003240: f9000fe8    	str	x8, [sp, #0x18]
100003244: f85f03a0    	ldur	x0, [x29, #-0x10]
100003248: 940011b8    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
10000324c: f94007e1    	ldr	x1, [sp, #0x8]
100003250: f9400be2    	ldr	x2, [sp, #0x10]
100003254: f9400fe3    	ldr	x3, [sp, #0x18]
100003258: aa0003e4    	mov	x4, x0
10000325c: f94013e0    	ldr	x0, [sp, #0x20]
100003260: 94001cec    	bl	0x10000a610 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)>
100003264: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100003268: 910143ff    	add	sp, sp, #0x50
10000326c: d65f03c0    	ret

0000000100003270 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](char const*, unsigned long) const>:
100003270: d10143ff    	sub	sp, sp, #0x50
100003274: a9047bfd    	stp	x29, x30, [sp, #0x40]
100003278: 910103fd    	add	x29, sp, #0x40
10000327c: f81f83a0    	stur	x0, [x29, #-0x8]
100003280: f81f03a1    	stur	x1, [x29, #-0x10]
100003284: f81e83a2    	stur	x2, [x29, #-0x18]
100003288: f85f83a0    	ldur	x0, [x29, #-0x8]
10000328c: f90003e0    	str	x0, [sp]
100003290: 94001880    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
100003294: aa0003e1    	mov	x1, x0
100003298: f94003e0    	ldr	x0, [sp]
10000329c: f90013e1    	str	x1, [sp, #0x20]
1000032a0: 940011a2    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
1000032a4: f90007e0    	str	x0, [sp, #0x8]
1000032a8: f85f03a8    	ldur	x8, [x29, #-0x10]
1000032ac: f9000be8    	str	x8, [sp, #0x10]
1000032b0: f85e83a8    	ldur	x8, [x29, #-0x18]
1000032b4: f9000fe8    	str	x8, [sp, #0x18]
1000032b8: f85f03a0    	ldur	x0, [x29, #-0x10]
1000032bc: 94001540    	bl	0x1000087bc <std::__1::char_traits<char>::length[abi:ne180100](char const*)>
1000032c0: f94007e1    	ldr	x1, [sp, #0x8]
1000032c4: f9400be2    	ldr	x2, [sp, #0x10]
1000032c8: f9400fe3    	ldr	x3, [sp, #0x18]
1000032cc: aa0003e4    	mov	x4, x0
1000032d0: f94013e0    	ldr	x0, [sp, #0x20]
1000032d4: 94001ccf    	bl	0x10000a610 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)>
1000032d8: a9447bfd    	ldp	x29, x30, [sp, #0x40]
1000032dc: 910143ff    	add	sp, sp, #0x50
1000032e0: d65f03c0    	ret

00000001000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
1000032e4: d10143ff    	sub	sp, sp, #0x50
1000032e8: a9047bfd    	stp	x29, x30, [sp, #0x40]
1000032ec: 910103fd    	add	x29, sp, #0x40
1000032f0: f81f03a0    	stur	x0, [x29, #-0x10]
1000032f4: f81e83a1    	stur	x1, [x29, #-0x18]
1000032f8: f85f03a0    	ldur	x0, [x29, #-0x10]
1000032fc: 9400118b    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100003300: f90013e0    	str	x0, [sp, #0x20]
100003304: f94013e8    	ldr	x8, [sp, #0x20]
100003308: f90007e8    	str	x8, [sp, #0x8]
10000330c: f85e83a0    	ldur	x0, [x29, #-0x18]
100003310: 94001186    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100003314: f94007e8    	ldr	x8, [sp, #0x8]
100003318: eb000108    	subs	x8, x8, x0
10000331c: 1a9f17e8    	cset	w8, eq
100003320: 370000e8    	tbnz	w8, #0x0, 0x10000333c <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x58>
100003324: 14000001    	b	0x100003328 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x44>
100003328: 52800008    	mov	w8, #0x0                ; =0
10000332c: 12000108    	and	w8, w8, #0x1
100003330: 12000108    	and	w8, w8, #0x1
100003334: 381ff3a8    	sturb	w8, [x29, #-0x1]
100003338: 14000038    	b	0x100003418 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x134>
10000333c: f85f03a0    	ldur	x0, [x29, #-0x10]
100003340: 94001854    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
100003344: f9000fe0    	str	x0, [sp, #0x18]
100003348: f85e83a0    	ldur	x0, [x29, #-0x18]
10000334c: 94001851    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
100003350: f9000be0    	str	x0, [sp, #0x10]
100003354: f85f03a0    	ldur	x0, [x29, #-0x10]
100003358: 94001166    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
10000335c: 36000180    	tbz	w0, #0x0, 0x10000338c <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xa8>
100003360: 14000001    	b	0x100003364 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x80>
100003364: f9400fe0    	ldr	x0, [sp, #0x18]
100003368: f9400be1    	ldr	x1, [sp, #0x10]
10000336c: f94013e2    	ldr	x2, [sp, #0x20]
100003370: 94001d52    	bl	0x10000a8b8 <std::__1::char_traits<char>::compare[abi:ne180100](char const*, char const*, unsigned long)>
100003374: 71000008    	subs	w8, w0, #0x0
100003378: 1a9f17e8    	cset	w8, eq
10000337c: 12000108    	and	w8, w8, #0x1
100003380: 12000108    	and	w8, w8, #0x1
100003384: 381ff3a8    	sturb	w8, [x29, #-0x1]
100003388: 14000024    	b	0x100003418 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x134>
10000338c: 14000001    	b	0x100003390 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xac>
100003390: f94013e8    	ldr	x8, [sp, #0x20]
100003394: f1000108    	subs	x8, x8, #0x0
100003398: 1a9f17e8    	cset	w8, eq
10000339c: 37000348    	tbnz	w8, #0x0, 0x100003404 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x120>
1000033a0: 14000001    	b	0x1000033a4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xc0>
1000033a4: f9400fe8    	ldr	x8, [sp, #0x18]
1000033a8: 39c00108    	ldrsb	w8, [x8]
1000033ac: f9400be9    	ldr	x9, [sp, #0x10]
1000033b0: 39c00129    	ldrsb	w9, [x9]
1000033b4: 6b090108    	subs	w8, w8, w9
1000033b8: 1a9f17e8    	cset	w8, eq
1000033bc: 370000e8    	tbnz	w8, #0x0, 0x1000033d8 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xf4>
1000033c0: 14000001    	b	0x1000033c4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xe0>
1000033c4: 52800008    	mov	w8, #0x0                ; =0
1000033c8: 12000108    	and	w8, w8, #0x1
1000033cc: 12000108    	and	w8, w8, #0x1
1000033d0: 381ff3a8    	sturb	w8, [x29, #-0x1]
1000033d4: 14000011    	b	0x100003418 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x134>
1000033d8: 14000001    	b	0x1000033dc <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xf8>
1000033dc: f94013e8    	ldr	x8, [sp, #0x20]
1000033e0: f1000508    	subs	x8, x8, #0x1
1000033e4: f90013e8    	str	x8, [sp, #0x20]
1000033e8: f9400fe8    	ldr	x8, [sp, #0x18]
1000033ec: 91000508    	add	x8, x8, #0x1
1000033f0: f9000fe8    	str	x8, [sp, #0x18]
1000033f4: f9400be8    	ldr	x8, [sp, #0x10]
1000033f8: 91000508    	add	x8, x8, #0x1
1000033fc: f9000be8    	str	x8, [sp, #0x10]
100003400: 17ffffe4    	b	0x100003390 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xac>
100003404: 52800028    	mov	w8, #0x1                ; =1
100003408: 12000108    	and	w8, w8, #0x1
10000340c: 12000108    	and	w8, w8, #0x1
100003410: 381ff3a8    	sturb	w8, [x29, #-0x1]
100003414: 14000001    	b	0x100003418 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x134>
100003418: 385ff3a8    	ldurb	w8, [x29, #-0x1]
10000341c: 12000100    	and	w0, w8, #0x1
100003420: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100003424: 910143ff    	add	sp, sp, #0x50
100003428: d65f03c0    	ret

000000010000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>:
10000342c: d10183ff    	sub	sp, sp, #0x60
100003430: a9057bfd    	stp	x29, x30, [sp, #0x50]
100003434: 910143fd    	add	x29, sp, #0x50
100003438: f90003e8    	str	x8, [sp]
10000343c: f81f83a8    	stur	x8, [x29, #-0x8]
100003440: f81f03a0    	stur	x0, [x29, #-0x10]
100003444: f81e83a1    	stur	x1, [x29, #-0x18]
100003448: f81e03a2    	stur	x2, [x29, #-0x20]
10000344c: f85f03a8    	ldur	x8, [x29, #-0x10]
100003450: f90007e8    	str	x8, [sp, #0x8]
100003454: f85e83a8    	ldur	x8, [x29, #-0x18]
100003458: f9000be8    	str	x8, [sp, #0x10]
10000345c: f85e03a8    	ldur	x8, [x29, #-0x20]
100003460: f9000fe8    	str	x8, [sp, #0x18]
100003464: d10087a0    	sub	x0, x29, #0x21
100003468: f90013e0    	str	x0, [sp, #0x20]
10000346c: 94001d30    	bl	0x10000a92c <std::__1::allocator<char>::allocator[abi:ne180100]()>
100003470: f94003e0    	ldr	x0, [sp]
100003474: f94007e1    	ldr	x1, [sp, #0x8]
100003478: f9400be2    	ldr	x2, [sp, #0x10]
10000347c: f9400fe3    	ldr	x3, [sp, #0x18]
100003480: f94013e4    	ldr	x4, [sp, #0x20]
100003484: 94001e54    	bl	0x10000add4 <_strlen+0x10000add4>
100003488: a9457bfd    	ldp	x29, x30, [sp, #0x50]
10000348c: 910183ff    	add	sp, sp, #0x60
100003490: d65f03c0    	ret

0000000100003494 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)>:
100003494: d10103ff    	sub	sp, sp, #0x40
100003498: a9037bfd    	stp	x29, x30, [sp, #0x30]
10000349c: 9100c3fd    	add	x29, sp, #0x30
1000034a0: f81f03a0    	stur	x0, [x29, #-0x10]
1000034a4: f9000fe1    	str	x1, [sp, #0x18]
1000034a8: f9400fe0    	ldr	x0, [sp, #0x18]
1000034ac: 940014c4    	bl	0x1000087bc <std::__1::char_traits<char>::length[abi:ne180100](char const*)>
1000034b0: f9000be0    	str	x0, [sp, #0x10]
1000034b4: f9400be8    	ldr	x8, [sp, #0x10]
1000034b8: f90007e8    	str	x8, [sp, #0x8]
1000034bc: f85f03a0    	ldur	x0, [x29, #-0x10]
1000034c0: 9400111a    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
1000034c4: f94007e8    	ldr	x8, [sp, #0x8]
1000034c8: eb000108    	subs	x8, x8, x0
1000034cc: 1a9f17e8    	cset	w8, eq
1000034d0: 370000e8    	tbnz	w8, #0x0, 0x1000034ec <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)+0x58>
1000034d4: 14000001    	b	0x1000034d8 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)+0x44>
1000034d8: 52800008    	mov	w8, #0x0                ; =0
1000034dc: 12000108    	and	w8, w8, #0x1
1000034e0: 12000108    	and	w8, w8, #0x1
1000034e4: 381ff3a8    	sturb	w8, [x29, #-0x1]
1000034e8: 14000010    	b	0x100003528 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)+0x94>
1000034ec: f85f03a0    	ldur	x0, [x29, #-0x10]
1000034f0: f9400fe3    	ldr	x3, [sp, #0x18]
1000034f4: f9400be4    	ldr	x4, [sp, #0x10]
1000034f8: d2800001    	mov	x1, #0x0                ; =0
1000034fc: 92800002    	mov	x2, #-0x1               ; =-1
100003500: 94001df9    	bl	0x10000ace4 <_strlen+0x10000ace4>
100003504: b90007e0    	str	w0, [sp, #0x4]
100003508: 14000001    	b	0x10000350c <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)+0x78>
10000350c: b94007e8    	ldr	w8, [sp, #0x4]
100003510: 71000108    	subs	w8, w8, #0x0
100003514: 1a9f17e8    	cset	w8, eq
100003518: 12000108    	and	w8, w8, #0x1
10000351c: 12000108    	and	w8, w8, #0x1
100003520: 381ff3a8    	sturb	w8, [x29, #-0x1]
100003524: 14000001    	b	0x100003528 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)+0x94>
100003528: 385ff3a8    	ldurb	w8, [x29, #-0x1]
10000352c: 12000100    	and	w0, w8, #0x1
100003530: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100003534: 910103ff    	add	sp, sp, #0x40
100003538: d65f03c0    	ret
10000353c: 97fffc93    	bl	0x100002788 <___clang_call_terminate>

0000000100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>:
100003540: d10043ff    	sub	sp, sp, #0x10
100003544: f90007e0    	str	x0, [sp, #0x8]
100003548: f94007e0    	ldr	x0, [sp, #0x8]
10000354c: f9400008    	ldr	x8, [x0]
100003550: f9400508    	ldr	x8, [x8, #0x8]
100003554: f9000008    	str	x8, [x0]
100003558: 910043ff    	add	sp, sp, #0x10
10000355c: d65f03c0    	ret

0000000100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>:
100003560: d10083ff    	sub	sp, sp, #0x20
100003564: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003568: 910043fd    	add	x29, sp, #0x10
10000356c: f90007e0    	str	x0, [sp, #0x8]
100003570: f94007e0    	ldr	x0, [sp, #0x8]
100003574: 940011f0    	bl	0x100007d34 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]() const>
100003578: f9400000    	ldr	x0, [x0]
10000357c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003580: 910083ff    	add	sp, sp, #0x20
100003584: d65f03c0    	ret

0000000100003588 <findPNG()>:
100003588: d10503ff    	sub	sp, sp, #0x140
10000358c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100003590: a9137bfd    	stp	x29, x30, [sp, #0x130]
100003594: 9104c3fd    	add	x29, sp, #0x130
100003598: d10163a9    	sub	x9, x29, #0x58
10000359c: f90023e9    	str	x9, [sp, #0x40]
1000035a0: aa0803e0    	mov	x0, x8
1000035a4: f90027e0    	str	x0, [sp, #0x48]
1000035a8: aa0003e8    	mov	x8, x0
1000035ac: f9002128    	str	x8, [x9, #0x40]
1000035b0: 52800008    	mov	w8, #0x0                ; =0
1000035b4: 12000108    	and	w8, w8, #0x1
1000035b8: 12000108    	and	w8, w8, #0x1
1000035bc: 381e73a8    	sturb	w8, [x29, #-0x19]
1000035c0: 97fffb5c    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
1000035c4: d10103a8    	sub	x8, x29, #0x40
1000035c8: 97fffa7d    	bl	0x100001fbc <readDownloadFiles()>
1000035cc: 14000001    	b	0x1000035d0 <findPNG()+0x48>
1000035d0: f94023e8    	ldr	x8, [sp, #0x40]
1000035d4: d10103a9    	sub	x9, x29, #0x40
1000035d8: f9001909    	str	x9, [x8, #0x30]
1000035dc: f9401900    	ldr	x0, [x8, #0x30]
1000035e0: 97fffed8    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
1000035e4: f94023e8    	ldr	x8, [sp, #0x40]
1000035e8: f9000100    	str	x0, [x8]
1000035ec: f9401900    	ldr	x0, [x8, #0x30]
1000035f0: 97fffedf    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
1000035f4: f81a03a0    	stur	x0, [x29, #-0x60]
1000035f8: 14000001    	b	0x1000035fc <findPNG()+0x74>
1000035fc: d10163a0    	sub	x0, x29, #0x58
100003600: d10183a1    	sub	x1, x29, #0x60
100003604: 97fffee5    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100003608: b9003fe0    	str	w0, [sp, #0x3c]
10000360c: 14000001    	b	0x100003610 <findPNG()+0x88>
100003610: b9403fe8    	ldr	w8, [sp, #0x3c]
100003614: 370001e8    	tbnz	w8, #0x0, 0x100003650 <findPNG()+0xc8>
100003618: 14000001    	b	0x10000361c <findPNG()+0x94>
10000361c: d10103a0    	sub	x0, x29, #0x40
100003620: 97fffc5e    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003624: 1400009b    	b	0x100003890 <findPNG()+0x308>
100003628: f94023e9    	ldr	x9, [sp, #0x40]
10000362c: f9000920    	str	x0, [x9, #0x10]
100003630: aa0103e8    	mov	x8, x1
100003634: b9000d28    	str	w8, [x9, #0xc]
100003638: 140000c6    	b	0x100003950 <findPNG()+0x3c8>
10000363c: f94023e9    	ldr	x9, [sp, #0x40]
100003640: f9000920    	str	x0, [x9, #0x10]
100003644: aa0103e8    	mov	x8, x1
100003648: b9000d28    	str	w8, [x9, #0xc]
10000364c: 1400008e    	b	0x100003884 <findPNG()+0x2fc>
100003650: d10163a0    	sub	x0, x29, #0x58
100003654: 97fffede    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100003658: f9001be0    	str	x0, [sp, #0x30]
10000365c: 14000001    	b	0x100003660 <findPNG()+0xd8>
100003660: f9401be8    	ldr	x8, [sp, #0x30]
100003664: f81983a8    	stur	x8, [x29, #-0x68]
100003668: d10203a0    	sub	x0, x29, #0x80
10000366c: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003670: 91193c21    	add	x1, x1, #0x64f
100003674: 97fffb5c    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100003678: 14000001    	b	0x10000367c <findPNG()+0xf4>
10000367c: 910263e8    	add	x8, sp, #0x98
100003680: d10203a0    	sub	x0, x29, #0x80
100003684: 97fff9bd    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003688: 14000001    	b	0x10000368c <findPNG()+0x104>
10000368c: f85983a0    	ldur	x0, [x29, #-0x68]
100003690: 910263e1    	add	x1, sp, #0x98
100003694: d2800002    	mov	x2, #0x0                ; =0
100003698: f90017e2    	str	x2, [sp, #0x28]
10000369c: 97fffed7    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000036a0: f94017e2    	ldr	x2, [sp, #0x28]
1000036a4: aa0003e8    	mov	x8, x0
1000036a8: b90097e8    	str	w8, [sp, #0x94]
1000036ac: f85983a0    	ldur	x0, [x29, #-0x68]
1000036b0: d10203a1    	sub	x1, x29, #0x80
1000036b4: 97fffed1    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000036b8: aa0003e8    	mov	x8, x0
1000036bc: b90093e8    	str	w8, [sp, #0x90]
1000036c0: b98097e8    	ldrsw	x8, [sp, #0x94]
1000036c4: b1000508    	adds	x8, x8, #0x1
1000036c8: 1a9f17e8    	cset	w8, eq
1000036cc: 5280002a    	mov	w10, #0x1               ; =1
1000036d0: 52800009    	mov	w9, #0x0                ; =0
1000036d4: 1200012b    	and	w11, w9, #0x1
1000036d8: 1200016b    	and	w11, w11, #0x1
1000036dc: 3901dfeb    	strb	w11, [sp, #0x77]
1000036e0: 12000129    	and	w9, w9, #0x1
1000036e4: 0a0a0129    	and	w9, w9, w10
1000036e8: 39015fe9    	strb	w9, [sp, #0x57]
1000036ec: 37000268    	tbnz	w8, #0x0, 0x100003738 <findPNG()+0x1b0>
1000036f0: 14000001    	b	0x1000036f4 <findPNG()+0x16c>
1000036f4: f85983a0    	ldur	x0, [x29, #-0x68]
1000036f8: b98097e1    	ldrsw	x1, [sp, #0x94]
1000036fc: 9101e3e8    	add	x8, sp, #0x78
100003700: 92800002    	mov	x2, #-0x1               ; =-1
100003704: 97ffff4a    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003708: 14000001    	b	0x10000370c <findPNG()+0x184>
10000370c: 52800028    	mov	w8, #0x1                ; =1
100003710: 12000108    	and	w8, w8, #0x1
100003714: 12000108    	and	w8, w8, #0x1
100003718: 3901dfe8    	strb	w8, [sp, #0x77]
10000371c: 9101e3e0    	add	x0, sp, #0x78
100003720: 910263e1    	add	x1, sp, #0x98
100003724: 97fffef0    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003728: 52800028    	mov	w8, #0x1                ; =1
10000372c: b90027e8    	str	w8, [sp, #0x24]
100003730: 37000360    	tbnz	w0, #0x0, 0x10000379c <findPNG()+0x214>
100003734: 14000001    	b	0x100003738 <findPNG()+0x1b0>
100003738: b98093e8    	ldrsw	x8, [sp, #0x90]
10000373c: b1000508    	adds	x8, x8, #0x1
100003740: 1a9f17e8    	cset	w8, eq
100003744: 52800000    	mov	w0, #0x0                ; =0
100003748: b90023e0    	str	w0, [sp, #0x20]
10000374c: 37000228    	tbnz	w8, #0x0, 0x100003790 <findPNG()+0x208>
100003750: 14000001    	b	0x100003754 <findPNG()+0x1cc>
100003754: f85983a0    	ldur	x0, [x29, #-0x68]
100003758: b98093e1    	ldrsw	x1, [sp, #0x90]
10000375c: 910163e8    	add	x8, sp, #0x58
100003760: 92800002    	mov	x2, #-0x1               ; =-1
100003764: 97ffff32    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003768: 14000001    	b	0x10000376c <findPNG()+0x1e4>
10000376c: 52800028    	mov	w8, #0x1                ; =1
100003770: 12000108    	and	w8, w8, #0x1
100003774: 12000108    	and	w8, w8, #0x1
100003778: 39015fe8    	strb	w8, [sp, #0x57]
10000377c: 910163e0    	add	x0, sp, #0x58
100003780: d10203a1    	sub	x1, x29, #0x80
100003784: 97fffed8    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003788: b90023e0    	str	w0, [sp, #0x20]
10000378c: 14000001    	b	0x100003790 <findPNG()+0x208>
100003790: b94023e8    	ldr	w8, [sp, #0x20]
100003794: b90027e8    	str	w8, [sp, #0x24]
100003798: 14000001    	b	0x10000379c <findPNG()+0x214>
10000379c: b94027e8    	ldr	w8, [sp, #0x24]
1000037a0: b9001fe8    	str	w8, [sp, #0x1c]
1000037a4: 39415fe8    	ldrb	w8, [sp, #0x57]
1000037a8: 360000a8    	tbz	w8, #0x0, 0x1000037bc <findPNG()+0x234>
1000037ac: 14000001    	b	0x1000037b0 <findPNG()+0x228>
1000037b0: 910163e0    	add	x0, sp, #0x58
1000037b4: 94001d8b    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000037b8: 14000001    	b	0x1000037bc <findPNG()+0x234>
1000037bc: 3941dfe8    	ldrb	w8, [sp, #0x77]
1000037c0: 360000a8    	tbz	w8, #0x0, 0x1000037d4 <findPNG()+0x24c>
1000037c4: 14000001    	b	0x1000037c8 <findPNG()+0x240>
1000037c8: 9101e3e0    	add	x0, sp, #0x78
1000037cc: 94001d85    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000037d0: 14000001    	b	0x1000037d4 <findPNG()+0x24c>
1000037d4: b9401fe8    	ldr	w8, [sp, #0x1c]
1000037d8: 36000388    	tbz	w8, #0x0, 0x100003848 <findPNG()+0x2c0>
1000037dc: 14000001    	b	0x1000037e0 <findPNG()+0x258>
1000037e0: f94027e0    	ldr	x0, [sp, #0x48]
1000037e4: f85983a1    	ldur	x1, [x29, #-0x68]
1000037e8: 97fffbc2    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000037ec: 14000001    	b	0x1000037f0 <findPNG()+0x268>
1000037f0: 14000016    	b	0x100003848 <findPNG()+0x2c0>
1000037f4: f94023e9    	ldr	x9, [sp, #0x40]
1000037f8: f9000920    	str	x0, [x9, #0x10]
1000037fc: aa0103e8    	mov	x8, x1
100003800: b9000d28    	str	w8, [x9, #0xc]
100003804: 1400001d    	b	0x100003878 <findPNG()+0x2f0>
100003808: f94023e9    	ldr	x9, [sp, #0x40]
10000380c: f9000920    	str	x0, [x9, #0x10]
100003810: aa0103e8    	mov	x8, x1
100003814: b9000d28    	str	w8, [x9, #0xc]
100003818: 14000015    	b	0x10000386c <findPNG()+0x2e4>
10000381c: f94023e9    	ldr	x9, [sp, #0x40]
100003820: f9000920    	str	x0, [x9, #0x10]
100003824: aa0103e8    	mov	x8, x1
100003828: b9000d28    	str	w8, [x9, #0xc]
10000382c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100003830: 360000a8    	tbz	w8, #0x0, 0x100003844 <findPNG()+0x2bc>
100003834: 14000001    	b	0x100003838 <findPNG()+0x2b0>
100003838: 9101e3e0    	add	x0, sp, #0x78
10000383c: 94001d69    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003840: 14000001    	b	0x100003844 <findPNG()+0x2bc>
100003844: 1400000a    	b	0x10000386c <findPNG()+0x2e4>
100003848: 910263e0    	add	x0, sp, #0x98
10000384c: 94001d65    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003850: d10203a0    	sub	x0, x29, #0x80
100003854: 94001d63    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003858: 14000001    	b	0x10000385c <findPNG()+0x2d4>
10000385c: d10163a0    	sub	x0, x29, #0x58
100003860: 97ffff38    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100003864: 14000001    	b	0x100003868 <findPNG()+0x2e0>
100003868: 17ffff65    	b	0x1000035fc <findPNG()+0x74>
10000386c: 910263e0    	add	x0, sp, #0x98
100003870: 94001d5c    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003874: 14000001    	b	0x100003878 <findPNG()+0x2f0>
100003878: d10203a0    	sub	x0, x29, #0x80
10000387c: 94001d59    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003880: 14000001    	b	0x100003884 <findPNG()+0x2fc>
100003884: d10103a0    	sub	x0, x29, #0x40
100003888: 97fffbc4    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000388c: 14000031    	b	0x100003950 <findPNG()+0x3c8>
100003890: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100003894: f940d000    	ldr	x0, [x0, #0x1a0]
100003898: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000389c: 91183421    	add	x1, x1, #0x60d
1000038a0: 97fffaaf    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000038a4: f9000be0    	str	x0, [sp, #0x10]
1000038a8: 14000001    	b	0x1000038ac <findPNG()+0x324>
1000038ac: f9400be0    	ldr	x0, [sp, #0x10]
1000038b0: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000038b4: 91186021    	add	x1, x1, #0x618
1000038b8: 97fffaa9    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000038bc: 14000001    	b	0x1000038c0 <findPNG()+0x338>
1000038c0: 52800040    	mov	w0, #0x2                ; =2
1000038c4: 94001dc8    	bl	0x10000afe4 <_strlen+0x10000afe4>
1000038c8: 14000001    	b	0x1000038cc <findPNG()+0x344>
1000038cc: f94027e0    	ldr	x0, [sp, #0x48]
1000038d0: 97ffff24    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000038d4: aa0003e1    	mov	x1, x0
1000038d8: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000038dc: f940d000    	ldr	x0, [x0, #0x1a0]
1000038e0: 94001d55    	bl	0x10000ae34 <_strlen+0x10000ae34>
1000038e4: f90007e0    	str	x0, [sp, #0x8]
1000038e8: 14000001    	b	0x1000038ec <findPNG()+0x364>
1000038ec: f94007e0    	ldr	x0, [sp, #0x8]
1000038f0: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000038f4: 91195021    	add	x1, x1, #0x654
1000038f8: 97fffa99    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000038fc: f90003e0    	str	x0, [sp]
100003900: 14000001    	b	0x100003904 <findPNG()+0x37c>
100003904: f94003e0    	ldr	x0, [sp]
100003908: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000390c: 91186021    	add	x1, x1, #0x618
100003910: 97fffa93    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003914: 14000001    	b	0x100003918 <findPNG()+0x390>
100003918: 52800028    	mov	w8, #0x1                ; =1
10000391c: 12000108    	and	w8, w8, #0x1
100003920: 12000108    	and	w8, w8, #0x1
100003924: 381e73a8    	sturb	w8, [x29, #-0x19]
100003928: 385e73a8    	ldurb	w8, [x29, #-0x19]
10000392c: 370000a8    	tbnz	w8, #0x0, 0x100003940 <findPNG()+0x3b8>
100003930: 14000001    	b	0x100003934 <findPNG()+0x3ac>
100003934: f94027e0    	ldr	x0, [sp, #0x48]
100003938: 97fffb98    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000393c: 14000001    	b	0x100003940 <findPNG()+0x3b8>
100003940: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100003944: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100003948: 910503ff    	add	sp, sp, #0x140
10000394c: d65f03c0    	ret
100003950: f94027e0    	ldr	x0, [sp, #0x48]
100003954: 97fffb91    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003958: 14000001    	b	0x10000395c <findPNG()+0x3d4>
10000395c: f94023e8    	ldr	x8, [sp, #0x40]
100003960: f9400900    	ldr	x0, [x8, #0x10]
100003964: 94001cd7    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100003968 <findWebp()>:
100003968: d10503ff    	sub	sp, sp, #0x140
10000396c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100003970: a9137bfd    	stp	x29, x30, [sp, #0x130]
100003974: 9104c3fd    	add	x29, sp, #0x130
100003978: d10163a9    	sub	x9, x29, #0x58
10000397c: f90023e9    	str	x9, [sp, #0x40]
100003980: aa0803e0    	mov	x0, x8
100003984: f90027e0    	str	x0, [sp, #0x48]
100003988: aa0003e8    	mov	x8, x0
10000398c: f9002128    	str	x8, [x9, #0x40]
100003990: 52800008    	mov	w8, #0x0                ; =0
100003994: 12000108    	and	w8, w8, #0x1
100003998: 12000108    	and	w8, w8, #0x1
10000399c: 381e73a8    	sturb	w8, [x29, #-0x19]
1000039a0: 97fffa64    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
1000039a4: d10103a8    	sub	x8, x29, #0x40
1000039a8: 97fff985    	bl	0x100001fbc <readDownloadFiles()>
1000039ac: 14000001    	b	0x1000039b0 <findWebp()+0x48>
1000039b0: f94023e8    	ldr	x8, [sp, #0x40]
1000039b4: d10103a9    	sub	x9, x29, #0x40
1000039b8: f9001909    	str	x9, [x8, #0x30]
1000039bc: f9401900    	ldr	x0, [x8, #0x30]
1000039c0: 97fffde0    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
1000039c4: f94023e8    	ldr	x8, [sp, #0x40]
1000039c8: f9000100    	str	x0, [x8]
1000039cc: f9401900    	ldr	x0, [x8, #0x30]
1000039d0: 97fffde7    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
1000039d4: f81a03a0    	stur	x0, [x29, #-0x60]
1000039d8: 14000001    	b	0x1000039dc <findWebp()+0x74>
1000039dc: d10163a0    	sub	x0, x29, #0x58
1000039e0: d10183a1    	sub	x1, x29, #0x60
1000039e4: 97fffded    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
1000039e8: b9003fe0    	str	w0, [sp, #0x3c]
1000039ec: 14000001    	b	0x1000039f0 <findWebp()+0x88>
1000039f0: b9403fe8    	ldr	w8, [sp, #0x3c]
1000039f4: 370001e8    	tbnz	w8, #0x0, 0x100003a30 <findWebp()+0xc8>
1000039f8: 14000001    	b	0x1000039fc <findWebp()+0x94>
1000039fc: d10103a0    	sub	x0, x29, #0x40
100003a00: 97fffb66    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003a04: 1400009b    	b	0x100003c70 <findWebp()+0x308>
100003a08: f94023e9    	ldr	x9, [sp, #0x40]
100003a0c: f9000920    	str	x0, [x9, #0x10]
100003a10: aa0103e8    	mov	x8, x1
100003a14: b9000d28    	str	w8, [x9, #0xc]
100003a18: 140000c6    	b	0x100003d30 <findWebp()+0x3c8>
100003a1c: f94023e9    	ldr	x9, [sp, #0x40]
100003a20: f9000920    	str	x0, [x9, #0x10]
100003a24: aa0103e8    	mov	x8, x1
100003a28: b9000d28    	str	w8, [x9, #0xc]
100003a2c: 1400008e    	b	0x100003c64 <findWebp()+0x2fc>
100003a30: d10163a0    	sub	x0, x29, #0x58
100003a34: 97fffde6    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100003a38: f9001be0    	str	x0, [sp, #0x30]
100003a3c: 14000001    	b	0x100003a40 <findWebp()+0xd8>
100003a40: f9401be8    	ldr	x8, [sp, #0x30]
100003a44: f81983a8    	stur	x8, [x29, #-0x68]
100003a48: d10203a0    	sub	x0, x29, #0x80
100003a4c: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003a50: 911a0021    	add	x1, x1, #0x680
100003a54: 97fffa64    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100003a58: 14000001    	b	0x100003a5c <findWebp()+0xf4>
100003a5c: 910263e8    	add	x8, sp, #0x98
100003a60: d10203a0    	sub	x0, x29, #0x80
100003a64: 97fff8c5    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003a68: 14000001    	b	0x100003a6c <findWebp()+0x104>
100003a6c: f85983a0    	ldur	x0, [x29, #-0x68]
100003a70: 910263e1    	add	x1, sp, #0x98
100003a74: d2800002    	mov	x2, #0x0                ; =0
100003a78: f90017e2    	str	x2, [sp, #0x28]
100003a7c: 97fffddf    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100003a80: f94017e2    	ldr	x2, [sp, #0x28]
100003a84: aa0003e8    	mov	x8, x0
100003a88: b90097e8    	str	w8, [sp, #0x94]
100003a8c: f85983a0    	ldur	x0, [x29, #-0x68]
100003a90: d10203a1    	sub	x1, x29, #0x80
100003a94: 97fffdd9    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100003a98: aa0003e8    	mov	x8, x0
100003a9c: b90093e8    	str	w8, [sp, #0x90]
100003aa0: b98097e8    	ldrsw	x8, [sp, #0x94]
100003aa4: b1000508    	adds	x8, x8, #0x1
100003aa8: 1a9f17e8    	cset	w8, eq
100003aac: 5280002a    	mov	w10, #0x1               ; =1
100003ab0: 52800009    	mov	w9, #0x0                ; =0
100003ab4: 1200012b    	and	w11, w9, #0x1
100003ab8: 1200016b    	and	w11, w11, #0x1
100003abc: 3901dfeb    	strb	w11, [sp, #0x77]
100003ac0: 12000129    	and	w9, w9, #0x1
100003ac4: 0a0a0129    	and	w9, w9, w10
100003ac8: 39015fe9    	strb	w9, [sp, #0x57]
100003acc: 37000268    	tbnz	w8, #0x0, 0x100003b18 <findWebp()+0x1b0>
100003ad0: 14000001    	b	0x100003ad4 <findWebp()+0x16c>
100003ad4: f85983a0    	ldur	x0, [x29, #-0x68]
100003ad8: b98097e1    	ldrsw	x1, [sp, #0x94]
100003adc: 9101e3e8    	add	x8, sp, #0x78
100003ae0: 92800002    	mov	x2, #-0x1               ; =-1
100003ae4: 97fffe52    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003ae8: 14000001    	b	0x100003aec <findWebp()+0x184>
100003aec: 52800028    	mov	w8, #0x1                ; =1
100003af0: 12000108    	and	w8, w8, #0x1
100003af4: 12000108    	and	w8, w8, #0x1
100003af8: 3901dfe8    	strb	w8, [sp, #0x77]
100003afc: 9101e3e0    	add	x0, sp, #0x78
100003b00: 910263e1    	add	x1, sp, #0x98
100003b04: 97fffdf8    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003b08: 52800028    	mov	w8, #0x1                ; =1
100003b0c: b90027e8    	str	w8, [sp, #0x24]
100003b10: 37000360    	tbnz	w0, #0x0, 0x100003b7c <findWebp()+0x214>
100003b14: 14000001    	b	0x100003b18 <findWebp()+0x1b0>
100003b18: b98093e8    	ldrsw	x8, [sp, #0x90]
100003b1c: b1000508    	adds	x8, x8, #0x1
100003b20: 1a9f17e8    	cset	w8, eq
100003b24: 52800000    	mov	w0, #0x0                ; =0
100003b28: b90023e0    	str	w0, [sp, #0x20]
100003b2c: 37000228    	tbnz	w8, #0x0, 0x100003b70 <findWebp()+0x208>
100003b30: 14000001    	b	0x100003b34 <findWebp()+0x1cc>
100003b34: f85983a0    	ldur	x0, [x29, #-0x68]
100003b38: b98093e1    	ldrsw	x1, [sp, #0x90]
100003b3c: 910163e8    	add	x8, sp, #0x58
100003b40: 92800002    	mov	x2, #-0x1               ; =-1
100003b44: 97fffe3a    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003b48: 14000001    	b	0x100003b4c <findWebp()+0x1e4>
100003b4c: 52800028    	mov	w8, #0x1                ; =1
100003b50: 12000108    	and	w8, w8, #0x1
100003b54: 12000108    	and	w8, w8, #0x1
100003b58: 39015fe8    	strb	w8, [sp, #0x57]
100003b5c: 910163e0    	add	x0, sp, #0x58
100003b60: d10203a1    	sub	x1, x29, #0x80
100003b64: 97fffde0    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003b68: b90023e0    	str	w0, [sp, #0x20]
100003b6c: 14000001    	b	0x100003b70 <findWebp()+0x208>
100003b70: b94023e8    	ldr	w8, [sp, #0x20]
100003b74: b90027e8    	str	w8, [sp, #0x24]
100003b78: 14000001    	b	0x100003b7c <findWebp()+0x214>
100003b7c: b94027e8    	ldr	w8, [sp, #0x24]
100003b80: b9001fe8    	str	w8, [sp, #0x1c]
100003b84: 39415fe8    	ldrb	w8, [sp, #0x57]
100003b88: 360000a8    	tbz	w8, #0x0, 0x100003b9c <findWebp()+0x234>
100003b8c: 14000001    	b	0x100003b90 <findWebp()+0x228>
100003b90: 910163e0    	add	x0, sp, #0x58
100003b94: 94001c93    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003b98: 14000001    	b	0x100003b9c <findWebp()+0x234>
100003b9c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100003ba0: 360000a8    	tbz	w8, #0x0, 0x100003bb4 <findWebp()+0x24c>
100003ba4: 14000001    	b	0x100003ba8 <findWebp()+0x240>
100003ba8: 9101e3e0    	add	x0, sp, #0x78
100003bac: 94001c8d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003bb0: 14000001    	b	0x100003bb4 <findWebp()+0x24c>
100003bb4: b9401fe8    	ldr	w8, [sp, #0x1c]
100003bb8: 36000388    	tbz	w8, #0x0, 0x100003c28 <findWebp()+0x2c0>
100003bbc: 14000001    	b	0x100003bc0 <findWebp()+0x258>
100003bc0: f94027e0    	ldr	x0, [sp, #0x48]
100003bc4: f85983a1    	ldur	x1, [x29, #-0x68]
100003bc8: 97fffaca    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003bcc: 14000001    	b	0x100003bd0 <findWebp()+0x268>
100003bd0: 14000016    	b	0x100003c28 <findWebp()+0x2c0>
100003bd4: f94023e9    	ldr	x9, [sp, #0x40]
100003bd8: f9000920    	str	x0, [x9, #0x10]
100003bdc: aa0103e8    	mov	x8, x1
100003be0: b9000d28    	str	w8, [x9, #0xc]
100003be4: 1400001d    	b	0x100003c58 <findWebp()+0x2f0>
100003be8: f94023e9    	ldr	x9, [sp, #0x40]
100003bec: f9000920    	str	x0, [x9, #0x10]
100003bf0: aa0103e8    	mov	x8, x1
100003bf4: b9000d28    	str	w8, [x9, #0xc]
100003bf8: 14000015    	b	0x100003c4c <findWebp()+0x2e4>
100003bfc: f94023e9    	ldr	x9, [sp, #0x40]
100003c00: f9000920    	str	x0, [x9, #0x10]
100003c04: aa0103e8    	mov	x8, x1
100003c08: b9000d28    	str	w8, [x9, #0xc]
100003c0c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100003c10: 360000a8    	tbz	w8, #0x0, 0x100003c24 <findWebp()+0x2bc>
100003c14: 14000001    	b	0x100003c18 <findWebp()+0x2b0>
100003c18: 9101e3e0    	add	x0, sp, #0x78
100003c1c: 94001c71    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003c20: 14000001    	b	0x100003c24 <findWebp()+0x2bc>
100003c24: 1400000a    	b	0x100003c4c <findWebp()+0x2e4>
100003c28: 910263e0    	add	x0, sp, #0x98
100003c2c: 94001c6d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003c30: d10203a0    	sub	x0, x29, #0x80
100003c34: 94001c6b    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003c38: 14000001    	b	0x100003c3c <findWebp()+0x2d4>
100003c3c: d10163a0    	sub	x0, x29, #0x58
100003c40: 97fffe40    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100003c44: 14000001    	b	0x100003c48 <findWebp()+0x2e0>
100003c48: 17ffff65    	b	0x1000039dc <findWebp()+0x74>
100003c4c: 910263e0    	add	x0, sp, #0x98
100003c50: 94001c64    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003c54: 14000001    	b	0x100003c58 <findWebp()+0x2f0>
100003c58: d10203a0    	sub	x0, x29, #0x80
100003c5c: 94001c61    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003c60: 14000001    	b	0x100003c64 <findWebp()+0x2fc>
100003c64: d10103a0    	sub	x0, x29, #0x40
100003c68: 97fffacc    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003c6c: 14000031    	b	0x100003d30 <findWebp()+0x3c8>
100003c70: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100003c74: f940d000    	ldr	x0, [x0, #0x1a0]
100003c78: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003c7c: 91183421    	add	x1, x1, #0x60d
100003c80: 97fff9b7    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003c84: f9000be0    	str	x0, [sp, #0x10]
100003c88: 14000001    	b	0x100003c8c <findWebp()+0x324>
100003c8c: f9400be0    	ldr	x0, [sp, #0x10]
100003c90: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003c94: 91186021    	add	x1, x1, #0x618
100003c98: 97fff9b1    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003c9c: 14000001    	b	0x100003ca0 <findWebp()+0x338>
100003ca0: 52800040    	mov	w0, #0x2                ; =2
100003ca4: 94001cd0    	bl	0x10000afe4 <_strlen+0x10000afe4>
100003ca8: 14000001    	b	0x100003cac <findWebp()+0x344>
100003cac: f94027e0    	ldr	x0, [sp, #0x48]
100003cb0: 97fffe2c    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100003cb4: aa0003e1    	mov	x1, x0
100003cb8: b0000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100003cbc: f940d000    	ldr	x0, [x0, #0x1a0]
100003cc0: 94001c5d    	bl	0x10000ae34 <_strlen+0x10000ae34>
100003cc4: f90007e0    	str	x0, [sp, #0x8]
100003cc8: 14000001    	b	0x100003ccc <findWebp()+0x364>
100003ccc: f94007e0    	ldr	x0, [sp, #0x8]
100003cd0: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003cd4: 911a1821    	add	x1, x1, #0x686
100003cd8: 97fff9a1    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003cdc: f90003e0    	str	x0, [sp]
100003ce0: 14000001    	b	0x100003ce4 <findWebp()+0x37c>
100003ce4: f94003e0    	ldr	x0, [sp]
100003ce8: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003cec: 91186021    	add	x1, x1, #0x618
100003cf0: 97fff99b    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100003cf4: 14000001    	b	0x100003cf8 <findWebp()+0x390>
100003cf8: 52800028    	mov	w8, #0x1                ; =1
100003cfc: 12000108    	and	w8, w8, #0x1
100003d00: 12000108    	and	w8, w8, #0x1
100003d04: 381e73a8    	sturb	w8, [x29, #-0x19]
100003d08: 385e73a8    	ldurb	w8, [x29, #-0x19]
100003d0c: 370000a8    	tbnz	w8, #0x0, 0x100003d20 <findWebp()+0x3b8>
100003d10: 14000001    	b	0x100003d14 <findWebp()+0x3ac>
100003d14: f94027e0    	ldr	x0, [sp, #0x48]
100003d18: 97fffaa0    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003d1c: 14000001    	b	0x100003d20 <findWebp()+0x3b8>
100003d20: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100003d24: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100003d28: 910503ff    	add	sp, sp, #0x140
100003d2c: d65f03c0    	ret
100003d30: f94027e0    	ldr	x0, [sp, #0x48]
100003d34: 97fffa99    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003d38: 14000001    	b	0x100003d3c <findWebp()+0x3d4>
100003d3c: f94023e8    	ldr	x8, [sp, #0x40]
100003d40: f9400900    	ldr	x0, [x8, #0x10]
100003d44: 94001bdf    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100003d48 <findHEIC()>:
100003d48: d10503ff    	sub	sp, sp, #0x140
100003d4c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100003d50: a9137bfd    	stp	x29, x30, [sp, #0x130]
100003d54: 9104c3fd    	add	x29, sp, #0x130
100003d58: d10163a9    	sub	x9, x29, #0x58
100003d5c: f90023e9    	str	x9, [sp, #0x40]
100003d60: aa0803e0    	mov	x0, x8
100003d64: f90027e0    	str	x0, [sp, #0x48]
100003d68: aa0003e8    	mov	x8, x0
100003d6c: f9002128    	str	x8, [x9, #0x40]
100003d70: 52800008    	mov	w8, #0x0                ; =0
100003d74: 12000108    	and	w8, w8, #0x1
100003d78: 12000108    	and	w8, w8, #0x1
100003d7c: 381e73a8    	sturb	w8, [x29, #-0x19]
100003d80: 97fff96c    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100003d84: d10103a8    	sub	x8, x29, #0x40
100003d88: 97fff88d    	bl	0x100001fbc <readDownloadFiles()>
100003d8c: 14000001    	b	0x100003d90 <findHEIC()+0x48>
100003d90: f94023e8    	ldr	x8, [sp, #0x40]
100003d94: d10103a9    	sub	x9, x29, #0x40
100003d98: f9001909    	str	x9, [x8, #0x30]
100003d9c: f9401900    	ldr	x0, [x8, #0x30]
100003da0: 97fffce8    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100003da4: f94023e8    	ldr	x8, [sp, #0x40]
100003da8: f9000100    	str	x0, [x8]
100003dac: f9401900    	ldr	x0, [x8, #0x30]
100003db0: 97fffcef    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100003db4: f81a03a0    	stur	x0, [x29, #-0x60]
100003db8: 14000001    	b	0x100003dbc <findHEIC()+0x74>
100003dbc: d10163a0    	sub	x0, x29, #0x58
100003dc0: d10183a1    	sub	x1, x29, #0x60
100003dc4: 97fffcf5    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100003dc8: b9003fe0    	str	w0, [sp, #0x3c]
100003dcc: 14000001    	b	0x100003dd0 <findHEIC()+0x88>
100003dd0: b9403fe8    	ldr	w8, [sp, #0x3c]
100003dd4: 370001e8    	tbnz	w8, #0x0, 0x100003e10 <findHEIC()+0xc8>
100003dd8: 14000001    	b	0x100003ddc <findHEIC()+0x94>
100003ddc: d10103a0    	sub	x0, x29, #0x40
100003de0: 97fffa6e    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100003de4: 1400009b    	b	0x100004050 <findHEIC()+0x308>
100003de8: f94023e9    	ldr	x9, [sp, #0x40]
100003dec: f9000920    	str	x0, [x9, #0x10]
100003df0: aa0103e8    	mov	x8, x1
100003df4: b9000d28    	str	w8, [x9, #0xc]
100003df8: 140000c6    	b	0x100004110 <findHEIC()+0x3c8>
100003dfc: f94023e9    	ldr	x9, [sp, #0x40]
100003e00: f9000920    	str	x0, [x9, #0x10]
100003e04: aa0103e8    	mov	x8, x1
100003e08: b9000d28    	str	w8, [x9, #0xc]
100003e0c: 1400008e    	b	0x100004044 <findHEIC()+0x2fc>
100003e10: d10163a0    	sub	x0, x29, #0x58
100003e14: 97fffcee    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100003e18: f9001be0    	str	x0, [sp, #0x30]
100003e1c: 14000001    	b	0x100003e20 <findHEIC()+0xd8>
100003e20: f9401be8    	ldr	x8, [sp, #0x30]
100003e24: f81983a8    	stur	x8, [x29, #-0x68]
100003e28: d10203a0    	sub	x0, x29, #0x80
100003e2c: 90000041    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100003e30: 911acc21    	add	x1, x1, #0x6b3
100003e34: 97fff96c    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100003e38: 14000001    	b	0x100003e3c <findHEIC()+0xf4>
100003e3c: 910263e8    	add	x8, sp, #0x98
100003e40: d10203a0    	sub	x0, x29, #0x80
100003e44: 97fff7cd    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003e48: 14000001    	b	0x100003e4c <findHEIC()+0x104>
100003e4c: f85983a0    	ldur	x0, [x29, #-0x68]
100003e50: 910263e1    	add	x1, sp, #0x98
100003e54: d2800002    	mov	x2, #0x0                ; =0
100003e58: f90017e2    	str	x2, [sp, #0x28]
100003e5c: 97fffce7    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100003e60: f94017e2    	ldr	x2, [sp, #0x28]
100003e64: aa0003e8    	mov	x8, x0
100003e68: b90097e8    	str	w8, [sp, #0x94]
100003e6c: f85983a0    	ldur	x0, [x29, #-0x68]
100003e70: d10203a1    	sub	x1, x29, #0x80
100003e74: 97fffce1    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100003e78: aa0003e8    	mov	x8, x0
100003e7c: b90093e8    	str	w8, [sp, #0x90]
100003e80: b98097e8    	ldrsw	x8, [sp, #0x94]
100003e84: b1000508    	adds	x8, x8, #0x1
100003e88: 1a9f17e8    	cset	w8, eq
100003e8c: 5280002a    	mov	w10, #0x1               ; =1
100003e90: 52800009    	mov	w9, #0x0                ; =0
100003e94: 1200012b    	and	w11, w9, #0x1
100003e98: 1200016b    	and	w11, w11, #0x1
100003e9c: 3901dfeb    	strb	w11, [sp, #0x77]
100003ea0: 12000129    	and	w9, w9, #0x1
100003ea4: 0a0a0129    	and	w9, w9, w10
100003ea8: 39015fe9    	strb	w9, [sp, #0x57]
100003eac: 37000268    	tbnz	w8, #0x0, 0x100003ef8 <findHEIC()+0x1b0>
100003eb0: 14000001    	b	0x100003eb4 <findHEIC()+0x16c>
100003eb4: f85983a0    	ldur	x0, [x29, #-0x68]
100003eb8: b98097e1    	ldrsw	x1, [sp, #0x94]
100003ebc: 9101e3e8    	add	x8, sp, #0x78
100003ec0: 92800002    	mov	x2, #-0x1               ; =-1
100003ec4: 97fffd5a    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003ec8: 14000001    	b	0x100003ecc <findHEIC()+0x184>
100003ecc: 52800028    	mov	w8, #0x1                ; =1
100003ed0: 12000108    	and	w8, w8, #0x1
100003ed4: 12000108    	and	w8, w8, #0x1
100003ed8: 3901dfe8    	strb	w8, [sp, #0x77]
100003edc: 9101e3e0    	add	x0, sp, #0x78
100003ee0: 910263e1    	add	x1, sp, #0x98
100003ee4: 97fffd00    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003ee8: 52800028    	mov	w8, #0x1                ; =1
100003eec: b90027e8    	str	w8, [sp, #0x24]
100003ef0: 37000360    	tbnz	w0, #0x0, 0x100003f5c <findHEIC()+0x214>
100003ef4: 14000001    	b	0x100003ef8 <findHEIC()+0x1b0>
100003ef8: b98093e8    	ldrsw	x8, [sp, #0x90]
100003efc: b1000508    	adds	x8, x8, #0x1
100003f00: 1a9f17e8    	cset	w8, eq
100003f04: 52800000    	mov	w0, #0x0                ; =0
100003f08: b90023e0    	str	w0, [sp, #0x20]
100003f0c: 37000228    	tbnz	w8, #0x0, 0x100003f50 <findHEIC()+0x208>
100003f10: 14000001    	b	0x100003f14 <findHEIC()+0x1cc>
100003f14: f85983a0    	ldur	x0, [x29, #-0x68]
100003f18: b98093e1    	ldrsw	x1, [sp, #0x90]
100003f1c: 910163e8    	add	x8, sp, #0x58
100003f20: 92800002    	mov	x2, #-0x1               ; =-1
100003f24: 97fffd42    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100003f28: 14000001    	b	0x100003f2c <findHEIC()+0x1e4>
100003f2c: 52800028    	mov	w8, #0x1                ; =1
100003f30: 12000108    	and	w8, w8, #0x1
100003f34: 12000108    	and	w8, w8, #0x1
100003f38: 39015fe8    	strb	w8, [sp, #0x57]
100003f3c: 910163e0    	add	x0, sp, #0x58
100003f40: d10203a1    	sub	x1, x29, #0x80
100003f44: 97fffce8    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003f48: b90023e0    	str	w0, [sp, #0x20]
100003f4c: 14000001    	b	0x100003f50 <findHEIC()+0x208>
100003f50: b94023e8    	ldr	w8, [sp, #0x20]
100003f54: b90027e8    	str	w8, [sp, #0x24]
100003f58: 14000001    	b	0x100003f5c <findHEIC()+0x214>
100003f5c: b94027e8    	ldr	w8, [sp, #0x24]
100003f60: b9001fe8    	str	w8, [sp, #0x1c]
100003f64: 39415fe8    	ldrb	w8, [sp, #0x57]
100003f68: 360000a8    	tbz	w8, #0x0, 0x100003f7c <findHEIC()+0x234>
100003f6c: 14000001    	b	0x100003f70 <findHEIC()+0x228>
100003f70: 910163e0    	add	x0, sp, #0x58
100003f74: 94001b9b    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003f78: 14000001    	b	0x100003f7c <findHEIC()+0x234>
100003f7c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100003f80: 360000a8    	tbz	w8, #0x0, 0x100003f94 <findHEIC()+0x24c>
100003f84: 14000001    	b	0x100003f88 <findHEIC()+0x240>
100003f88: 9101e3e0    	add	x0, sp, #0x78
100003f8c: 94001b95    	bl	0x10000ade0 <_strlen+0x10000ade0>
100003f90: 14000001    	b	0x100003f94 <findHEIC()+0x24c>
100003f94: b9401fe8    	ldr	w8, [sp, #0x1c]
100003f98: 36000388    	tbz	w8, #0x0, 0x100004008 <findHEIC()+0x2c0>
100003f9c: 14000001    	b	0x100003fa0 <findHEIC()+0x258>
100003fa0: f94027e0    	ldr	x0, [sp, #0x48]
100003fa4: f85983a1    	ldur	x1, [x29, #-0x68]
100003fa8: 97fff9d2    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100003fac: 14000001    	b	0x100003fb0 <findHEIC()+0x268>
100003fb0: 14000016    	b	0x100004008 <findHEIC()+0x2c0>
100003fb4: f94023e9    	ldr	x9, [sp, #0x40]
100003fb8: f9000920    	str	x0, [x9, #0x10]
100003fbc: aa0103e8    	mov	x8, x1
100003fc0: b9000d28    	str	w8, [x9, #0xc]
100003fc4: 1400001d    	b	0x100004038 <findHEIC()+0x2f0>
100003fc8: f94023e9    	ldr	x9, [sp, #0x40]
100003fcc: f9000920    	str	x0, [x9, #0x10]
100003fd0: aa0103e8    	mov	x8, x1
100003fd4: b9000d28    	str	w8, [x9, #0xc]
100003fd8: 14000015    	b	0x10000402c <findHEIC()+0x2e4>
100003fdc: f94023e9    	ldr	x9, [sp, #0x40]
100003fe0: f9000920    	str	x0, [x9, #0x10]
100003fe4: aa0103e8    	mov	x8, x1
100003fe8: b9000d28    	str	w8, [x9, #0xc]
100003fec: 3941dfe8    	ldrb	w8, [sp, #0x77]
100003ff0: 360000a8    	tbz	w8, #0x0, 0x100004004 <findHEIC()+0x2bc>
100003ff4: 14000001    	b	0x100003ff8 <findHEIC()+0x2b0>
100003ff8: 9101e3e0    	add	x0, sp, #0x78
100003ffc: 94001b79    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004000: 14000001    	b	0x100004004 <findHEIC()+0x2bc>
100004004: 1400000a    	b	0x10000402c <findHEIC()+0x2e4>
100004008: 910263e0    	add	x0, sp, #0x98
10000400c: 94001b75    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004010: d10203a0    	sub	x0, x29, #0x80
100004014: 94001b73    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004018: 14000001    	b	0x10000401c <findHEIC()+0x2d4>
10000401c: d10163a0    	sub	x0, x29, #0x58
100004020: 97fffd48    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100004024: 14000001    	b	0x100004028 <findHEIC()+0x2e0>
100004028: 17ffff65    	b	0x100003dbc <findHEIC()+0x74>
10000402c: 910263e0    	add	x0, sp, #0x98
100004030: 94001b6c    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004034: 14000001    	b	0x100004038 <findHEIC()+0x2f0>
100004038: d10203a0    	sub	x0, x29, #0x80
10000403c: 94001b69    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004040: 14000001    	b	0x100004044 <findHEIC()+0x2fc>
100004044: d10103a0    	sub	x0, x29, #0x40
100004048: 97fff9d4    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000404c: 14000031    	b	0x100004110 <findHEIC()+0x3c8>
100004050: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004054: f940d000    	ldr	x0, [x0, #0x1a0]
100004058: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000405c: 91183421    	add	x1, x1, #0x60d
100004060: 97fff8bf    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004064: f9000be0    	str	x0, [sp, #0x10]
100004068: 14000001    	b	0x10000406c <findHEIC()+0x324>
10000406c: f9400be0    	ldr	x0, [sp, #0x10]
100004070: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004074: 91186021    	add	x1, x1, #0x618
100004078: 97fff8b9    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000407c: 14000001    	b	0x100004080 <findHEIC()+0x338>
100004080: 52800040    	mov	w0, #0x2                ; =2
100004084: 94001bd8    	bl	0x10000afe4 <_strlen+0x10000afe4>
100004088: 14000001    	b	0x10000408c <findHEIC()+0x344>
10000408c: f94027e0    	ldr	x0, [sp, #0x48]
100004090: 97fffd34    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100004094: aa0003e1    	mov	x1, x0
100004098: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000409c: f940d000    	ldr	x0, [x0, #0x1a0]
1000040a0: 94001b65    	bl	0x10000ae34 <_strlen+0x10000ae34>
1000040a4: f90007e0    	str	x0, [sp, #0x8]
1000040a8: 14000001    	b	0x1000040ac <findHEIC()+0x364>
1000040ac: f94007e0    	ldr	x0, [sp, #0x8]
1000040b0: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000040b4: 911ae421    	add	x1, x1, #0x6b9
1000040b8: 97fff8a9    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000040bc: f90003e0    	str	x0, [sp]
1000040c0: 14000001    	b	0x1000040c4 <findHEIC()+0x37c>
1000040c4: f94003e0    	ldr	x0, [sp]
1000040c8: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000040cc: 91186021    	add	x1, x1, #0x618
1000040d0: 97fff8a3    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000040d4: 14000001    	b	0x1000040d8 <findHEIC()+0x390>
1000040d8: 52800028    	mov	w8, #0x1                ; =1
1000040dc: 12000108    	and	w8, w8, #0x1
1000040e0: 12000108    	and	w8, w8, #0x1
1000040e4: 381e73a8    	sturb	w8, [x29, #-0x19]
1000040e8: 385e73a8    	ldurb	w8, [x29, #-0x19]
1000040ec: 370000a8    	tbnz	w8, #0x0, 0x100004100 <findHEIC()+0x3b8>
1000040f0: 14000001    	b	0x1000040f4 <findHEIC()+0x3ac>
1000040f4: f94027e0    	ldr	x0, [sp, #0x48]
1000040f8: 97fff9a8    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000040fc: 14000001    	b	0x100004100 <findHEIC()+0x3b8>
100004100: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100004104: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100004108: 910503ff    	add	sp, sp, #0x140
10000410c: d65f03c0    	ret
100004110: f94027e0    	ldr	x0, [sp, #0x48]
100004114: 97fff9a1    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004118: 14000001    	b	0x10000411c <findHEIC()+0x3d4>
10000411c: f94023e8    	ldr	x8, [sp, #0x40]
100004120: f9400900    	ldr	x0, [x8, #0x10]
100004124: 94001ae7    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100004128 <findSVG()>:
100004128: d10503ff    	sub	sp, sp, #0x140
10000412c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100004130: a9137bfd    	stp	x29, x30, [sp, #0x130]
100004134: 9104c3fd    	add	x29, sp, #0x130
100004138: d10163a9    	sub	x9, x29, #0x58
10000413c: f90023e9    	str	x9, [sp, #0x40]
100004140: aa0803e0    	mov	x0, x8
100004144: f90027e0    	str	x0, [sp, #0x48]
100004148: aa0003e8    	mov	x8, x0
10000414c: f9002128    	str	x8, [x9, #0x40]
100004150: 52800008    	mov	w8, #0x0                ; =0
100004154: 12000108    	and	w8, w8, #0x1
100004158: 12000108    	and	w8, w8, #0x1
10000415c: 381e73a8    	sturb	w8, [x29, #-0x19]
100004160: 97fff874    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100004164: d10103a8    	sub	x8, x29, #0x40
100004168: 97fff795    	bl	0x100001fbc <readDownloadFiles()>
10000416c: 14000001    	b	0x100004170 <findSVG()+0x48>
100004170: f94023e8    	ldr	x8, [sp, #0x40]
100004174: d10103a9    	sub	x9, x29, #0x40
100004178: f9001909    	str	x9, [x8, #0x30]
10000417c: f9401900    	ldr	x0, [x8, #0x30]
100004180: 97fffbf0    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100004184: f94023e8    	ldr	x8, [sp, #0x40]
100004188: f9000100    	str	x0, [x8]
10000418c: f9401900    	ldr	x0, [x8, #0x30]
100004190: 97fffbf7    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100004194: f81a03a0    	stur	x0, [x29, #-0x60]
100004198: 14000001    	b	0x10000419c <findSVG()+0x74>
10000419c: d10163a0    	sub	x0, x29, #0x58
1000041a0: d10183a1    	sub	x1, x29, #0x60
1000041a4: 97fffbfd    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
1000041a8: b9003fe0    	str	w0, [sp, #0x3c]
1000041ac: 14000001    	b	0x1000041b0 <findSVG()+0x88>
1000041b0: b9403fe8    	ldr	w8, [sp, #0x3c]
1000041b4: 370001e8    	tbnz	w8, #0x0, 0x1000041f0 <findSVG()+0xc8>
1000041b8: 14000001    	b	0x1000041bc <findSVG()+0x94>
1000041bc: d10103a0    	sub	x0, x29, #0x40
1000041c0: 97fff976    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000041c4: 1400009b    	b	0x100004430 <findSVG()+0x308>
1000041c8: f94023e9    	ldr	x9, [sp, #0x40]
1000041cc: f9000920    	str	x0, [x9, #0x10]
1000041d0: aa0103e8    	mov	x8, x1
1000041d4: b9000d28    	str	w8, [x9, #0xc]
1000041d8: 140000c6    	b	0x1000044f0 <findSVG()+0x3c8>
1000041dc: f94023e9    	ldr	x9, [sp, #0x40]
1000041e0: f9000920    	str	x0, [x9, #0x10]
1000041e4: aa0103e8    	mov	x8, x1
1000041e8: b9000d28    	str	w8, [x9, #0xc]
1000041ec: 1400008e    	b	0x100004424 <findSVG()+0x2fc>
1000041f0: d10163a0    	sub	x0, x29, #0x58
1000041f4: 97fffbf6    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
1000041f8: f9001be0    	str	x0, [sp, #0x30]
1000041fc: 14000001    	b	0x100004200 <findSVG()+0xd8>
100004200: f9401be8    	ldr	x8, [sp, #0x30]
100004204: f81983a8    	stur	x8, [x29, #-0x68]
100004208: d10203a0    	sub	x0, x29, #0x80
10000420c: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004210: 911b9821    	add	x1, x1, #0x6e6
100004214: 97fff874    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100004218: 14000001    	b	0x10000421c <findSVG()+0xf4>
10000421c: 910263e8    	add	x8, sp, #0x98
100004220: d10203a0    	sub	x0, x29, #0x80
100004224: 97fff6d5    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004228: 14000001    	b	0x10000422c <findSVG()+0x104>
10000422c: f85983a0    	ldur	x0, [x29, #-0x68]
100004230: 910263e1    	add	x1, sp, #0x98
100004234: d2800002    	mov	x2, #0x0                ; =0
100004238: f90017e2    	str	x2, [sp, #0x28]
10000423c: 97fffbef    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004240: f94017e2    	ldr	x2, [sp, #0x28]
100004244: aa0003e8    	mov	x8, x0
100004248: b90097e8    	str	w8, [sp, #0x94]
10000424c: f85983a0    	ldur	x0, [x29, #-0x68]
100004250: d10203a1    	sub	x1, x29, #0x80
100004254: 97fffbe9    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004258: aa0003e8    	mov	x8, x0
10000425c: b90093e8    	str	w8, [sp, #0x90]
100004260: b98097e8    	ldrsw	x8, [sp, #0x94]
100004264: b1000508    	adds	x8, x8, #0x1
100004268: 1a9f17e8    	cset	w8, eq
10000426c: 5280002a    	mov	w10, #0x1               ; =1
100004270: 52800009    	mov	w9, #0x0                ; =0
100004274: 1200012b    	and	w11, w9, #0x1
100004278: 1200016b    	and	w11, w11, #0x1
10000427c: 3901dfeb    	strb	w11, [sp, #0x77]
100004280: 12000129    	and	w9, w9, #0x1
100004284: 0a0a0129    	and	w9, w9, w10
100004288: 39015fe9    	strb	w9, [sp, #0x57]
10000428c: 37000268    	tbnz	w8, #0x0, 0x1000042d8 <findSVG()+0x1b0>
100004290: 14000001    	b	0x100004294 <findSVG()+0x16c>
100004294: f85983a0    	ldur	x0, [x29, #-0x68]
100004298: b98097e1    	ldrsw	x1, [sp, #0x94]
10000429c: 9101e3e8    	add	x8, sp, #0x78
1000042a0: 92800002    	mov	x2, #-0x1               ; =-1
1000042a4: 97fffc62    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
1000042a8: 14000001    	b	0x1000042ac <findSVG()+0x184>
1000042ac: 52800028    	mov	w8, #0x1                ; =1
1000042b0: 12000108    	and	w8, w8, #0x1
1000042b4: 12000108    	and	w8, w8, #0x1
1000042b8: 3901dfe8    	strb	w8, [sp, #0x77]
1000042bc: 9101e3e0    	add	x0, sp, #0x78
1000042c0: 910263e1    	add	x1, sp, #0x98
1000042c4: 97fffc08    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000042c8: 52800028    	mov	w8, #0x1                ; =1
1000042cc: b90027e8    	str	w8, [sp, #0x24]
1000042d0: 37000360    	tbnz	w0, #0x0, 0x10000433c <findSVG()+0x214>
1000042d4: 14000001    	b	0x1000042d8 <findSVG()+0x1b0>
1000042d8: b98093e8    	ldrsw	x8, [sp, #0x90]
1000042dc: b1000508    	adds	x8, x8, #0x1
1000042e0: 1a9f17e8    	cset	w8, eq
1000042e4: 52800000    	mov	w0, #0x0                ; =0
1000042e8: b90023e0    	str	w0, [sp, #0x20]
1000042ec: 37000228    	tbnz	w8, #0x0, 0x100004330 <findSVG()+0x208>
1000042f0: 14000001    	b	0x1000042f4 <findSVG()+0x1cc>
1000042f4: f85983a0    	ldur	x0, [x29, #-0x68]
1000042f8: b98093e1    	ldrsw	x1, [sp, #0x90]
1000042fc: 910163e8    	add	x8, sp, #0x58
100004300: 92800002    	mov	x2, #-0x1               ; =-1
100004304: 97fffc4a    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004308: 14000001    	b	0x10000430c <findSVG()+0x1e4>
10000430c: 52800028    	mov	w8, #0x1                ; =1
100004310: 12000108    	and	w8, w8, #0x1
100004314: 12000108    	and	w8, w8, #0x1
100004318: 39015fe8    	strb	w8, [sp, #0x57]
10000431c: 910163e0    	add	x0, sp, #0x58
100004320: d10203a1    	sub	x1, x29, #0x80
100004324: 97fffbf0    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004328: b90023e0    	str	w0, [sp, #0x20]
10000432c: 14000001    	b	0x100004330 <findSVG()+0x208>
100004330: b94023e8    	ldr	w8, [sp, #0x20]
100004334: b90027e8    	str	w8, [sp, #0x24]
100004338: 14000001    	b	0x10000433c <findSVG()+0x214>
10000433c: b94027e8    	ldr	w8, [sp, #0x24]
100004340: b9001fe8    	str	w8, [sp, #0x1c]
100004344: 39415fe8    	ldrb	w8, [sp, #0x57]
100004348: 360000a8    	tbz	w8, #0x0, 0x10000435c <findSVG()+0x234>
10000434c: 14000001    	b	0x100004350 <findSVG()+0x228>
100004350: 910163e0    	add	x0, sp, #0x58
100004354: 94001aa3    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004358: 14000001    	b	0x10000435c <findSVG()+0x234>
10000435c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100004360: 360000a8    	tbz	w8, #0x0, 0x100004374 <findSVG()+0x24c>
100004364: 14000001    	b	0x100004368 <findSVG()+0x240>
100004368: 9101e3e0    	add	x0, sp, #0x78
10000436c: 94001a9d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004370: 14000001    	b	0x100004374 <findSVG()+0x24c>
100004374: b9401fe8    	ldr	w8, [sp, #0x1c]
100004378: 36000388    	tbz	w8, #0x0, 0x1000043e8 <findSVG()+0x2c0>
10000437c: 14000001    	b	0x100004380 <findSVG()+0x258>
100004380: f94027e0    	ldr	x0, [sp, #0x48]
100004384: f85983a1    	ldur	x1, [x29, #-0x68]
100004388: 97fff8da    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
10000438c: 14000001    	b	0x100004390 <findSVG()+0x268>
100004390: 14000016    	b	0x1000043e8 <findSVG()+0x2c0>
100004394: f94023e9    	ldr	x9, [sp, #0x40]
100004398: f9000920    	str	x0, [x9, #0x10]
10000439c: aa0103e8    	mov	x8, x1
1000043a0: b9000d28    	str	w8, [x9, #0xc]
1000043a4: 1400001d    	b	0x100004418 <findSVG()+0x2f0>
1000043a8: f94023e9    	ldr	x9, [sp, #0x40]
1000043ac: f9000920    	str	x0, [x9, #0x10]
1000043b0: aa0103e8    	mov	x8, x1
1000043b4: b9000d28    	str	w8, [x9, #0xc]
1000043b8: 14000015    	b	0x10000440c <findSVG()+0x2e4>
1000043bc: f94023e9    	ldr	x9, [sp, #0x40]
1000043c0: f9000920    	str	x0, [x9, #0x10]
1000043c4: aa0103e8    	mov	x8, x1
1000043c8: b9000d28    	str	w8, [x9, #0xc]
1000043cc: 3941dfe8    	ldrb	w8, [sp, #0x77]
1000043d0: 360000a8    	tbz	w8, #0x0, 0x1000043e4 <findSVG()+0x2bc>
1000043d4: 14000001    	b	0x1000043d8 <findSVG()+0x2b0>
1000043d8: 9101e3e0    	add	x0, sp, #0x78
1000043dc: 94001a81    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000043e0: 14000001    	b	0x1000043e4 <findSVG()+0x2bc>
1000043e4: 1400000a    	b	0x10000440c <findSVG()+0x2e4>
1000043e8: 910263e0    	add	x0, sp, #0x98
1000043ec: 94001a7d    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000043f0: d10203a0    	sub	x0, x29, #0x80
1000043f4: 94001a7b    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000043f8: 14000001    	b	0x1000043fc <findSVG()+0x2d4>
1000043fc: d10163a0    	sub	x0, x29, #0x58
100004400: 97fffc50    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100004404: 14000001    	b	0x100004408 <findSVG()+0x2e0>
100004408: 17ffff65    	b	0x10000419c <findSVG()+0x74>
10000440c: 910263e0    	add	x0, sp, #0x98
100004410: 94001a74    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004414: 14000001    	b	0x100004418 <findSVG()+0x2f0>
100004418: d10203a0    	sub	x0, x29, #0x80
10000441c: 94001a71    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004420: 14000001    	b	0x100004424 <findSVG()+0x2fc>
100004424: d10103a0    	sub	x0, x29, #0x40
100004428: 97fff8dc    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000442c: 14000031    	b	0x1000044f0 <findSVG()+0x3c8>
100004430: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004434: f940d000    	ldr	x0, [x0, #0x1a0]
100004438: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000443c: 91183421    	add	x1, x1, #0x60d
100004440: 97fff7c7    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004444: f9000be0    	str	x0, [sp, #0x10]
100004448: 14000001    	b	0x10000444c <findSVG()+0x324>
10000444c: f9400be0    	ldr	x0, [sp, #0x10]
100004450: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004454: 91186021    	add	x1, x1, #0x618
100004458: 97fff7c1    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000445c: 14000001    	b	0x100004460 <findSVG()+0x338>
100004460: 52800040    	mov	w0, #0x2                ; =2
100004464: 94001ae0    	bl	0x10000afe4 <_strlen+0x10000afe4>
100004468: 14000001    	b	0x10000446c <findSVG()+0x344>
10000446c: f94027e0    	ldr	x0, [sp, #0x48]
100004470: 97fffc3c    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100004474: aa0003e1    	mov	x1, x0
100004478: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000447c: f940d000    	ldr	x0, [x0, #0x1a0]
100004480: 94001a6d    	bl	0x10000ae34 <_strlen+0x10000ae34>
100004484: f90007e0    	str	x0, [sp, #0x8]
100004488: 14000001    	b	0x10000448c <findSVG()+0x364>
10000448c: f94007e0    	ldr	x0, [sp, #0x8]
100004490: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004494: 911bac21    	add	x1, x1, #0x6eb
100004498: 97fff7b1    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000449c: f90003e0    	str	x0, [sp]
1000044a0: 14000001    	b	0x1000044a4 <findSVG()+0x37c>
1000044a4: f94003e0    	ldr	x0, [sp]
1000044a8: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000044ac: 91186021    	add	x1, x1, #0x618
1000044b0: 97fff7ab    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000044b4: 14000001    	b	0x1000044b8 <findSVG()+0x390>
1000044b8: 52800028    	mov	w8, #0x1                ; =1
1000044bc: 12000108    	and	w8, w8, #0x1
1000044c0: 12000108    	and	w8, w8, #0x1
1000044c4: 381e73a8    	sturb	w8, [x29, #-0x19]
1000044c8: 385e73a8    	ldurb	w8, [x29, #-0x19]
1000044cc: 370000a8    	tbnz	w8, #0x0, 0x1000044e0 <findSVG()+0x3b8>
1000044d0: 14000001    	b	0x1000044d4 <findSVG()+0x3ac>
1000044d4: f94027e0    	ldr	x0, [sp, #0x48]
1000044d8: 97fff8b0    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000044dc: 14000001    	b	0x1000044e0 <findSVG()+0x3b8>
1000044e0: a9537bfd    	ldp	x29, x30, [sp, #0x130]
1000044e4: a9526ffc    	ldp	x28, x27, [sp, #0x120]
1000044e8: 910503ff    	add	sp, sp, #0x140
1000044ec: d65f03c0    	ret
1000044f0: f94027e0    	ldr	x0, [sp, #0x48]
1000044f4: 97fff8a9    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000044f8: 14000001    	b	0x1000044fc <findSVG()+0x3d4>
1000044fc: f94023e8    	ldr	x8, [sp, #0x40]
100004500: f9400900    	ldr	x0, [x8, #0x10]
100004504: 940019ef    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100004508 <findDoc()>:
100004508: d10703ff    	sub	sp, sp, #0x1c0
10000450c: a91a6ffc    	stp	x28, x27, [sp, #0x1a0]
100004510: a91b7bfd    	stp	x29, x30, [sp, #0x1b0]
100004514: 9106c3fd    	add	x29, sp, #0x1b0
100004518: d10343a9    	sub	x9, x29, #0xd0
10000451c: f90027e9    	str	x9, [sp, #0x48]
100004520: aa0803e0    	mov	x0, x8
100004524: f9002be0    	str	x0, [sp, #0x50]
100004528: aa0003e8    	mov	x8, x0
10000452c: f9005d28    	str	x8, [x9, #0xb8]
100004530: 52800008    	mov	w8, #0x0                ; =0
100004534: 12000108    	and	w8, w8, #0x1
100004538: 12000108    	and	w8, w8, #0x1
10000453c: 381e73a8    	sturb	w8, [x29, #-0x19]
100004540: 97fff77c    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100004544: d10103a8    	sub	x8, x29, #0x40
100004548: 97fff69d    	bl	0x100001fbc <readDownloadFiles()>
10000454c: 14000001    	b	0x100004550 <findDoc()+0x48>
100004550: f94027e8    	ldr	x8, [sp, #0x48]
100004554: d10103a9    	sub	x9, x29, #0x40
100004558: f9005509    	str	x9, [x8, #0xa8]
10000455c: f9405500    	ldr	x0, [x8, #0xa8]
100004560: 97fffaf8    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100004564: f94027e8    	ldr	x8, [sp, #0x48]
100004568: f9003d00    	str	x0, [x8, #0x78]
10000456c: f9405500    	ldr	x0, [x8, #0xa8]
100004570: 97fffaff    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100004574: f94027e8    	ldr	x8, [sp, #0x48]
100004578: f9003900    	str	x0, [x8, #0x70]
10000457c: 14000001    	b	0x100004580 <findDoc()+0x78>
100004580: d10163a0    	sub	x0, x29, #0x58
100004584: d10183a1    	sub	x1, x29, #0x60
100004588: 97fffb04    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
10000458c: b90047e0    	str	w0, [sp, #0x44]
100004590: 14000001    	b	0x100004594 <findDoc()+0x8c>
100004594: b94047e8    	ldr	w8, [sp, #0x44]
100004598: 370001e8    	tbnz	w8, #0x0, 0x1000045d4 <findDoc()+0xcc>
10000459c: 14000001    	b	0x1000045a0 <findDoc()+0x98>
1000045a0: d10103a0    	sub	x0, x29, #0x40
1000045a4: 97fff87d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000045a8: 14000126    	b	0x100004a40 <findDoc()+0x538>
1000045ac: f94027e9    	ldr	x9, [sp, #0x48]
1000045b0: f9004520    	str	x0, [x9, #0x88]
1000045b4: aa0103e8    	mov	x8, x1
1000045b8: b9008528    	str	w8, [x9, #0x84]
1000045bc: 14000151    	b	0x100004b00 <findDoc()+0x5f8>
1000045c0: f94027e9    	ldr	x9, [sp, #0x48]
1000045c4: f9004520    	str	x0, [x9, #0x88]
1000045c8: aa0103e8    	mov	x8, x1
1000045cc: b9008528    	str	w8, [x9, #0x84]
1000045d0: 14000119    	b	0x100004a34 <findDoc()+0x52c>
1000045d4: d10163a0    	sub	x0, x29, #0x58
1000045d8: 97fffafd    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
1000045dc: f9001fe0    	str	x0, [sp, #0x38]
1000045e0: 14000001    	b	0x1000045e4 <findDoc()+0xdc>
1000045e4: f94027e9    	ldr	x9, [sp, #0x48]
1000045e8: f9401fe8    	ldr	x8, [sp, #0x38]
1000045ec: f9003528    	str	x8, [x9, #0x68]
1000045f0: d10203a0    	sub	x0, x29, #0x80
1000045f4: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000045f8: 911c5c21    	add	x1, x1, #0x717
1000045fc: 97fff77a    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100004600: 14000001    	b	0x100004604 <findDoc()+0xfc>
100004604: d10263a0    	sub	x0, x29, #0x98
100004608: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000460c: 911c7021    	add	x1, x1, #0x71c
100004610: 97fff775    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100004614: 14000001    	b	0x100004618 <findDoc()+0x110>
100004618: d102c3a8    	sub	x8, x29, #0xb0
10000461c: d10203a0    	sub	x0, x29, #0x80
100004620: 97fff5d6    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004624: 14000001    	b	0x100004628 <findDoc()+0x120>
100004628: d10323a8    	sub	x8, x29, #0xc8
10000462c: d10263a0    	sub	x0, x29, #0x98
100004630: 97fff5d2    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004634: 14000001    	b	0x100004638 <findDoc()+0x130>
100004638: f94027e8    	ldr	x8, [sp, #0x48]
10000463c: f9403500    	ldr	x0, [x8, #0x68]
100004640: d10203a1    	sub	x1, x29, #0x80
100004644: d2800002    	mov	x2, #0x0                ; =0
100004648: f9001be2    	str	x2, [sp, #0x30]
10000464c: 97fffaeb    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004650: f9401be2    	ldr	x2, [sp, #0x30]
100004654: f94027e8    	ldr	x8, [sp, #0x48]
100004658: aa0003e9    	mov	x9, x0
10000465c: b9000509    	str	w9, [x8, #0x4]
100004660: f9403500    	ldr	x0, [x8, #0x68]
100004664: d102c3a1    	sub	x1, x29, #0xb0
100004668: 97fffae4    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
10000466c: f9401be2    	ldr	x2, [sp, #0x30]
100004670: f94027e8    	ldr	x8, [sp, #0x48]
100004674: aa0003e9    	mov	x9, x0
100004678: b9000109    	str	w9, [x8]
10000467c: f9403500    	ldr	x0, [x8, #0x68]
100004680: d10263a1    	sub	x1, x29, #0x98
100004684: 97fffadd    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004688: f9401be2    	ldr	x2, [sp, #0x30]
10000468c: f94027e8    	ldr	x8, [sp, #0x48]
100004690: aa0003e9    	mov	x9, x0
100004694: b812c3a9    	stur	w9, [x29, #-0xd4]
100004698: f9403500    	ldr	x0, [x8, #0x68]
10000469c: d10323a1    	sub	x1, x29, #0xc8
1000046a0: 97fffad6    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000046a4: f94027e8    	ldr	x8, [sp, #0x48]
1000046a8: aa0003e9    	mov	x9, x0
1000046ac: b900dbe9    	str	w9, [sp, #0xd8]
1000046b0: b9800108    	ldrsw	x8, [x8]
1000046b4: b1000508    	adds	x8, x8, #0x1
1000046b8: 1a9f17e8    	cset	w8, eq
1000046bc: 5280002a    	mov	w10, #0x1               ; =1
1000046c0: 52800009    	mov	w9, #0x0                ; =0
1000046c4: 1200012b    	and	w11, w9, #0x1
1000046c8: 1200016b    	and	w11, w11, #0x1
1000046cc: 3902ffeb    	strb	w11, [sp, #0xbf]
1000046d0: 1200012b    	and	w11, w9, #0x1
1000046d4: 0a0a016b    	and	w11, w11, w10
1000046d8: 39027feb    	strb	w11, [sp, #0x9f]
1000046dc: 1200012b    	and	w11, w9, #0x1
1000046e0: 0a0a016b    	and	w11, w11, w10
1000046e4: 3901ffeb    	strb	w11, [sp, #0x7f]
1000046e8: 12000129    	and	w9, w9, #0x1
1000046ec: 0a0a0129    	and	w9, w9, w10
1000046f0: 39017fe9    	strb	w9, [sp, #0x5f]
1000046f4: 37000288    	tbnz	w8, #0x0, 0x100004744 <findDoc()+0x23c>
1000046f8: 14000001    	b	0x1000046fc <findDoc()+0x1f4>
1000046fc: f94027e8    	ldr	x8, [sp, #0x48]
100004700: f9403500    	ldr	x0, [x8, #0x68]
100004704: b9800101    	ldrsw	x1, [x8]
100004708: 910303e8    	add	x8, sp, #0xc0
10000470c: 92800002    	mov	x2, #-0x1               ; =-1
100004710: 97fffb47    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004714: 14000001    	b	0x100004718 <findDoc()+0x210>
100004718: 52800028    	mov	w8, #0x1                ; =1
10000471c: 12000108    	and	w8, w8, #0x1
100004720: 12000108    	and	w8, w8, #0x1
100004724: 3902ffe8    	strb	w8, [sp, #0xbf]
100004728: 910303e0    	add	x0, sp, #0xc0
10000472c: d102c3a1    	sub	x1, x29, #0xb0
100004730: 97fffaed    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004734: 52800028    	mov	w8, #0x1                ; =1
100004738: b9002fe8    	str	w8, [sp, #0x2c]
10000473c: 37000960    	tbnz	w0, #0x0, 0x100004868 <findDoc()+0x360>
100004740: 14000001    	b	0x100004744 <findDoc()+0x23c>
100004744: f94027e8    	ldr	x8, [sp, #0x48]
100004748: b9800508    	ldrsw	x8, [x8, #0x4]
10000474c: b1000508    	adds	x8, x8, #0x1
100004750: 1a9f17e8    	cset	w8, eq
100004754: 37000288    	tbnz	w8, #0x0, 0x1000047a4 <findDoc()+0x29c>
100004758: 14000001    	b	0x10000475c <findDoc()+0x254>
10000475c: f94027e8    	ldr	x8, [sp, #0x48]
100004760: f9403500    	ldr	x0, [x8, #0x68]
100004764: b9800501    	ldrsw	x1, [x8, #0x4]
100004768: 910283e8    	add	x8, sp, #0xa0
10000476c: 92800002    	mov	x2, #-0x1               ; =-1
100004770: 97fffb2f    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004774: 14000001    	b	0x100004778 <findDoc()+0x270>
100004778: 52800028    	mov	w8, #0x1                ; =1
10000477c: 12000108    	and	w8, w8, #0x1
100004780: 12000108    	and	w8, w8, #0x1
100004784: 39027fe8    	strb	w8, [sp, #0x9f]
100004788: 910283e0    	add	x0, sp, #0xa0
10000478c: d10203a1    	sub	x1, x29, #0x80
100004790: 97fffad5    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004794: 52800028    	mov	w8, #0x1                ; =1
100004798: b9002fe8    	str	w8, [sp, #0x2c]
10000479c: 37000660    	tbnz	w0, #0x0, 0x100004868 <findDoc()+0x360>
1000047a0: 14000001    	b	0x1000047a4 <findDoc()+0x29c>
1000047a4: b892c3a8    	ldursw	x8, [x29, #-0xd4]
1000047a8: b1000508    	adds	x8, x8, #0x1
1000047ac: 1a9f17e8    	cset	w8, eq
1000047b0: 37000288    	tbnz	w8, #0x0, 0x100004800 <findDoc()+0x2f8>
1000047b4: 14000001    	b	0x1000047b8 <findDoc()+0x2b0>
1000047b8: f94027e8    	ldr	x8, [sp, #0x48]
1000047bc: f9403500    	ldr	x0, [x8, #0x68]
1000047c0: b892c3a1    	ldursw	x1, [x29, #-0xd4]
1000047c4: 910203e8    	add	x8, sp, #0x80
1000047c8: 92800002    	mov	x2, #-0x1               ; =-1
1000047cc: 97fffb18    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
1000047d0: 14000001    	b	0x1000047d4 <findDoc()+0x2cc>
1000047d4: 52800028    	mov	w8, #0x1                ; =1
1000047d8: 12000108    	and	w8, w8, #0x1
1000047dc: 12000108    	and	w8, w8, #0x1
1000047e0: 3901ffe8    	strb	w8, [sp, #0x7f]
1000047e4: 910203e0    	add	x0, sp, #0x80
1000047e8: d10263a1    	sub	x1, x29, #0x98
1000047ec: 97fffabe    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000047f0: 52800028    	mov	w8, #0x1                ; =1
1000047f4: b9002fe8    	str	w8, [sp, #0x2c]
1000047f8: 37000380    	tbnz	w0, #0x0, 0x100004868 <findDoc()+0x360>
1000047fc: 14000001    	b	0x100004800 <findDoc()+0x2f8>
100004800: b980dbe8    	ldrsw	x8, [sp, #0xd8]
100004804: b1000508    	adds	x8, x8, #0x1
100004808: 1a9f17e8    	cset	w8, eq
10000480c: 52800000    	mov	w0, #0x0                ; =0
100004810: b9002be0    	str	w0, [sp, #0x28]
100004814: 37000248    	tbnz	w8, #0x0, 0x10000485c <findDoc()+0x354>
100004818: 14000001    	b	0x10000481c <findDoc()+0x314>
10000481c: f94027e8    	ldr	x8, [sp, #0x48]
100004820: f9403500    	ldr	x0, [x8, #0x68]
100004824: b980dbe1    	ldrsw	x1, [sp, #0xd8]
100004828: 910183e8    	add	x8, sp, #0x60
10000482c: 92800002    	mov	x2, #-0x1               ; =-1
100004830: 97fffaff    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004834: 14000001    	b	0x100004838 <findDoc()+0x330>
100004838: 52800028    	mov	w8, #0x1                ; =1
10000483c: 12000108    	and	w8, w8, #0x1
100004840: 12000108    	and	w8, w8, #0x1
100004844: 39017fe8    	strb	w8, [sp, #0x5f]
100004848: 910183e0    	add	x0, sp, #0x60
10000484c: d10323a1    	sub	x1, x29, #0xc8
100004850: 97fffaa5    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004854: b9002be0    	str	w0, [sp, #0x28]
100004858: 14000001    	b	0x10000485c <findDoc()+0x354>
10000485c: b9402be8    	ldr	w8, [sp, #0x28]
100004860: b9002fe8    	str	w8, [sp, #0x2c]
100004864: 14000001    	b	0x100004868 <findDoc()+0x360>
100004868: b9402fe8    	ldr	w8, [sp, #0x2c]
10000486c: b90027e8    	str	w8, [sp, #0x24]
100004870: 39417fe8    	ldrb	w8, [sp, #0x5f]
100004874: 360000a8    	tbz	w8, #0x0, 0x100004888 <findDoc()+0x380>
100004878: 14000001    	b	0x10000487c <findDoc()+0x374>
10000487c: 910183e0    	add	x0, sp, #0x60
100004880: 94001958    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004884: 14000001    	b	0x100004888 <findDoc()+0x380>
100004888: 3941ffe8    	ldrb	w8, [sp, #0x7f]
10000488c: 360000a8    	tbz	w8, #0x0, 0x1000048a0 <findDoc()+0x398>
100004890: 14000001    	b	0x100004894 <findDoc()+0x38c>
100004894: 910203e0    	add	x0, sp, #0x80
100004898: 94001952    	bl	0x10000ade0 <_strlen+0x10000ade0>
10000489c: 14000001    	b	0x1000048a0 <findDoc()+0x398>
1000048a0: 39427fe8    	ldrb	w8, [sp, #0x9f]
1000048a4: 360000a8    	tbz	w8, #0x0, 0x1000048b8 <findDoc()+0x3b0>
1000048a8: 14000001    	b	0x1000048ac <findDoc()+0x3a4>
1000048ac: 910283e0    	add	x0, sp, #0xa0
1000048b0: 9400194c    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000048b4: 14000001    	b	0x1000048b8 <findDoc()+0x3b0>
1000048b8: 3942ffe8    	ldrb	w8, [sp, #0xbf]
1000048bc: 360000a8    	tbz	w8, #0x0, 0x1000048d0 <findDoc()+0x3c8>
1000048c0: 14000001    	b	0x1000048c4 <findDoc()+0x3bc>
1000048c4: 910303e0    	add	x0, sp, #0xc0
1000048c8: 94001946    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000048cc: 14000001    	b	0x1000048d0 <findDoc()+0x3c8>
1000048d0: b94027e8    	ldr	w8, [sp, #0x24]
1000048d4: 360007e8    	tbz	w8, #0x0, 0x1000049d0 <findDoc()+0x4c8>
1000048d8: 14000001    	b	0x1000048dc <findDoc()+0x3d4>
1000048dc: f9402be0    	ldr	x0, [sp, #0x50]
1000048e0: f94027e8    	ldr	x8, [sp, #0x48]
1000048e4: f9403501    	ldr	x1, [x8, #0x68]
1000048e8: 97fff782    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000048ec: 14000001    	b	0x1000048f0 <findDoc()+0x3e8>
1000048f0: 14000038    	b	0x1000049d0 <findDoc()+0x4c8>
1000048f4: f94027e9    	ldr	x9, [sp, #0x48]
1000048f8: f9004520    	str	x0, [x9, #0x88]
1000048fc: aa0103e8    	mov	x8, x1
100004900: b9008528    	str	w8, [x9, #0x84]
100004904: 14000049    	b	0x100004a28 <findDoc()+0x520>
100004908: f94027e9    	ldr	x9, [sp, #0x48]
10000490c: f9004520    	str	x0, [x9, #0x88]
100004910: aa0103e8    	mov	x8, x1
100004914: b9008528    	str	w8, [x9, #0x84]
100004918: 14000041    	b	0x100004a1c <findDoc()+0x514>
10000491c: f94027e9    	ldr	x9, [sp, #0x48]
100004920: f9004520    	str	x0, [x9, #0x88]
100004924: aa0103e8    	mov	x8, x1
100004928: b9008528    	str	w8, [x9, #0x84]
10000492c: 14000039    	b	0x100004a10 <findDoc()+0x508>
100004930: f94027e9    	ldr	x9, [sp, #0x48]
100004934: f9004520    	str	x0, [x9, #0x88]
100004938: aa0103e8    	mov	x8, x1
10000493c: b9008528    	str	w8, [x9, #0x84]
100004940: 14000031    	b	0x100004a04 <findDoc()+0x4fc>
100004944: f94027e9    	ldr	x9, [sp, #0x48]
100004948: f9004520    	str	x0, [x9, #0x88]
10000494c: aa0103e8    	mov	x8, x1
100004950: b9008528    	str	w8, [x9, #0x84]
100004954: 14000018    	b	0x1000049b4 <findDoc()+0x4ac>
100004958: f94027e9    	ldr	x9, [sp, #0x48]
10000495c: f9004520    	str	x0, [x9, #0x88]
100004960: aa0103e8    	mov	x8, x1
100004964: b9008528    	str	w8, [x9, #0x84]
100004968: 1400000c    	b	0x100004998 <findDoc()+0x490>
10000496c: f94027e9    	ldr	x9, [sp, #0x48]
100004970: f9004520    	str	x0, [x9, #0x88]
100004974: aa0103e8    	mov	x8, x1
100004978: b9008528    	str	w8, [x9, #0x84]
10000497c: 3941ffe8    	ldrb	w8, [sp, #0x7f]
100004980: 360000a8    	tbz	w8, #0x0, 0x100004994 <findDoc()+0x48c>
100004984: 14000001    	b	0x100004988 <findDoc()+0x480>
100004988: 910203e0    	add	x0, sp, #0x80
10000498c: 94001915    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004990: 14000001    	b	0x100004994 <findDoc()+0x48c>
100004994: 14000001    	b	0x100004998 <findDoc()+0x490>
100004998: 39427fe8    	ldrb	w8, [sp, #0x9f]
10000499c: 360000a8    	tbz	w8, #0x0, 0x1000049b0 <findDoc()+0x4a8>
1000049a0: 14000001    	b	0x1000049a4 <findDoc()+0x49c>
1000049a4: 910283e0    	add	x0, sp, #0xa0
1000049a8: 9400190e    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049ac: 14000001    	b	0x1000049b0 <findDoc()+0x4a8>
1000049b0: 14000001    	b	0x1000049b4 <findDoc()+0x4ac>
1000049b4: 3942ffe8    	ldrb	w8, [sp, #0xbf]
1000049b8: 360000a8    	tbz	w8, #0x0, 0x1000049cc <findDoc()+0x4c4>
1000049bc: 14000001    	b	0x1000049c0 <findDoc()+0x4b8>
1000049c0: 910303e0    	add	x0, sp, #0xc0
1000049c4: 94001907    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049c8: 14000001    	b	0x1000049cc <findDoc()+0x4c4>
1000049cc: 1400000e    	b	0x100004a04 <findDoc()+0x4fc>
1000049d0: d10323a0    	sub	x0, x29, #0xc8
1000049d4: 94001903    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049d8: d102c3a0    	sub	x0, x29, #0xb0
1000049dc: 94001901    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049e0: d10263a0    	sub	x0, x29, #0x98
1000049e4: 940018ff    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049e8: d10203a0    	sub	x0, x29, #0x80
1000049ec: 940018fd    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000049f0: 14000001    	b	0x1000049f4 <findDoc()+0x4ec>
1000049f4: d10163a0    	sub	x0, x29, #0x58
1000049f8: 97fffad2    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
1000049fc: 14000001    	b	0x100004a00 <findDoc()+0x4f8>
100004a00: 17fffee0    	b	0x100004580 <findDoc()+0x78>
100004a04: d10323a0    	sub	x0, x29, #0xc8
100004a08: 940018f6    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004a0c: 14000001    	b	0x100004a10 <findDoc()+0x508>
100004a10: d102c3a0    	sub	x0, x29, #0xb0
100004a14: 940018f3    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004a18: 14000001    	b	0x100004a1c <findDoc()+0x514>
100004a1c: d10263a0    	sub	x0, x29, #0x98
100004a20: 940018f0    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004a24: 14000001    	b	0x100004a28 <findDoc()+0x520>
100004a28: d10203a0    	sub	x0, x29, #0x80
100004a2c: 940018ed    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004a30: 14000001    	b	0x100004a34 <findDoc()+0x52c>
100004a34: d10103a0    	sub	x0, x29, #0x40
100004a38: 97fff758    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004a3c: 14000031    	b	0x100004b00 <findDoc()+0x5f8>
100004a40: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004a44: f940d000    	ldr	x0, [x0, #0x1a0]
100004a48: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004a4c: 91183421    	add	x1, x1, #0x60d
100004a50: 97fff643    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004a54: f9000fe0    	str	x0, [sp, #0x18]
100004a58: 14000001    	b	0x100004a5c <findDoc()+0x554>
100004a5c: f9400fe0    	ldr	x0, [sp, #0x18]
100004a60: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004a64: 91186021    	add	x1, x1, #0x618
100004a68: 97fff63d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004a6c: 14000001    	b	0x100004a70 <findDoc()+0x568>
100004a70: 52800040    	mov	w0, #0x2                ; =2
100004a74: 9400195c    	bl	0x10000afe4 <_strlen+0x10000afe4>
100004a78: 14000001    	b	0x100004a7c <findDoc()+0x574>
100004a7c: f9402be0    	ldr	x0, [sp, #0x50]
100004a80: 97fffab8    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100004a84: aa0003e1    	mov	x1, x0
100004a88: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004a8c: f940d000    	ldr	x0, [x0, #0x1a0]
100004a90: 940018e9    	bl	0x10000ae34 <_strlen+0x10000ae34>
100004a94: f9000be0    	str	x0, [sp, #0x10]
100004a98: 14000001    	b	0x100004a9c <findDoc()+0x594>
100004a9c: f9400be0    	ldr	x0, [sp, #0x10]
100004aa0: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004aa4: 911c8821    	add	x1, x1, #0x722
100004aa8: 97fff62d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004aac: f90007e0    	str	x0, [sp, #0x8]
100004ab0: 14000001    	b	0x100004ab4 <findDoc()+0x5ac>
100004ab4: f94007e0    	ldr	x0, [sp, #0x8]
100004ab8: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004abc: 91186021    	add	x1, x1, #0x618
100004ac0: 97fff627    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004ac4: 14000001    	b	0x100004ac8 <findDoc()+0x5c0>
100004ac8: 52800028    	mov	w8, #0x1                ; =1
100004acc: 12000108    	and	w8, w8, #0x1
100004ad0: 12000108    	and	w8, w8, #0x1
100004ad4: 381e73a8    	sturb	w8, [x29, #-0x19]
100004ad8: 385e73a8    	ldurb	w8, [x29, #-0x19]
100004adc: 370000a8    	tbnz	w8, #0x0, 0x100004af0 <findDoc()+0x5e8>
100004ae0: 14000001    	b	0x100004ae4 <findDoc()+0x5dc>
100004ae4: f9402be0    	ldr	x0, [sp, #0x50]
100004ae8: 97fff72c    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004aec: 14000001    	b	0x100004af0 <findDoc()+0x5e8>
100004af0: a95b7bfd    	ldp	x29, x30, [sp, #0x1b0]
100004af4: a95a6ffc    	ldp	x28, x27, [sp, #0x1a0]
100004af8: 910703ff    	add	sp, sp, #0x1c0
100004afc: d65f03c0    	ret
100004b00: f9402be0    	ldr	x0, [sp, #0x50]
100004b04: 97fff725    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004b08: 14000001    	b	0x100004b0c <findDoc()+0x604>
100004b0c: f94027e8    	ldr	x8, [sp, #0x48]
100004b10: f9404500    	ldr	x0, [x8, #0x88]
100004b14: 9400186b    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100004b18 <findPDF()>:
100004b18: d10503ff    	sub	sp, sp, #0x140
100004b1c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100004b20: a9137bfd    	stp	x29, x30, [sp, #0x130]
100004b24: 9104c3fd    	add	x29, sp, #0x130
100004b28: d10163a9    	sub	x9, x29, #0x58
100004b2c: f90023e9    	str	x9, [sp, #0x40]
100004b30: aa0803e0    	mov	x0, x8
100004b34: f90027e0    	str	x0, [sp, #0x48]
100004b38: aa0003e8    	mov	x8, x0
100004b3c: f9002128    	str	x8, [x9, #0x40]
100004b40: 52800008    	mov	w8, #0x0                ; =0
100004b44: 12000108    	and	w8, w8, #0x1
100004b48: 12000108    	and	w8, w8, #0x1
100004b4c: 381e73a8    	sturb	w8, [x29, #-0x19]
100004b50: 97fff5f8    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100004b54: d10103a8    	sub	x8, x29, #0x40
100004b58: 97fff519    	bl	0x100001fbc <readDownloadFiles()>
100004b5c: 14000001    	b	0x100004b60 <findPDF()+0x48>
100004b60: f94023e8    	ldr	x8, [sp, #0x40]
100004b64: d10103a9    	sub	x9, x29, #0x40
100004b68: f9001909    	str	x9, [x8, #0x30]
100004b6c: f9401900    	ldr	x0, [x8, #0x30]
100004b70: 97fff974    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100004b74: f94023e8    	ldr	x8, [sp, #0x40]
100004b78: f9000100    	str	x0, [x8]
100004b7c: f9401900    	ldr	x0, [x8, #0x30]
100004b80: 97fff97b    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100004b84: f81a03a0    	stur	x0, [x29, #-0x60]
100004b88: 14000001    	b	0x100004b8c <findPDF()+0x74>
100004b8c: d10163a0    	sub	x0, x29, #0x58
100004b90: d10183a1    	sub	x1, x29, #0x60
100004b94: 97fff981    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100004b98: b9003fe0    	str	w0, [sp, #0x3c]
100004b9c: 14000001    	b	0x100004ba0 <findPDF()+0x88>
100004ba0: b9403fe8    	ldr	w8, [sp, #0x3c]
100004ba4: 370001e8    	tbnz	w8, #0x0, 0x100004be0 <findPDF()+0xc8>
100004ba8: 14000001    	b	0x100004bac <findPDF()+0x94>
100004bac: d10103a0    	sub	x0, x29, #0x40
100004bb0: 97fff6fa    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004bb4: 1400009b    	b	0x100004e20 <findPDF()+0x308>
100004bb8: f94023e9    	ldr	x9, [sp, #0x40]
100004bbc: f9000920    	str	x0, [x9, #0x10]
100004bc0: aa0103e8    	mov	x8, x1
100004bc4: b9000d28    	str	w8, [x9, #0xc]
100004bc8: 140000c6    	b	0x100004ee0 <findPDF()+0x3c8>
100004bcc: f94023e9    	ldr	x9, [sp, #0x40]
100004bd0: f9000920    	str	x0, [x9, #0x10]
100004bd4: aa0103e8    	mov	x8, x1
100004bd8: b9000d28    	str	w8, [x9, #0xc]
100004bdc: 1400008e    	b	0x100004e14 <findPDF()+0x2fc>
100004be0: d10163a0    	sub	x0, x29, #0x58
100004be4: 97fff97a    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100004be8: f9001be0    	str	x0, [sp, #0x30]
100004bec: 14000001    	b	0x100004bf0 <findPDF()+0xd8>
100004bf0: f9401be8    	ldr	x8, [sp, #0x30]
100004bf4: f81983a8    	stur	x8, [x29, #-0x68]
100004bf8: d10203a0    	sub	x0, x29, #0x80
100004bfc: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004c00: 911d7421    	add	x1, x1, #0x75d
100004c04: 97fff5f8    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100004c08: 14000001    	b	0x100004c0c <findPDF()+0xf4>
100004c0c: 910263e8    	add	x8, sp, #0x98
100004c10: d10203a0    	sub	x0, x29, #0x80
100004c14: 97fff459    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004c18: 14000001    	b	0x100004c1c <findPDF()+0x104>
100004c1c: f85983a0    	ldur	x0, [x29, #-0x68]
100004c20: d10203a1    	sub	x1, x29, #0x80
100004c24: d2800002    	mov	x2, #0x0                ; =0
100004c28: f90017e2    	str	x2, [sp, #0x28]
100004c2c: 97fff973    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004c30: f94017e2    	ldr	x2, [sp, #0x28]
100004c34: aa0003e8    	mov	x8, x0
100004c38: b90097e8    	str	w8, [sp, #0x94]
100004c3c: f85983a0    	ldur	x0, [x29, #-0x68]
100004c40: 910263e1    	add	x1, sp, #0x98
100004c44: 97fff96d    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100004c48: aa0003e8    	mov	x8, x0
100004c4c: b90093e8    	str	w8, [sp, #0x90]
100004c50: b98097e8    	ldrsw	x8, [sp, #0x94]
100004c54: b1000508    	adds	x8, x8, #0x1
100004c58: 1a9f17e8    	cset	w8, eq
100004c5c: 5280002a    	mov	w10, #0x1               ; =1
100004c60: 52800009    	mov	w9, #0x0                ; =0
100004c64: 1200012b    	and	w11, w9, #0x1
100004c68: 1200016b    	and	w11, w11, #0x1
100004c6c: 3901dfeb    	strb	w11, [sp, #0x77]
100004c70: 12000129    	and	w9, w9, #0x1
100004c74: 0a0a0129    	and	w9, w9, w10
100004c78: 39015fe9    	strb	w9, [sp, #0x57]
100004c7c: 37000268    	tbnz	w8, #0x0, 0x100004cc8 <findPDF()+0x1b0>
100004c80: 14000001    	b	0x100004c84 <findPDF()+0x16c>
100004c84: f85983a0    	ldur	x0, [x29, #-0x68]
100004c88: b98097e1    	ldrsw	x1, [sp, #0x94]
100004c8c: 9101e3e8    	add	x8, sp, #0x78
100004c90: 92800002    	mov	x2, #-0x1               ; =-1
100004c94: 97fff9e6    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004c98: 14000001    	b	0x100004c9c <findPDF()+0x184>
100004c9c: 52800028    	mov	w8, #0x1                ; =1
100004ca0: 12000108    	and	w8, w8, #0x1
100004ca4: 12000108    	and	w8, w8, #0x1
100004ca8: 3901dfe8    	strb	w8, [sp, #0x77]
100004cac: 9101e3e0    	add	x0, sp, #0x78
100004cb0: d10203a1    	sub	x1, x29, #0x80
100004cb4: 97fff98c    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004cb8: 52800028    	mov	w8, #0x1                ; =1
100004cbc: b90027e8    	str	w8, [sp, #0x24]
100004cc0: 37000360    	tbnz	w0, #0x0, 0x100004d2c <findPDF()+0x214>
100004cc4: 14000001    	b	0x100004cc8 <findPDF()+0x1b0>
100004cc8: b98093e8    	ldrsw	x8, [sp, #0x90]
100004ccc: b1000508    	adds	x8, x8, #0x1
100004cd0: 1a9f17e8    	cset	w8, eq
100004cd4: 52800000    	mov	w0, #0x0                ; =0
100004cd8: b90023e0    	str	w0, [sp, #0x20]
100004cdc: 37000228    	tbnz	w8, #0x0, 0x100004d20 <findPDF()+0x208>
100004ce0: 14000001    	b	0x100004ce4 <findPDF()+0x1cc>
100004ce4: f85983a0    	ldur	x0, [x29, #-0x68]
100004ce8: b98093e1    	ldrsw	x1, [sp, #0x90]
100004cec: 910163e8    	add	x8, sp, #0x58
100004cf0: 92800002    	mov	x2, #-0x1               ; =-1
100004cf4: 97fff9ce    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100004cf8: 14000001    	b	0x100004cfc <findPDF()+0x1e4>
100004cfc: 52800028    	mov	w8, #0x1                ; =1
100004d00: 12000108    	and	w8, w8, #0x1
100004d04: 12000108    	and	w8, w8, #0x1
100004d08: 39015fe8    	strb	w8, [sp, #0x57]
100004d0c: 910163e0    	add	x0, sp, #0x58
100004d10: 910263e1    	add	x1, sp, #0x98
100004d14: 97fff974    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004d18: b90023e0    	str	w0, [sp, #0x20]
100004d1c: 14000001    	b	0x100004d20 <findPDF()+0x208>
100004d20: b94023e8    	ldr	w8, [sp, #0x20]
100004d24: b90027e8    	str	w8, [sp, #0x24]
100004d28: 14000001    	b	0x100004d2c <findPDF()+0x214>
100004d2c: b94027e8    	ldr	w8, [sp, #0x24]
100004d30: b9001fe8    	str	w8, [sp, #0x1c]
100004d34: 39415fe8    	ldrb	w8, [sp, #0x57]
100004d38: 360000a8    	tbz	w8, #0x0, 0x100004d4c <findPDF()+0x234>
100004d3c: 14000001    	b	0x100004d40 <findPDF()+0x228>
100004d40: 910163e0    	add	x0, sp, #0x58
100004d44: 94001827    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004d48: 14000001    	b	0x100004d4c <findPDF()+0x234>
100004d4c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100004d50: 360000a8    	tbz	w8, #0x0, 0x100004d64 <findPDF()+0x24c>
100004d54: 14000001    	b	0x100004d58 <findPDF()+0x240>
100004d58: 9101e3e0    	add	x0, sp, #0x78
100004d5c: 94001821    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004d60: 14000001    	b	0x100004d64 <findPDF()+0x24c>
100004d64: b9401fe8    	ldr	w8, [sp, #0x1c]
100004d68: 36000388    	tbz	w8, #0x0, 0x100004dd8 <findPDF()+0x2c0>
100004d6c: 14000001    	b	0x100004d70 <findPDF()+0x258>
100004d70: f94027e0    	ldr	x0, [sp, #0x48]
100004d74: f85983a1    	ldur	x1, [x29, #-0x68]
100004d78: 97fff65e    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004d7c: 14000001    	b	0x100004d80 <findPDF()+0x268>
100004d80: 14000016    	b	0x100004dd8 <findPDF()+0x2c0>
100004d84: f94023e9    	ldr	x9, [sp, #0x40]
100004d88: f9000920    	str	x0, [x9, #0x10]
100004d8c: aa0103e8    	mov	x8, x1
100004d90: b9000d28    	str	w8, [x9, #0xc]
100004d94: 1400001d    	b	0x100004e08 <findPDF()+0x2f0>
100004d98: f94023e9    	ldr	x9, [sp, #0x40]
100004d9c: f9000920    	str	x0, [x9, #0x10]
100004da0: aa0103e8    	mov	x8, x1
100004da4: b9000d28    	str	w8, [x9, #0xc]
100004da8: 14000015    	b	0x100004dfc <findPDF()+0x2e4>
100004dac: f94023e9    	ldr	x9, [sp, #0x40]
100004db0: f9000920    	str	x0, [x9, #0x10]
100004db4: aa0103e8    	mov	x8, x1
100004db8: b9000d28    	str	w8, [x9, #0xc]
100004dbc: 3941dfe8    	ldrb	w8, [sp, #0x77]
100004dc0: 360000a8    	tbz	w8, #0x0, 0x100004dd4 <findPDF()+0x2bc>
100004dc4: 14000001    	b	0x100004dc8 <findPDF()+0x2b0>
100004dc8: 9101e3e0    	add	x0, sp, #0x78
100004dcc: 94001805    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004dd0: 14000001    	b	0x100004dd4 <findPDF()+0x2bc>
100004dd4: 1400000a    	b	0x100004dfc <findPDF()+0x2e4>
100004dd8: 910263e0    	add	x0, sp, #0x98
100004ddc: 94001801    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004de0: d10203a0    	sub	x0, x29, #0x80
100004de4: 940017ff    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004de8: 14000001    	b	0x100004dec <findPDF()+0x2d4>
100004dec: d10163a0    	sub	x0, x29, #0x58
100004df0: 97fff9d4    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100004df4: 14000001    	b	0x100004df8 <findPDF()+0x2e0>
100004df8: 17ffff65    	b	0x100004b8c <findPDF()+0x74>
100004dfc: 910263e0    	add	x0, sp, #0x98
100004e00: 940017f8    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004e04: 14000001    	b	0x100004e08 <findPDF()+0x2f0>
100004e08: d10203a0    	sub	x0, x29, #0x80
100004e0c: 940017f5    	bl	0x10000ade0 <_strlen+0x10000ade0>
100004e10: 14000001    	b	0x100004e14 <findPDF()+0x2fc>
100004e14: d10103a0    	sub	x0, x29, #0x40
100004e18: 97fff660    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004e1c: 14000031    	b	0x100004ee0 <findPDF()+0x3c8>
100004e20: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004e24: f940d000    	ldr	x0, [x0, #0x1a0]
100004e28: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004e2c: 91183421    	add	x1, x1, #0x60d
100004e30: 97fff54b    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004e34: f9000be0    	str	x0, [sp, #0x10]
100004e38: 14000001    	b	0x100004e3c <findPDF()+0x324>
100004e3c: f9400be0    	ldr	x0, [sp, #0x10]
100004e40: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004e44: 91186021    	add	x1, x1, #0x618
100004e48: 97fff545    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004e4c: 14000001    	b	0x100004e50 <findPDF()+0x338>
100004e50: 52800040    	mov	w0, #0x2                ; =2
100004e54: 94001864    	bl	0x10000afe4 <_strlen+0x10000afe4>
100004e58: 14000001    	b	0x100004e5c <findPDF()+0x344>
100004e5c: f94027e0    	ldr	x0, [sp, #0x48]
100004e60: 97fff9c0    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100004e64: aa0003e1    	mov	x1, x0
100004e68: 90000040    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100004e6c: f940d000    	ldr	x0, [x0, #0x1a0]
100004e70: 940017f1    	bl	0x10000ae34 <_strlen+0x10000ae34>
100004e74: f90007e0    	str	x0, [sp, #0x8]
100004e78: 14000001    	b	0x100004e7c <findPDF()+0x364>
100004e7c: f94007e0    	ldr	x0, [sp, #0x8]
100004e80: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004e84: 911d8821    	add	x1, x1, #0x762
100004e88: 97fff535    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004e8c: f90003e0    	str	x0, [sp]
100004e90: 14000001    	b	0x100004e94 <findPDF()+0x37c>
100004e94: f94003e0    	ldr	x0, [sp]
100004e98: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004e9c: 91186021    	add	x1, x1, #0x618
100004ea0: 97fff52f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100004ea4: 14000001    	b	0x100004ea8 <findPDF()+0x390>
100004ea8: 52800028    	mov	w8, #0x1                ; =1
100004eac: 12000108    	and	w8, w8, #0x1
100004eb0: 12000108    	and	w8, w8, #0x1
100004eb4: 381e73a8    	sturb	w8, [x29, #-0x19]
100004eb8: 385e73a8    	ldurb	w8, [x29, #-0x19]
100004ebc: 370000a8    	tbnz	w8, #0x0, 0x100004ed0 <findPDF()+0x3b8>
100004ec0: 14000001    	b	0x100004ec4 <findPDF()+0x3ac>
100004ec4: f94027e0    	ldr	x0, [sp, #0x48]
100004ec8: 97fff634    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004ecc: 14000001    	b	0x100004ed0 <findPDF()+0x3b8>
100004ed0: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100004ed4: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100004ed8: 910503ff    	add	sp, sp, #0x140
100004edc: d65f03c0    	ret
100004ee0: f94027e0    	ldr	x0, [sp, #0x48]
100004ee4: 97fff62d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004ee8: 14000001    	b	0x100004eec <findPDF()+0x3d4>
100004eec: f94023e8    	ldr	x8, [sp, #0x40]
100004ef0: f9400900    	ldr	x0, [x8, #0x10]
100004ef4: 94001773    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100004ef8 <findTXT()>:
100004ef8: d10503ff    	sub	sp, sp, #0x140
100004efc: a9126ffc    	stp	x28, x27, [sp, #0x120]
100004f00: a9137bfd    	stp	x29, x30, [sp, #0x130]
100004f04: 9104c3fd    	add	x29, sp, #0x130
100004f08: d10163a9    	sub	x9, x29, #0x58
100004f0c: f90023e9    	str	x9, [sp, #0x40]
100004f10: aa0803e0    	mov	x0, x8
100004f14: f90027e0    	str	x0, [sp, #0x48]
100004f18: aa0003e8    	mov	x8, x0
100004f1c: f9002128    	str	x8, [x9, #0x40]
100004f20: 52800008    	mov	w8, #0x0                ; =0
100004f24: 12000108    	and	w8, w8, #0x1
100004f28: 12000108    	and	w8, w8, #0x1
100004f2c: 381e73a8    	sturb	w8, [x29, #-0x19]
100004f30: 97fff500    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100004f34: d10103a8    	sub	x8, x29, #0x40
100004f38: 97fff421    	bl	0x100001fbc <readDownloadFiles()>
100004f3c: 14000001    	b	0x100004f40 <findTXT()+0x48>
100004f40: f94023e8    	ldr	x8, [sp, #0x40]
100004f44: d10103a9    	sub	x9, x29, #0x40
100004f48: f9001909    	str	x9, [x8, #0x30]
100004f4c: f9401900    	ldr	x0, [x8, #0x30]
100004f50: 97fff87c    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100004f54: f94023e8    	ldr	x8, [sp, #0x40]
100004f58: f9000100    	str	x0, [x8]
100004f5c: f9401900    	ldr	x0, [x8, #0x30]
100004f60: 97fff883    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100004f64: f81a03a0    	stur	x0, [x29, #-0x60]
100004f68: 14000001    	b	0x100004f6c <findTXT()+0x74>
100004f6c: d10163a0    	sub	x0, x29, #0x58
100004f70: d10183a1    	sub	x1, x29, #0x60
100004f74: 97fff889    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100004f78: b9003fe0    	str	w0, [sp, #0x3c]
100004f7c: 14000001    	b	0x100004f80 <findTXT()+0x88>
100004f80: b9403fe8    	ldr	w8, [sp, #0x3c]
100004f84: 370001e8    	tbnz	w8, #0x0, 0x100004fc0 <findTXT()+0xc8>
100004f88: 14000001    	b	0x100004f8c <findTXT()+0x94>
100004f8c: d10103a0    	sub	x0, x29, #0x40
100004f90: 97fff602    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100004f94: 1400009b    	b	0x100005200 <findTXT()+0x308>
100004f98: f94023e9    	ldr	x9, [sp, #0x40]
100004f9c: f9000920    	str	x0, [x9, #0x10]
100004fa0: aa0103e8    	mov	x8, x1
100004fa4: b9000d28    	str	w8, [x9, #0xc]
100004fa8: 140000c6    	b	0x1000052c0 <findTXT()+0x3c8>
100004fac: f94023e9    	ldr	x9, [sp, #0x40]
100004fb0: f9000920    	str	x0, [x9, #0x10]
100004fb4: aa0103e8    	mov	x8, x1
100004fb8: b9000d28    	str	w8, [x9, #0xc]
100004fbc: 1400008e    	b	0x1000051f4 <findTXT()+0x2fc>
100004fc0: d10163a0    	sub	x0, x29, #0x58
100004fc4: 97fff882    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100004fc8: f9001be0    	str	x0, [sp, #0x30]
100004fcc: 14000001    	b	0x100004fd0 <findTXT()+0xd8>
100004fd0: f9401be8    	ldr	x8, [sp, #0x30]
100004fd4: f81983a8    	stur	x8, [x29, #-0x68]
100004fd8: d10203a0    	sub	x0, x29, #0x80
100004fdc: f0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100004fe0: 911e5821    	add	x1, x1, #0x796
100004fe4: 97fff500    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100004fe8: 14000001    	b	0x100004fec <findTXT()+0xf4>
100004fec: 910263e8    	add	x8, sp, #0x98
100004ff0: d10203a0    	sub	x0, x29, #0x80
100004ff4: 97fff361    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100004ff8: 14000001    	b	0x100004ffc <findTXT()+0x104>
100004ffc: f85983a0    	ldur	x0, [x29, #-0x68]
100005000: d10203a1    	sub	x1, x29, #0x80
100005004: d2800002    	mov	x2, #0x0                ; =0
100005008: f90017e2    	str	x2, [sp, #0x28]
10000500c: 97fff87b    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005010: f94017e2    	ldr	x2, [sp, #0x28]
100005014: aa0003e8    	mov	x8, x0
100005018: b90097e8    	str	w8, [sp, #0x94]
10000501c: f85983a0    	ldur	x0, [x29, #-0x68]
100005020: 910263e1    	add	x1, sp, #0x98
100005024: 97fff875    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005028: aa0003e8    	mov	x8, x0
10000502c: b90093e8    	str	w8, [sp, #0x90]
100005030: b98097e8    	ldrsw	x8, [sp, #0x94]
100005034: b1000508    	adds	x8, x8, #0x1
100005038: 1a9f17e8    	cset	w8, eq
10000503c: 5280002a    	mov	w10, #0x1               ; =1
100005040: 52800009    	mov	w9, #0x0                ; =0
100005044: 1200012b    	and	w11, w9, #0x1
100005048: 1200016b    	and	w11, w11, #0x1
10000504c: 3901dfeb    	strb	w11, [sp, #0x77]
100005050: 12000129    	and	w9, w9, #0x1
100005054: 0a0a0129    	and	w9, w9, w10
100005058: 39015fe9    	strb	w9, [sp, #0x57]
10000505c: 37000268    	tbnz	w8, #0x0, 0x1000050a8 <findTXT()+0x1b0>
100005060: 14000001    	b	0x100005064 <findTXT()+0x16c>
100005064: f85983a0    	ldur	x0, [x29, #-0x68]
100005068: b98097e1    	ldrsw	x1, [sp, #0x94]
10000506c: 9101e3e8    	add	x8, sp, #0x78
100005070: 92800002    	mov	x2, #-0x1               ; =-1
100005074: 97fff8ee    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005078: 14000001    	b	0x10000507c <findTXT()+0x184>
10000507c: 52800028    	mov	w8, #0x1                ; =1
100005080: 12000108    	and	w8, w8, #0x1
100005084: 12000108    	and	w8, w8, #0x1
100005088: 3901dfe8    	strb	w8, [sp, #0x77]
10000508c: 9101e3e0    	add	x0, sp, #0x78
100005090: d10203a1    	sub	x1, x29, #0x80
100005094: 97fff894    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005098: 52800028    	mov	w8, #0x1                ; =1
10000509c: b90027e8    	str	w8, [sp, #0x24]
1000050a0: 37000360    	tbnz	w0, #0x0, 0x10000510c <findTXT()+0x214>
1000050a4: 14000001    	b	0x1000050a8 <findTXT()+0x1b0>
1000050a8: b98093e8    	ldrsw	x8, [sp, #0x90]
1000050ac: b1000508    	adds	x8, x8, #0x1
1000050b0: 1a9f17e8    	cset	w8, eq
1000050b4: 52800000    	mov	w0, #0x0                ; =0
1000050b8: b90023e0    	str	w0, [sp, #0x20]
1000050bc: 37000228    	tbnz	w8, #0x0, 0x100005100 <findTXT()+0x208>
1000050c0: 14000001    	b	0x1000050c4 <findTXT()+0x1cc>
1000050c4: f85983a0    	ldur	x0, [x29, #-0x68]
1000050c8: b98093e1    	ldrsw	x1, [sp, #0x90]
1000050cc: 910163e8    	add	x8, sp, #0x58
1000050d0: 92800002    	mov	x2, #-0x1               ; =-1
1000050d4: 97fff8d6    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
1000050d8: 14000001    	b	0x1000050dc <findTXT()+0x1e4>
1000050dc: 52800028    	mov	w8, #0x1                ; =1
1000050e0: 12000108    	and	w8, w8, #0x1
1000050e4: 12000108    	and	w8, w8, #0x1
1000050e8: 39015fe8    	strb	w8, [sp, #0x57]
1000050ec: 910163e0    	add	x0, sp, #0x58
1000050f0: 910263e1    	add	x1, sp, #0x98
1000050f4: 97fff87c    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000050f8: b90023e0    	str	w0, [sp, #0x20]
1000050fc: 14000001    	b	0x100005100 <findTXT()+0x208>
100005100: b94023e8    	ldr	w8, [sp, #0x20]
100005104: b90027e8    	str	w8, [sp, #0x24]
100005108: 14000001    	b	0x10000510c <findTXT()+0x214>
10000510c: b94027e8    	ldr	w8, [sp, #0x24]
100005110: b9001fe8    	str	w8, [sp, #0x1c]
100005114: 39415fe8    	ldrb	w8, [sp, #0x57]
100005118: 360000a8    	tbz	w8, #0x0, 0x10000512c <findTXT()+0x234>
10000511c: 14000001    	b	0x100005120 <findTXT()+0x228>
100005120: 910163e0    	add	x0, sp, #0x58
100005124: 9400172f    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005128: 14000001    	b	0x10000512c <findTXT()+0x234>
10000512c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005130: 360000a8    	tbz	w8, #0x0, 0x100005144 <findTXT()+0x24c>
100005134: 14000001    	b	0x100005138 <findTXT()+0x240>
100005138: 9101e3e0    	add	x0, sp, #0x78
10000513c: 94001729    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005140: 14000001    	b	0x100005144 <findTXT()+0x24c>
100005144: b9401fe8    	ldr	w8, [sp, #0x1c]
100005148: 36000388    	tbz	w8, #0x0, 0x1000051b8 <findTXT()+0x2c0>
10000514c: 14000001    	b	0x100005150 <findTXT()+0x258>
100005150: f94027e0    	ldr	x0, [sp, #0x48]
100005154: f85983a1    	ldur	x1, [x29, #-0x68]
100005158: 97fff566    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
10000515c: 14000001    	b	0x100005160 <findTXT()+0x268>
100005160: 14000016    	b	0x1000051b8 <findTXT()+0x2c0>
100005164: f94023e9    	ldr	x9, [sp, #0x40]
100005168: f9000920    	str	x0, [x9, #0x10]
10000516c: aa0103e8    	mov	x8, x1
100005170: b9000d28    	str	w8, [x9, #0xc]
100005174: 1400001d    	b	0x1000051e8 <findTXT()+0x2f0>
100005178: f94023e9    	ldr	x9, [sp, #0x40]
10000517c: f9000920    	str	x0, [x9, #0x10]
100005180: aa0103e8    	mov	x8, x1
100005184: b9000d28    	str	w8, [x9, #0xc]
100005188: 14000015    	b	0x1000051dc <findTXT()+0x2e4>
10000518c: f94023e9    	ldr	x9, [sp, #0x40]
100005190: f9000920    	str	x0, [x9, #0x10]
100005194: aa0103e8    	mov	x8, x1
100005198: b9000d28    	str	w8, [x9, #0xc]
10000519c: 3941dfe8    	ldrb	w8, [sp, #0x77]
1000051a0: 360000a8    	tbz	w8, #0x0, 0x1000051b4 <findTXT()+0x2bc>
1000051a4: 14000001    	b	0x1000051a8 <findTXT()+0x2b0>
1000051a8: 9101e3e0    	add	x0, sp, #0x78
1000051ac: 9400170d    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000051b0: 14000001    	b	0x1000051b4 <findTXT()+0x2bc>
1000051b4: 1400000a    	b	0x1000051dc <findTXT()+0x2e4>
1000051b8: 910263e0    	add	x0, sp, #0x98
1000051bc: 94001709    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000051c0: d10203a0    	sub	x0, x29, #0x80
1000051c4: 94001707    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000051c8: 14000001    	b	0x1000051cc <findTXT()+0x2d4>
1000051cc: d10163a0    	sub	x0, x29, #0x58
1000051d0: 97fff8dc    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
1000051d4: 14000001    	b	0x1000051d8 <findTXT()+0x2e0>
1000051d8: 17ffff65    	b	0x100004f6c <findTXT()+0x74>
1000051dc: 910263e0    	add	x0, sp, #0x98
1000051e0: 94001700    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000051e4: 14000001    	b	0x1000051e8 <findTXT()+0x2f0>
1000051e8: d10203a0    	sub	x0, x29, #0x80
1000051ec: 940016fd    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000051f0: 14000001    	b	0x1000051f4 <findTXT()+0x2fc>
1000051f4: d10103a0    	sub	x0, x29, #0x40
1000051f8: 97fff568    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000051fc: 14000031    	b	0x1000052c0 <findTXT()+0x3c8>
100005200: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100005204: f940d000    	ldr	x0, [x0, #0x1a0]
100005208: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000520c: 91183421    	add	x1, x1, #0x60d
100005210: 97fff453    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005214: f9000be0    	str	x0, [sp, #0x10]
100005218: 14000001    	b	0x10000521c <findTXT()+0x324>
10000521c: f9400be0    	ldr	x0, [sp, #0x10]
100005220: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005224: 91186021    	add	x1, x1, #0x618
100005228: 97fff44d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000522c: 14000001    	b	0x100005230 <findTXT()+0x338>
100005230: 52800040    	mov	w0, #0x2                ; =2
100005234: 9400176c    	bl	0x10000afe4 <_strlen+0x10000afe4>
100005238: 14000001    	b	0x10000523c <findTXT()+0x344>
10000523c: f94027e0    	ldr	x0, [sp, #0x48]
100005240: 97fff8c8    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100005244: aa0003e1    	mov	x1, x0
100005248: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000524c: f940d000    	ldr	x0, [x0, #0x1a0]
100005250: 940016f9    	bl	0x10000ae34 <_strlen+0x10000ae34>
100005254: f90007e0    	str	x0, [sp, #0x8]
100005258: 14000001    	b	0x10000525c <findTXT()+0x364>
10000525c: f94007e0    	ldr	x0, [sp, #0x8]
100005260: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005264: 911e6c21    	add	x1, x1, #0x79b
100005268: 97fff43d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000526c: f90003e0    	str	x0, [sp]
100005270: 14000001    	b	0x100005274 <findTXT()+0x37c>
100005274: f94003e0    	ldr	x0, [sp]
100005278: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000527c: 91186021    	add	x1, x1, #0x618
100005280: 97fff437    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005284: 14000001    	b	0x100005288 <findTXT()+0x390>
100005288: 52800028    	mov	w8, #0x1                ; =1
10000528c: 12000108    	and	w8, w8, #0x1
100005290: 12000108    	and	w8, w8, #0x1
100005294: 381e73a8    	sturb	w8, [x29, #-0x19]
100005298: 385e73a8    	ldurb	w8, [x29, #-0x19]
10000529c: 370000a8    	tbnz	w8, #0x0, 0x1000052b0 <findTXT()+0x3b8>
1000052a0: 14000001    	b	0x1000052a4 <findTXT()+0x3ac>
1000052a4: f94027e0    	ldr	x0, [sp, #0x48]
1000052a8: 97fff53c    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000052ac: 14000001    	b	0x1000052b0 <findTXT()+0x3b8>
1000052b0: a9537bfd    	ldp	x29, x30, [sp, #0x130]
1000052b4: a9526ffc    	ldp	x28, x27, [sp, #0x120]
1000052b8: 910503ff    	add	sp, sp, #0x140
1000052bc: d65f03c0    	ret
1000052c0: f94027e0    	ldr	x0, [sp, #0x48]
1000052c4: 97fff535    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000052c8: 14000001    	b	0x1000052cc <findTXT()+0x3d4>
1000052cc: f94023e8    	ldr	x8, [sp, #0x40]
1000052d0: f9400900    	ldr	x0, [x8, #0x10]
1000052d4: 9400167b    	bl	0x10000acc0 <_strlen+0x10000acc0>

00000001000052d8 <findMP4()>:
1000052d8: d10503ff    	sub	sp, sp, #0x140
1000052dc: a9126ffc    	stp	x28, x27, [sp, #0x120]
1000052e0: a9137bfd    	stp	x29, x30, [sp, #0x130]
1000052e4: 9104c3fd    	add	x29, sp, #0x130
1000052e8: d10163a9    	sub	x9, x29, #0x58
1000052ec: f90023e9    	str	x9, [sp, #0x40]
1000052f0: aa0803e0    	mov	x0, x8
1000052f4: f90027e0    	str	x0, [sp, #0x48]
1000052f8: aa0003e8    	mov	x8, x0
1000052fc: f9002128    	str	x8, [x9, #0x40]
100005300: 52800008    	mov	w8, #0x0                ; =0
100005304: 12000108    	and	w8, w8, #0x1
100005308: 12000108    	and	w8, w8, #0x1
10000530c: 381e73a8    	sturb	w8, [x29, #-0x19]
100005310: 97fff408    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100005314: d10103a8    	sub	x8, x29, #0x40
100005318: 97fff329    	bl	0x100001fbc <readDownloadFiles()>
10000531c: 14000001    	b	0x100005320 <findMP4()+0x48>
100005320: f94023e8    	ldr	x8, [sp, #0x40]
100005324: d10103a9    	sub	x9, x29, #0x40
100005328: f9001909    	str	x9, [x8, #0x30]
10000532c: f9401900    	ldr	x0, [x8, #0x30]
100005330: 97fff784    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100005334: f94023e8    	ldr	x8, [sp, #0x40]
100005338: f9000100    	str	x0, [x8]
10000533c: f9401900    	ldr	x0, [x8, #0x30]
100005340: 97fff78b    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100005344: f81a03a0    	stur	x0, [x29, #-0x60]
100005348: 14000001    	b	0x10000534c <findMP4()+0x74>
10000534c: d10163a0    	sub	x0, x29, #0x58
100005350: d10183a1    	sub	x1, x29, #0x60
100005354: 97fff791    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100005358: b9003fe0    	str	w0, [sp, #0x3c]
10000535c: 14000001    	b	0x100005360 <findMP4()+0x88>
100005360: b9403fe8    	ldr	w8, [sp, #0x3c]
100005364: 370001e8    	tbnz	w8, #0x0, 0x1000053a0 <findMP4()+0xc8>
100005368: 14000001    	b	0x10000536c <findMP4()+0x94>
10000536c: d10103a0    	sub	x0, x29, #0x40
100005370: 97fff50a    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005374: 1400009b    	b	0x1000055e0 <findMP4()+0x308>
100005378: f94023e9    	ldr	x9, [sp, #0x40]
10000537c: f9000920    	str	x0, [x9, #0x10]
100005380: aa0103e8    	mov	x8, x1
100005384: b9000d28    	str	w8, [x9, #0xc]
100005388: 140000c6    	b	0x1000056a0 <findMP4()+0x3c8>
10000538c: f94023e9    	ldr	x9, [sp, #0x40]
100005390: f9000920    	str	x0, [x9, #0x10]
100005394: aa0103e8    	mov	x8, x1
100005398: b9000d28    	str	w8, [x9, #0xc]
10000539c: 1400008e    	b	0x1000055d4 <findMP4()+0x2fc>
1000053a0: d10163a0    	sub	x0, x29, #0x58
1000053a4: 97fff78a    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
1000053a8: f9001be0    	str	x0, [sp, #0x30]
1000053ac: 14000001    	b	0x1000053b0 <findMP4()+0xd8>
1000053b0: f9401be8    	ldr	x8, [sp, #0x30]
1000053b4: f81983a8    	stur	x8, [x29, #-0x68]
1000053b8: d10203a0    	sub	x0, x29, #0x80
1000053bc: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000053c0: 911f3c21    	add	x1, x1, #0x7cf
1000053c4: 97fff408    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
1000053c8: 14000001    	b	0x1000053cc <findMP4()+0xf4>
1000053cc: 910263e8    	add	x8, sp, #0x98
1000053d0: d10203a0    	sub	x0, x29, #0x80
1000053d4: 97fff269    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000053d8: 14000001    	b	0x1000053dc <findMP4()+0x104>
1000053dc: f85983a0    	ldur	x0, [x29, #-0x68]
1000053e0: d10203a1    	sub	x1, x29, #0x80
1000053e4: d2800002    	mov	x2, #0x0                ; =0
1000053e8: f90017e2    	str	x2, [sp, #0x28]
1000053ec: 97fff783    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000053f0: f94017e2    	ldr	x2, [sp, #0x28]
1000053f4: aa0003e8    	mov	x8, x0
1000053f8: b90097e8    	str	w8, [sp, #0x94]
1000053fc: f85983a0    	ldur	x0, [x29, #-0x68]
100005400: 910263e1    	add	x1, sp, #0x98
100005404: 97fff77d    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005408: aa0003e8    	mov	x8, x0
10000540c: b90093e8    	str	w8, [sp, #0x90]
100005410: b98097e8    	ldrsw	x8, [sp, #0x94]
100005414: b1000508    	adds	x8, x8, #0x1
100005418: 1a9f17e8    	cset	w8, eq
10000541c: 5280002a    	mov	w10, #0x1               ; =1
100005420: 52800009    	mov	w9, #0x0                ; =0
100005424: 1200012b    	and	w11, w9, #0x1
100005428: 1200016b    	and	w11, w11, #0x1
10000542c: 3901dfeb    	strb	w11, [sp, #0x77]
100005430: 12000129    	and	w9, w9, #0x1
100005434: 0a0a0129    	and	w9, w9, w10
100005438: 39015fe9    	strb	w9, [sp, #0x57]
10000543c: 37000268    	tbnz	w8, #0x0, 0x100005488 <findMP4()+0x1b0>
100005440: 14000001    	b	0x100005444 <findMP4()+0x16c>
100005444: f85983a0    	ldur	x0, [x29, #-0x68]
100005448: b98097e1    	ldrsw	x1, [sp, #0x94]
10000544c: 9101e3e8    	add	x8, sp, #0x78
100005450: 92800002    	mov	x2, #-0x1               ; =-1
100005454: 97fff7f6    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005458: 14000001    	b	0x10000545c <findMP4()+0x184>
10000545c: 52800028    	mov	w8, #0x1                ; =1
100005460: 12000108    	and	w8, w8, #0x1
100005464: 12000108    	and	w8, w8, #0x1
100005468: 3901dfe8    	strb	w8, [sp, #0x77]
10000546c: 9101e3e0    	add	x0, sp, #0x78
100005470: d10203a1    	sub	x1, x29, #0x80
100005474: 97fff79c    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005478: 52800028    	mov	w8, #0x1                ; =1
10000547c: b90027e8    	str	w8, [sp, #0x24]
100005480: 37000360    	tbnz	w0, #0x0, 0x1000054ec <findMP4()+0x214>
100005484: 14000001    	b	0x100005488 <findMP4()+0x1b0>
100005488: b98093e8    	ldrsw	x8, [sp, #0x90]
10000548c: b1000508    	adds	x8, x8, #0x1
100005490: 1a9f17e8    	cset	w8, eq
100005494: 52800000    	mov	w0, #0x0                ; =0
100005498: b90023e0    	str	w0, [sp, #0x20]
10000549c: 37000228    	tbnz	w8, #0x0, 0x1000054e0 <findMP4()+0x208>
1000054a0: 14000001    	b	0x1000054a4 <findMP4()+0x1cc>
1000054a4: f85983a0    	ldur	x0, [x29, #-0x68]
1000054a8: b98093e1    	ldrsw	x1, [sp, #0x90]
1000054ac: 910163e8    	add	x8, sp, #0x58
1000054b0: 92800002    	mov	x2, #-0x1               ; =-1
1000054b4: 97fff7de    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
1000054b8: 14000001    	b	0x1000054bc <findMP4()+0x1e4>
1000054bc: 52800028    	mov	w8, #0x1                ; =1
1000054c0: 12000108    	and	w8, w8, #0x1
1000054c4: 12000108    	and	w8, w8, #0x1
1000054c8: 39015fe8    	strb	w8, [sp, #0x57]
1000054cc: 910163e0    	add	x0, sp, #0x58
1000054d0: 910263e1    	add	x1, sp, #0x98
1000054d4: 97fff784    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000054d8: b90023e0    	str	w0, [sp, #0x20]
1000054dc: 14000001    	b	0x1000054e0 <findMP4()+0x208>
1000054e0: b94023e8    	ldr	w8, [sp, #0x20]
1000054e4: b90027e8    	str	w8, [sp, #0x24]
1000054e8: 14000001    	b	0x1000054ec <findMP4()+0x214>
1000054ec: b94027e8    	ldr	w8, [sp, #0x24]
1000054f0: b9001fe8    	str	w8, [sp, #0x1c]
1000054f4: 39415fe8    	ldrb	w8, [sp, #0x57]
1000054f8: 360000a8    	tbz	w8, #0x0, 0x10000550c <findMP4()+0x234>
1000054fc: 14000001    	b	0x100005500 <findMP4()+0x228>
100005500: 910163e0    	add	x0, sp, #0x58
100005504: 94001637    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005508: 14000001    	b	0x10000550c <findMP4()+0x234>
10000550c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005510: 360000a8    	tbz	w8, #0x0, 0x100005524 <findMP4()+0x24c>
100005514: 14000001    	b	0x100005518 <findMP4()+0x240>
100005518: 9101e3e0    	add	x0, sp, #0x78
10000551c: 94001631    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005520: 14000001    	b	0x100005524 <findMP4()+0x24c>
100005524: b9401fe8    	ldr	w8, [sp, #0x1c]
100005528: 36000388    	tbz	w8, #0x0, 0x100005598 <findMP4()+0x2c0>
10000552c: 14000001    	b	0x100005530 <findMP4()+0x258>
100005530: f94027e0    	ldr	x0, [sp, #0x48]
100005534: f85983a1    	ldur	x1, [x29, #-0x68]
100005538: 97fff46e    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
10000553c: 14000001    	b	0x100005540 <findMP4()+0x268>
100005540: 14000016    	b	0x100005598 <findMP4()+0x2c0>
100005544: f94023e9    	ldr	x9, [sp, #0x40]
100005548: f9000920    	str	x0, [x9, #0x10]
10000554c: aa0103e8    	mov	x8, x1
100005550: b9000d28    	str	w8, [x9, #0xc]
100005554: 1400001d    	b	0x1000055c8 <findMP4()+0x2f0>
100005558: f94023e9    	ldr	x9, [sp, #0x40]
10000555c: f9000920    	str	x0, [x9, #0x10]
100005560: aa0103e8    	mov	x8, x1
100005564: b9000d28    	str	w8, [x9, #0xc]
100005568: 14000015    	b	0x1000055bc <findMP4()+0x2e4>
10000556c: f94023e9    	ldr	x9, [sp, #0x40]
100005570: f9000920    	str	x0, [x9, #0x10]
100005574: aa0103e8    	mov	x8, x1
100005578: b9000d28    	str	w8, [x9, #0xc]
10000557c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005580: 360000a8    	tbz	w8, #0x0, 0x100005594 <findMP4()+0x2bc>
100005584: 14000001    	b	0x100005588 <findMP4()+0x2b0>
100005588: 9101e3e0    	add	x0, sp, #0x78
10000558c: 94001615    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005590: 14000001    	b	0x100005594 <findMP4()+0x2bc>
100005594: 1400000a    	b	0x1000055bc <findMP4()+0x2e4>
100005598: 910263e0    	add	x0, sp, #0x98
10000559c: 94001611    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000055a0: d10203a0    	sub	x0, x29, #0x80
1000055a4: 9400160f    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000055a8: 14000001    	b	0x1000055ac <findMP4()+0x2d4>
1000055ac: d10163a0    	sub	x0, x29, #0x58
1000055b0: 97fff7e4    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
1000055b4: 14000001    	b	0x1000055b8 <findMP4()+0x2e0>
1000055b8: 17ffff65    	b	0x10000534c <findMP4()+0x74>
1000055bc: 910263e0    	add	x0, sp, #0x98
1000055c0: 94001608    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000055c4: 14000001    	b	0x1000055c8 <findMP4()+0x2f0>
1000055c8: d10203a0    	sub	x0, x29, #0x80
1000055cc: 94001605    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000055d0: 14000001    	b	0x1000055d4 <findMP4()+0x2fc>
1000055d4: d10103a0    	sub	x0, x29, #0x40
1000055d8: 97fff470    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000055dc: 14000031    	b	0x1000056a0 <findMP4()+0x3c8>
1000055e0: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000055e4: f940d000    	ldr	x0, [x0, #0x1a0]
1000055e8: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000055ec: 91183421    	add	x1, x1, #0x60d
1000055f0: 97fff35b    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000055f4: f9000be0    	str	x0, [sp, #0x10]
1000055f8: 14000001    	b	0x1000055fc <findMP4()+0x324>
1000055fc: f9400be0    	ldr	x0, [sp, #0x10]
100005600: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005604: 91186021    	add	x1, x1, #0x618
100005608: 97fff355    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000560c: 14000001    	b	0x100005610 <findMP4()+0x338>
100005610: 52800040    	mov	w0, #0x2                ; =2
100005614: 94001674    	bl	0x10000afe4 <_strlen+0x10000afe4>
100005618: 14000001    	b	0x10000561c <findMP4()+0x344>
10000561c: f94027e0    	ldr	x0, [sp, #0x48]
100005620: 97fff7d0    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100005624: aa0003e1    	mov	x1, x0
100005628: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000562c: f940d000    	ldr	x0, [x0, #0x1a0]
100005630: 94001601    	bl	0x10000ae34 <_strlen+0x10000ae34>
100005634: f90007e0    	str	x0, [sp, #0x8]
100005638: 14000001    	b	0x10000563c <findMP4()+0x364>
10000563c: f94007e0    	ldr	x0, [sp, #0x8]
100005640: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005644: 911f5021    	add	x1, x1, #0x7d4
100005648: 97fff345    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000564c: f90003e0    	str	x0, [sp]
100005650: 14000001    	b	0x100005654 <findMP4()+0x37c>
100005654: f94003e0    	ldr	x0, [sp]
100005658: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000565c: 91186021    	add	x1, x1, #0x618
100005660: 97fff33f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005664: 14000001    	b	0x100005668 <findMP4()+0x390>
100005668: 52800028    	mov	w8, #0x1                ; =1
10000566c: 12000108    	and	w8, w8, #0x1
100005670: 12000108    	and	w8, w8, #0x1
100005674: 381e73a8    	sturb	w8, [x29, #-0x19]
100005678: 385e73a8    	ldurb	w8, [x29, #-0x19]
10000567c: 370000a8    	tbnz	w8, #0x0, 0x100005690 <findMP4()+0x3b8>
100005680: 14000001    	b	0x100005684 <findMP4()+0x3ac>
100005684: f94027e0    	ldr	x0, [sp, #0x48]
100005688: 97fff444    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000568c: 14000001    	b	0x100005690 <findMP4()+0x3b8>
100005690: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100005694: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100005698: 910503ff    	add	sp, sp, #0x140
10000569c: d65f03c0    	ret
1000056a0: f94027e0    	ldr	x0, [sp, #0x48]
1000056a4: 97fff43d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000056a8: 14000001    	b	0x1000056ac <findMP4()+0x3d4>
1000056ac: f94023e8    	ldr	x8, [sp, #0x40]
1000056b0: f9400900    	ldr	x0, [x8, #0x10]
1000056b4: 94001583    	bl	0x10000acc0 <_strlen+0x10000acc0>

00000001000056b8 <findMOV()>:
1000056b8: d10503ff    	sub	sp, sp, #0x140
1000056bc: a9126ffc    	stp	x28, x27, [sp, #0x120]
1000056c0: a9137bfd    	stp	x29, x30, [sp, #0x130]
1000056c4: 9104c3fd    	add	x29, sp, #0x130
1000056c8: d10163a9    	sub	x9, x29, #0x58
1000056cc: f90023e9    	str	x9, [sp, #0x40]
1000056d0: aa0803e0    	mov	x0, x8
1000056d4: f90027e0    	str	x0, [sp, #0x48]
1000056d8: aa0003e8    	mov	x8, x0
1000056dc: f9002128    	str	x8, [x9, #0x40]
1000056e0: 52800008    	mov	w8, #0x0                ; =0
1000056e4: 12000108    	and	w8, w8, #0x1
1000056e8: 12000108    	and	w8, w8, #0x1
1000056ec: 381e73a8    	sturb	w8, [x29, #-0x19]
1000056f0: 97fff310    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
1000056f4: d10103a8    	sub	x8, x29, #0x40
1000056f8: 97fff231    	bl	0x100001fbc <readDownloadFiles()>
1000056fc: 14000001    	b	0x100005700 <findMOV()+0x48>
100005700: f94023e8    	ldr	x8, [sp, #0x40]
100005704: d10103a9    	sub	x9, x29, #0x40
100005708: f9001909    	str	x9, [x8, #0x30]
10000570c: f9401900    	ldr	x0, [x8, #0x30]
100005710: 97fff68c    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100005714: f94023e8    	ldr	x8, [sp, #0x40]
100005718: f9000100    	str	x0, [x8]
10000571c: f9401900    	ldr	x0, [x8, #0x30]
100005720: 97fff693    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100005724: f81a03a0    	stur	x0, [x29, #-0x60]
100005728: 14000001    	b	0x10000572c <findMOV()+0x74>
10000572c: d10163a0    	sub	x0, x29, #0x58
100005730: d10183a1    	sub	x1, x29, #0x60
100005734: 97fff699    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100005738: b9003fe0    	str	w0, [sp, #0x3c]
10000573c: 14000001    	b	0x100005740 <findMOV()+0x88>
100005740: b9403fe8    	ldr	w8, [sp, #0x3c]
100005744: 370001e8    	tbnz	w8, #0x0, 0x100005780 <findMOV()+0xc8>
100005748: 14000001    	b	0x10000574c <findMOV()+0x94>
10000574c: d10103a0    	sub	x0, x29, #0x40
100005750: 97fff412    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005754: 1400009b    	b	0x1000059c0 <findMOV()+0x308>
100005758: f94023e9    	ldr	x9, [sp, #0x40]
10000575c: f9000920    	str	x0, [x9, #0x10]
100005760: aa0103e8    	mov	x8, x1
100005764: b9000d28    	str	w8, [x9, #0xc]
100005768: 140000c6    	b	0x100005a80 <findMOV()+0x3c8>
10000576c: f94023e9    	ldr	x9, [sp, #0x40]
100005770: f9000920    	str	x0, [x9, #0x10]
100005774: aa0103e8    	mov	x8, x1
100005778: b9000d28    	str	w8, [x9, #0xc]
10000577c: 1400008e    	b	0x1000059b4 <findMOV()+0x2fc>
100005780: d10163a0    	sub	x0, x29, #0x58
100005784: 97fff692    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100005788: f9001be0    	str	x0, [sp, #0x30]
10000578c: 14000001    	b	0x100005790 <findMOV()+0xd8>
100005790: f9401be8    	ldr	x8, [sp, #0x30]
100005794: f81983a8    	stur	x8, [x29, #-0x68]
100005798: d10203a0    	sub	x0, x29, #0x80
10000579c: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000057a0: 91200c21    	add	x1, x1, #0x803
1000057a4: 97fff310    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
1000057a8: 14000001    	b	0x1000057ac <findMOV()+0xf4>
1000057ac: 910263e8    	add	x8, sp, #0x98
1000057b0: d10203a0    	sub	x0, x29, #0x80
1000057b4: 97fff171    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000057b8: 14000001    	b	0x1000057bc <findMOV()+0x104>
1000057bc: f85983a0    	ldur	x0, [x29, #-0x68]
1000057c0: d10203a1    	sub	x1, x29, #0x80
1000057c4: d2800002    	mov	x2, #0x0                ; =0
1000057c8: f90017e2    	str	x2, [sp, #0x28]
1000057cc: 97fff68b    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000057d0: f94017e2    	ldr	x2, [sp, #0x28]
1000057d4: aa0003e8    	mov	x8, x0
1000057d8: b90097e8    	str	w8, [sp, #0x94]
1000057dc: f85983a0    	ldur	x0, [x29, #-0x68]
1000057e0: 910263e1    	add	x1, sp, #0x98
1000057e4: 97fff685    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
1000057e8: aa0003e8    	mov	x8, x0
1000057ec: b90093e8    	str	w8, [sp, #0x90]
1000057f0: b98097e8    	ldrsw	x8, [sp, #0x94]
1000057f4: b1000508    	adds	x8, x8, #0x1
1000057f8: 1a9f17e8    	cset	w8, eq
1000057fc: 5280002a    	mov	w10, #0x1               ; =1
100005800: 52800009    	mov	w9, #0x0                ; =0
100005804: 1200012b    	and	w11, w9, #0x1
100005808: 1200016b    	and	w11, w11, #0x1
10000580c: 3901dfeb    	strb	w11, [sp, #0x77]
100005810: 12000129    	and	w9, w9, #0x1
100005814: 0a0a0129    	and	w9, w9, w10
100005818: 39015fe9    	strb	w9, [sp, #0x57]
10000581c: 37000268    	tbnz	w8, #0x0, 0x100005868 <findMOV()+0x1b0>
100005820: 14000001    	b	0x100005824 <findMOV()+0x16c>
100005824: f85983a0    	ldur	x0, [x29, #-0x68]
100005828: b98097e1    	ldrsw	x1, [sp, #0x94]
10000582c: 9101e3e8    	add	x8, sp, #0x78
100005830: 92800002    	mov	x2, #-0x1               ; =-1
100005834: 97fff6fe    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005838: 14000001    	b	0x10000583c <findMOV()+0x184>
10000583c: 52800028    	mov	w8, #0x1                ; =1
100005840: 12000108    	and	w8, w8, #0x1
100005844: 12000108    	and	w8, w8, #0x1
100005848: 3901dfe8    	strb	w8, [sp, #0x77]
10000584c: 9101e3e0    	add	x0, sp, #0x78
100005850: d10203a1    	sub	x1, x29, #0x80
100005854: 97fff6a4    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005858: 52800028    	mov	w8, #0x1                ; =1
10000585c: b90027e8    	str	w8, [sp, #0x24]
100005860: 37000360    	tbnz	w0, #0x0, 0x1000058cc <findMOV()+0x214>
100005864: 14000001    	b	0x100005868 <findMOV()+0x1b0>
100005868: b98093e8    	ldrsw	x8, [sp, #0x90]
10000586c: b1000508    	adds	x8, x8, #0x1
100005870: 1a9f17e8    	cset	w8, eq
100005874: 52800000    	mov	w0, #0x0                ; =0
100005878: b90023e0    	str	w0, [sp, #0x20]
10000587c: 37000228    	tbnz	w8, #0x0, 0x1000058c0 <findMOV()+0x208>
100005880: 14000001    	b	0x100005884 <findMOV()+0x1cc>
100005884: f85983a0    	ldur	x0, [x29, #-0x68]
100005888: b98093e1    	ldrsw	x1, [sp, #0x90]
10000588c: 910163e8    	add	x8, sp, #0x58
100005890: 92800002    	mov	x2, #-0x1               ; =-1
100005894: 97fff6e6    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005898: 14000001    	b	0x10000589c <findMOV()+0x1e4>
10000589c: 52800028    	mov	w8, #0x1                ; =1
1000058a0: 12000108    	and	w8, w8, #0x1
1000058a4: 12000108    	and	w8, w8, #0x1
1000058a8: 39015fe8    	strb	w8, [sp, #0x57]
1000058ac: 910163e0    	add	x0, sp, #0x58
1000058b0: 910263e1    	add	x1, sp, #0x98
1000058b4: 97fff68c    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000058b8: b90023e0    	str	w0, [sp, #0x20]
1000058bc: 14000001    	b	0x1000058c0 <findMOV()+0x208>
1000058c0: b94023e8    	ldr	w8, [sp, #0x20]
1000058c4: b90027e8    	str	w8, [sp, #0x24]
1000058c8: 14000001    	b	0x1000058cc <findMOV()+0x214>
1000058cc: b94027e8    	ldr	w8, [sp, #0x24]
1000058d0: b9001fe8    	str	w8, [sp, #0x1c]
1000058d4: 39415fe8    	ldrb	w8, [sp, #0x57]
1000058d8: 360000a8    	tbz	w8, #0x0, 0x1000058ec <findMOV()+0x234>
1000058dc: 14000001    	b	0x1000058e0 <findMOV()+0x228>
1000058e0: 910163e0    	add	x0, sp, #0x58
1000058e4: 9400153f    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000058e8: 14000001    	b	0x1000058ec <findMOV()+0x234>
1000058ec: 3941dfe8    	ldrb	w8, [sp, #0x77]
1000058f0: 360000a8    	tbz	w8, #0x0, 0x100005904 <findMOV()+0x24c>
1000058f4: 14000001    	b	0x1000058f8 <findMOV()+0x240>
1000058f8: 9101e3e0    	add	x0, sp, #0x78
1000058fc: 94001539    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005900: 14000001    	b	0x100005904 <findMOV()+0x24c>
100005904: b9401fe8    	ldr	w8, [sp, #0x1c]
100005908: 36000388    	tbz	w8, #0x0, 0x100005978 <findMOV()+0x2c0>
10000590c: 14000001    	b	0x100005910 <findMOV()+0x258>
100005910: f94027e0    	ldr	x0, [sp, #0x48]
100005914: f85983a1    	ldur	x1, [x29, #-0x68]
100005918: 97fff376    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
10000591c: 14000001    	b	0x100005920 <findMOV()+0x268>
100005920: 14000016    	b	0x100005978 <findMOV()+0x2c0>
100005924: f94023e9    	ldr	x9, [sp, #0x40]
100005928: f9000920    	str	x0, [x9, #0x10]
10000592c: aa0103e8    	mov	x8, x1
100005930: b9000d28    	str	w8, [x9, #0xc]
100005934: 1400001d    	b	0x1000059a8 <findMOV()+0x2f0>
100005938: f94023e9    	ldr	x9, [sp, #0x40]
10000593c: f9000920    	str	x0, [x9, #0x10]
100005940: aa0103e8    	mov	x8, x1
100005944: b9000d28    	str	w8, [x9, #0xc]
100005948: 14000015    	b	0x10000599c <findMOV()+0x2e4>
10000594c: f94023e9    	ldr	x9, [sp, #0x40]
100005950: f9000920    	str	x0, [x9, #0x10]
100005954: aa0103e8    	mov	x8, x1
100005958: b9000d28    	str	w8, [x9, #0xc]
10000595c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005960: 360000a8    	tbz	w8, #0x0, 0x100005974 <findMOV()+0x2bc>
100005964: 14000001    	b	0x100005968 <findMOV()+0x2b0>
100005968: 9101e3e0    	add	x0, sp, #0x78
10000596c: 9400151d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005970: 14000001    	b	0x100005974 <findMOV()+0x2bc>
100005974: 1400000a    	b	0x10000599c <findMOV()+0x2e4>
100005978: 910263e0    	add	x0, sp, #0x98
10000597c: 94001519    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005980: d10203a0    	sub	x0, x29, #0x80
100005984: 94001517    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005988: 14000001    	b	0x10000598c <findMOV()+0x2d4>
10000598c: d10163a0    	sub	x0, x29, #0x58
100005990: 97fff6ec    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100005994: 14000001    	b	0x100005998 <findMOV()+0x2e0>
100005998: 17ffff65    	b	0x10000572c <findMOV()+0x74>
10000599c: 910263e0    	add	x0, sp, #0x98
1000059a0: 94001510    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000059a4: 14000001    	b	0x1000059a8 <findMOV()+0x2f0>
1000059a8: d10203a0    	sub	x0, x29, #0x80
1000059ac: 9400150d    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000059b0: 14000001    	b	0x1000059b4 <findMOV()+0x2fc>
1000059b4: d10103a0    	sub	x0, x29, #0x40
1000059b8: 97fff378    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000059bc: 14000031    	b	0x100005a80 <findMOV()+0x3c8>
1000059c0: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000059c4: f940d000    	ldr	x0, [x0, #0x1a0]
1000059c8: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000059cc: 91183421    	add	x1, x1, #0x60d
1000059d0: 97fff263    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000059d4: f9000be0    	str	x0, [sp, #0x10]
1000059d8: 14000001    	b	0x1000059dc <findMOV()+0x324>
1000059dc: f9400be0    	ldr	x0, [sp, #0x10]
1000059e0: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000059e4: 91186021    	add	x1, x1, #0x618
1000059e8: 97fff25d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000059ec: 14000001    	b	0x1000059f0 <findMOV()+0x338>
1000059f0: 52800040    	mov	w0, #0x2                ; =2
1000059f4: 9400157c    	bl	0x10000afe4 <_strlen+0x10000afe4>
1000059f8: 14000001    	b	0x1000059fc <findMOV()+0x344>
1000059fc: f94027e0    	ldr	x0, [sp, #0x48]
100005a00: 97fff6d8    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100005a04: aa0003e1    	mov	x1, x0
100005a08: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100005a0c: f940d000    	ldr	x0, [x0, #0x1a0]
100005a10: 94001509    	bl	0x10000ae34 <_strlen+0x10000ae34>
100005a14: f90007e0    	str	x0, [sp, #0x8]
100005a18: 14000001    	b	0x100005a1c <findMOV()+0x364>
100005a1c: f94007e0    	ldr	x0, [sp, #0x8]
100005a20: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005a24: 91202021    	add	x1, x1, #0x808
100005a28: 97fff24d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005a2c: f90003e0    	str	x0, [sp]
100005a30: 14000001    	b	0x100005a34 <findMOV()+0x37c>
100005a34: f94003e0    	ldr	x0, [sp]
100005a38: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005a3c: 91186021    	add	x1, x1, #0x618
100005a40: 97fff247    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005a44: 14000001    	b	0x100005a48 <findMOV()+0x390>
100005a48: 52800028    	mov	w8, #0x1                ; =1
100005a4c: 12000108    	and	w8, w8, #0x1
100005a50: 12000108    	and	w8, w8, #0x1
100005a54: 381e73a8    	sturb	w8, [x29, #-0x19]
100005a58: 385e73a8    	ldurb	w8, [x29, #-0x19]
100005a5c: 370000a8    	tbnz	w8, #0x0, 0x100005a70 <findMOV()+0x3b8>
100005a60: 14000001    	b	0x100005a64 <findMOV()+0x3ac>
100005a64: f94027e0    	ldr	x0, [sp, #0x48]
100005a68: 97fff34c    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005a6c: 14000001    	b	0x100005a70 <findMOV()+0x3b8>
100005a70: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100005a74: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100005a78: 910503ff    	add	sp, sp, #0x140
100005a7c: d65f03c0    	ret
100005a80: f94027e0    	ldr	x0, [sp, #0x48]
100005a84: 97fff345    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005a88: 14000001    	b	0x100005a8c <findMOV()+0x3d4>
100005a8c: f94023e8    	ldr	x8, [sp, #0x40]
100005a90: f9400900    	ldr	x0, [x8, #0x10]
100005a94: 9400148b    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100005a98 <findMP3()>:
100005a98: d10503ff    	sub	sp, sp, #0x140
100005a9c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100005aa0: a9137bfd    	stp	x29, x30, [sp, #0x130]
100005aa4: 9104c3fd    	add	x29, sp, #0x130
100005aa8: d10163a9    	sub	x9, x29, #0x58
100005aac: f90023e9    	str	x9, [sp, #0x40]
100005ab0: aa0803e0    	mov	x0, x8
100005ab4: f90027e0    	str	x0, [sp, #0x48]
100005ab8: aa0003e8    	mov	x8, x0
100005abc: f9002128    	str	x8, [x9, #0x40]
100005ac0: 52800008    	mov	w8, #0x0                ; =0
100005ac4: 12000108    	and	w8, w8, #0x1
100005ac8: 12000108    	and	w8, w8, #0x1
100005acc: 381e73a8    	sturb	w8, [x29, #-0x19]
100005ad0: 97fff218    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100005ad4: d10103a8    	sub	x8, x29, #0x40
100005ad8: 97fff139    	bl	0x100001fbc <readDownloadFiles()>
100005adc: 14000001    	b	0x100005ae0 <findMP3()+0x48>
100005ae0: f94023e8    	ldr	x8, [sp, #0x40]
100005ae4: d10103a9    	sub	x9, x29, #0x40
100005ae8: f9001909    	str	x9, [x8, #0x30]
100005aec: f9401900    	ldr	x0, [x8, #0x30]
100005af0: 97fff594    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100005af4: f94023e8    	ldr	x8, [sp, #0x40]
100005af8: f9000100    	str	x0, [x8]
100005afc: f9401900    	ldr	x0, [x8, #0x30]
100005b00: 97fff59b    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100005b04: f81a03a0    	stur	x0, [x29, #-0x60]
100005b08: 14000001    	b	0x100005b0c <findMP3()+0x74>
100005b0c: d10163a0    	sub	x0, x29, #0x58
100005b10: d10183a1    	sub	x1, x29, #0x60
100005b14: 97fff5a1    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100005b18: b9003fe0    	str	w0, [sp, #0x3c]
100005b1c: 14000001    	b	0x100005b20 <findMP3()+0x88>
100005b20: b9403fe8    	ldr	w8, [sp, #0x3c]
100005b24: 370001e8    	tbnz	w8, #0x0, 0x100005b60 <findMP3()+0xc8>
100005b28: 14000001    	b	0x100005b2c <findMP3()+0x94>
100005b2c: d10103a0    	sub	x0, x29, #0x40
100005b30: 97fff31a    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005b34: 1400009b    	b	0x100005da0 <findMP3()+0x308>
100005b38: f94023e9    	ldr	x9, [sp, #0x40]
100005b3c: f9000920    	str	x0, [x9, #0x10]
100005b40: aa0103e8    	mov	x8, x1
100005b44: b9000d28    	str	w8, [x9, #0xc]
100005b48: 140000c6    	b	0x100005e60 <findMP3()+0x3c8>
100005b4c: f94023e9    	ldr	x9, [sp, #0x40]
100005b50: f9000920    	str	x0, [x9, #0x10]
100005b54: aa0103e8    	mov	x8, x1
100005b58: b9000d28    	str	w8, [x9, #0xc]
100005b5c: 1400008e    	b	0x100005d94 <findMP3()+0x2fc>
100005b60: d10163a0    	sub	x0, x29, #0x58
100005b64: 97fff59a    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100005b68: f9001be0    	str	x0, [sp, #0x30]
100005b6c: 14000001    	b	0x100005b70 <findMP3()+0xd8>
100005b70: f9401be8    	ldr	x8, [sp, #0x30]
100005b74: f81983a8    	stur	x8, [x29, #-0x68]
100005b78: d10203a0    	sub	x0, x29, #0x80
100005b7c: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005b80: 9120dc21    	add	x1, x1, #0x837
100005b84: 97fff218    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100005b88: 14000001    	b	0x100005b8c <findMP3()+0xf4>
100005b8c: 910263e8    	add	x8, sp, #0x98
100005b90: d10203a0    	sub	x0, x29, #0x80
100005b94: 97fff079    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005b98: 14000001    	b	0x100005b9c <findMP3()+0x104>
100005b9c: f85983a0    	ldur	x0, [x29, #-0x68]
100005ba0: d10203a1    	sub	x1, x29, #0x80
100005ba4: d2800002    	mov	x2, #0x0                ; =0
100005ba8: f90017e2    	str	x2, [sp, #0x28]
100005bac: 97fff593    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005bb0: f94017e2    	ldr	x2, [sp, #0x28]
100005bb4: aa0003e8    	mov	x8, x0
100005bb8: b90097e8    	str	w8, [sp, #0x94]
100005bbc: f85983a0    	ldur	x0, [x29, #-0x68]
100005bc0: 910263e1    	add	x1, sp, #0x98
100005bc4: 97fff58d    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005bc8: aa0003e8    	mov	x8, x0
100005bcc: b90093e8    	str	w8, [sp, #0x90]
100005bd0: b98097e8    	ldrsw	x8, [sp, #0x94]
100005bd4: b1000508    	adds	x8, x8, #0x1
100005bd8: 1a9f17e8    	cset	w8, eq
100005bdc: 5280002a    	mov	w10, #0x1               ; =1
100005be0: 52800009    	mov	w9, #0x0                ; =0
100005be4: 1200012b    	and	w11, w9, #0x1
100005be8: 1200016b    	and	w11, w11, #0x1
100005bec: 3901dfeb    	strb	w11, [sp, #0x77]
100005bf0: 12000129    	and	w9, w9, #0x1
100005bf4: 0a0a0129    	and	w9, w9, w10
100005bf8: 39015fe9    	strb	w9, [sp, #0x57]
100005bfc: 37000268    	tbnz	w8, #0x0, 0x100005c48 <findMP3()+0x1b0>
100005c00: 14000001    	b	0x100005c04 <findMP3()+0x16c>
100005c04: f85983a0    	ldur	x0, [x29, #-0x68]
100005c08: b98097e1    	ldrsw	x1, [sp, #0x94]
100005c0c: 9101e3e8    	add	x8, sp, #0x78
100005c10: 92800002    	mov	x2, #-0x1               ; =-1
100005c14: 97fff606    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005c18: 14000001    	b	0x100005c1c <findMP3()+0x184>
100005c1c: 52800028    	mov	w8, #0x1                ; =1
100005c20: 12000108    	and	w8, w8, #0x1
100005c24: 12000108    	and	w8, w8, #0x1
100005c28: 3901dfe8    	strb	w8, [sp, #0x77]
100005c2c: 9101e3e0    	add	x0, sp, #0x78
100005c30: d10203a1    	sub	x1, x29, #0x80
100005c34: 97fff5ac    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005c38: 52800028    	mov	w8, #0x1                ; =1
100005c3c: b90027e8    	str	w8, [sp, #0x24]
100005c40: 37000360    	tbnz	w0, #0x0, 0x100005cac <findMP3()+0x214>
100005c44: 14000001    	b	0x100005c48 <findMP3()+0x1b0>
100005c48: b98093e8    	ldrsw	x8, [sp, #0x90]
100005c4c: b1000508    	adds	x8, x8, #0x1
100005c50: 1a9f17e8    	cset	w8, eq
100005c54: 52800000    	mov	w0, #0x0                ; =0
100005c58: b90023e0    	str	w0, [sp, #0x20]
100005c5c: 37000228    	tbnz	w8, #0x0, 0x100005ca0 <findMP3()+0x208>
100005c60: 14000001    	b	0x100005c64 <findMP3()+0x1cc>
100005c64: f85983a0    	ldur	x0, [x29, #-0x68]
100005c68: b98093e1    	ldrsw	x1, [sp, #0x90]
100005c6c: 910163e8    	add	x8, sp, #0x58
100005c70: 92800002    	mov	x2, #-0x1               ; =-1
100005c74: 97fff5ee    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005c78: 14000001    	b	0x100005c7c <findMP3()+0x1e4>
100005c7c: 52800028    	mov	w8, #0x1                ; =1
100005c80: 12000108    	and	w8, w8, #0x1
100005c84: 12000108    	and	w8, w8, #0x1
100005c88: 39015fe8    	strb	w8, [sp, #0x57]
100005c8c: 910163e0    	add	x0, sp, #0x58
100005c90: 910263e1    	add	x1, sp, #0x98
100005c94: 97fff594    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005c98: b90023e0    	str	w0, [sp, #0x20]
100005c9c: 14000001    	b	0x100005ca0 <findMP3()+0x208>
100005ca0: b94023e8    	ldr	w8, [sp, #0x20]
100005ca4: b90027e8    	str	w8, [sp, #0x24]
100005ca8: 14000001    	b	0x100005cac <findMP3()+0x214>
100005cac: b94027e8    	ldr	w8, [sp, #0x24]
100005cb0: b9001fe8    	str	w8, [sp, #0x1c]
100005cb4: 39415fe8    	ldrb	w8, [sp, #0x57]
100005cb8: 360000a8    	tbz	w8, #0x0, 0x100005ccc <findMP3()+0x234>
100005cbc: 14000001    	b	0x100005cc0 <findMP3()+0x228>
100005cc0: 910163e0    	add	x0, sp, #0x58
100005cc4: 94001447    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005cc8: 14000001    	b	0x100005ccc <findMP3()+0x234>
100005ccc: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005cd0: 360000a8    	tbz	w8, #0x0, 0x100005ce4 <findMP3()+0x24c>
100005cd4: 14000001    	b	0x100005cd8 <findMP3()+0x240>
100005cd8: 9101e3e0    	add	x0, sp, #0x78
100005cdc: 94001441    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005ce0: 14000001    	b	0x100005ce4 <findMP3()+0x24c>
100005ce4: b9401fe8    	ldr	w8, [sp, #0x1c]
100005ce8: 36000388    	tbz	w8, #0x0, 0x100005d58 <findMP3()+0x2c0>
100005cec: 14000001    	b	0x100005cf0 <findMP3()+0x258>
100005cf0: f94027e0    	ldr	x0, [sp, #0x48]
100005cf4: f85983a1    	ldur	x1, [x29, #-0x68]
100005cf8: 97fff27e    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005cfc: 14000001    	b	0x100005d00 <findMP3()+0x268>
100005d00: 14000016    	b	0x100005d58 <findMP3()+0x2c0>
100005d04: f94023e9    	ldr	x9, [sp, #0x40]
100005d08: f9000920    	str	x0, [x9, #0x10]
100005d0c: aa0103e8    	mov	x8, x1
100005d10: b9000d28    	str	w8, [x9, #0xc]
100005d14: 1400001d    	b	0x100005d88 <findMP3()+0x2f0>
100005d18: f94023e9    	ldr	x9, [sp, #0x40]
100005d1c: f9000920    	str	x0, [x9, #0x10]
100005d20: aa0103e8    	mov	x8, x1
100005d24: b9000d28    	str	w8, [x9, #0xc]
100005d28: 14000015    	b	0x100005d7c <findMP3()+0x2e4>
100005d2c: f94023e9    	ldr	x9, [sp, #0x40]
100005d30: f9000920    	str	x0, [x9, #0x10]
100005d34: aa0103e8    	mov	x8, x1
100005d38: b9000d28    	str	w8, [x9, #0xc]
100005d3c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100005d40: 360000a8    	tbz	w8, #0x0, 0x100005d54 <findMP3()+0x2bc>
100005d44: 14000001    	b	0x100005d48 <findMP3()+0x2b0>
100005d48: 9101e3e0    	add	x0, sp, #0x78
100005d4c: 94001425    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005d50: 14000001    	b	0x100005d54 <findMP3()+0x2bc>
100005d54: 1400000a    	b	0x100005d7c <findMP3()+0x2e4>
100005d58: 910263e0    	add	x0, sp, #0x98
100005d5c: 94001421    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005d60: d10203a0    	sub	x0, x29, #0x80
100005d64: 9400141f    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005d68: 14000001    	b	0x100005d6c <findMP3()+0x2d4>
100005d6c: d10163a0    	sub	x0, x29, #0x58
100005d70: 97fff5f4    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100005d74: 14000001    	b	0x100005d78 <findMP3()+0x2e0>
100005d78: 17ffff65    	b	0x100005b0c <findMP3()+0x74>
100005d7c: 910263e0    	add	x0, sp, #0x98
100005d80: 94001418    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005d84: 14000001    	b	0x100005d88 <findMP3()+0x2f0>
100005d88: d10203a0    	sub	x0, x29, #0x80
100005d8c: 94001415    	bl	0x10000ade0 <_strlen+0x10000ade0>
100005d90: 14000001    	b	0x100005d94 <findMP3()+0x2fc>
100005d94: d10103a0    	sub	x0, x29, #0x40
100005d98: 97fff280    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005d9c: 14000031    	b	0x100005e60 <findMP3()+0x3c8>
100005da0: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100005da4: f940d000    	ldr	x0, [x0, #0x1a0]
100005da8: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005dac: 91183421    	add	x1, x1, #0x60d
100005db0: 97fff16b    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005db4: f9000be0    	str	x0, [sp, #0x10]
100005db8: 14000001    	b	0x100005dbc <findMP3()+0x324>
100005dbc: f9400be0    	ldr	x0, [sp, #0x10]
100005dc0: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005dc4: 91186021    	add	x1, x1, #0x618
100005dc8: 97fff165    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005dcc: 14000001    	b	0x100005dd0 <findMP3()+0x338>
100005dd0: 52800040    	mov	w0, #0x2                ; =2
100005dd4: 94001484    	bl	0x10000afe4 <_strlen+0x10000afe4>
100005dd8: 14000001    	b	0x100005ddc <findMP3()+0x344>
100005ddc: f94027e0    	ldr	x0, [sp, #0x48]
100005de0: 97fff5e0    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100005de4: aa0003e1    	mov	x1, x0
100005de8: f0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100005dec: f940d000    	ldr	x0, [x0, #0x1a0]
100005df0: 94001411    	bl	0x10000ae34 <_strlen+0x10000ae34>
100005df4: f90007e0    	str	x0, [sp, #0x8]
100005df8: 14000001    	b	0x100005dfc <findMP3()+0x364>
100005dfc: f94007e0    	ldr	x0, [sp, #0x8]
100005e00: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005e04: 9120f021    	add	x1, x1, #0x83c
100005e08: 97fff155    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005e0c: f90003e0    	str	x0, [sp]
100005e10: 14000001    	b	0x100005e14 <findMP3()+0x37c>
100005e14: f94003e0    	ldr	x0, [sp]
100005e18: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005e1c: 91186021    	add	x1, x1, #0x618
100005e20: 97fff14f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100005e24: 14000001    	b	0x100005e28 <findMP3()+0x390>
100005e28: 52800028    	mov	w8, #0x1                ; =1
100005e2c: 12000108    	and	w8, w8, #0x1
100005e30: 12000108    	and	w8, w8, #0x1
100005e34: 381e73a8    	sturb	w8, [x29, #-0x19]
100005e38: 385e73a8    	ldurb	w8, [x29, #-0x19]
100005e3c: 370000a8    	tbnz	w8, #0x0, 0x100005e50 <findMP3()+0x3b8>
100005e40: 14000001    	b	0x100005e44 <findMP3()+0x3ac>
100005e44: f94027e0    	ldr	x0, [sp, #0x48]
100005e48: 97fff254    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005e4c: 14000001    	b	0x100005e50 <findMP3()+0x3b8>
100005e50: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100005e54: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100005e58: 910503ff    	add	sp, sp, #0x140
100005e5c: d65f03c0    	ret
100005e60: f94027e0    	ldr	x0, [sp, #0x48]
100005e64: 97fff24d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005e68: 14000001    	b	0x100005e6c <findMP3()+0x3d4>
100005e6c: f94023e8    	ldr	x8, [sp, #0x40]
100005e70: f9400900    	ldr	x0, [x8, #0x10]
100005e74: 94001393    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100005e78 <findWAV()>:
100005e78: d10503ff    	sub	sp, sp, #0x140
100005e7c: a9126ffc    	stp	x28, x27, [sp, #0x120]
100005e80: a9137bfd    	stp	x29, x30, [sp, #0x130]
100005e84: 9104c3fd    	add	x29, sp, #0x130
100005e88: d10163a9    	sub	x9, x29, #0x58
100005e8c: f90023e9    	str	x9, [sp, #0x40]
100005e90: aa0803e0    	mov	x0, x8
100005e94: f90027e0    	str	x0, [sp, #0x48]
100005e98: aa0003e8    	mov	x8, x0
100005e9c: f9002128    	str	x8, [x9, #0x40]
100005ea0: 52800008    	mov	w8, #0x0                ; =0
100005ea4: 12000108    	and	w8, w8, #0x1
100005ea8: 12000108    	and	w8, w8, #0x1
100005eac: 381e73a8    	sturb	w8, [x29, #-0x19]
100005eb0: 97fff120    	bl	0x100002330 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>
100005eb4: d10103a8    	sub	x8, x29, #0x40
100005eb8: 97fff041    	bl	0x100001fbc <readDownloadFiles()>
100005ebc: 14000001    	b	0x100005ec0 <findWAV()+0x48>
100005ec0: f94023e8    	ldr	x8, [sp, #0x40]
100005ec4: d10103a9    	sub	x9, x29, #0x40
100005ec8: f9001909    	str	x9, [x8, #0x30]
100005ecc: f9401900    	ldr	x0, [x8, #0x30]
100005ed0: 97fff49c    	bl	0x100003140 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>
100005ed4: f94023e8    	ldr	x8, [sp, #0x40]
100005ed8: f9000100    	str	x0, [x8]
100005edc: f9401900    	ldr	x0, [x8, #0x30]
100005ee0: 97fff4a3    	bl	0x10000316c <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>
100005ee4: f81a03a0    	stur	x0, [x29, #-0x60]
100005ee8: 14000001    	b	0x100005eec <findWAV()+0x74>
100005eec: d10163a0    	sub	x0, x29, #0x58
100005ef0: d10183a1    	sub	x1, x29, #0x60
100005ef4: 97fff4a9    	bl	0x100003198 <std::__1::operator!=[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>
100005ef8: b9003fe0    	str	w0, [sp, #0x3c]
100005efc: 14000001    	b	0x100005f00 <findWAV()+0x88>
100005f00: b9403fe8    	ldr	w8, [sp, #0x3c]
100005f04: 370001e8    	tbnz	w8, #0x0, 0x100005f40 <findWAV()+0xc8>
100005f08: 14000001    	b	0x100005f0c <findWAV()+0x94>
100005f0c: d10103a0    	sub	x0, x29, #0x40
100005f10: 97fff222    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100005f14: 1400009b    	b	0x100006180 <findWAV()+0x308>
100005f18: f94023e9    	ldr	x9, [sp, #0x40]
100005f1c: f9000920    	str	x0, [x9, #0x10]
100005f20: aa0103e8    	mov	x8, x1
100005f24: b9000d28    	str	w8, [x9, #0xc]
100005f28: 140000c6    	b	0x100006240 <findWAV()+0x3c8>
100005f2c: f94023e9    	ldr	x9, [sp, #0x40]
100005f30: f9000920    	str	x0, [x9, #0x10]
100005f34: aa0103e8    	mov	x8, x1
100005f38: b9000d28    	str	w8, [x9, #0xc]
100005f3c: 1400008e    	b	0x100006174 <findWAV()+0x2fc>
100005f40: d10163a0    	sub	x0, x29, #0x58
100005f44: 97fff4a2    	bl	0x1000031cc <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator*[abi:ne180100]() const>
100005f48: f9001be0    	str	x0, [sp, #0x30]
100005f4c: 14000001    	b	0x100005f50 <findWAV()+0xd8>
100005f50: f9401be8    	ldr	x8, [sp, #0x30]
100005f54: f81983a8    	stur	x8, [x29, #-0x68]
100005f58: d10203a0    	sub	x0, x29, #0x80
100005f5c: d0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100005f60: 9121ac21    	add	x1, x1, #0x86b
100005f64: 97fff120    	bl	0x1000023e4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>
100005f68: 14000001    	b	0x100005f6c <findWAV()+0xf4>
100005f6c: 910263e8    	add	x8, sp, #0x98
100005f70: d10203a0    	sub	x0, x29, #0x80
100005f74: 97ffef81    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100005f78: 14000001    	b	0x100005f7c <findWAV()+0x104>
100005f7c: f85983a0    	ldur	x0, [x29, #-0x68]
100005f80: d10203a1    	sub	x1, x29, #0x80
100005f84: d2800002    	mov	x2, #0x0                ; =0
100005f88: f90017e2    	str	x2, [sp, #0x28]
100005f8c: 97fff49b    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005f90: f94017e2    	ldr	x2, [sp, #0x28]
100005f94: aa0003e8    	mov	x8, x0
100005f98: b90097e8    	str	w8, [sp, #0x94]
100005f9c: f85983a0    	ldur	x0, [x29, #-0x68]
100005fa0: 910263e1    	add	x1, sp, #0x98
100005fa4: 97fff495    	bl	0x1000031f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::find[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, unsigned long) const>
100005fa8: aa0003e8    	mov	x8, x0
100005fac: b90093e8    	str	w8, [sp, #0x90]
100005fb0: b98097e8    	ldrsw	x8, [sp, #0x94]
100005fb4: b1000508    	adds	x8, x8, #0x1
100005fb8: 1a9f17e8    	cset	w8, eq
100005fbc: 5280002a    	mov	w10, #0x1               ; =1
100005fc0: 52800009    	mov	w9, #0x0                ; =0
100005fc4: 1200012b    	and	w11, w9, #0x1
100005fc8: 1200016b    	and	w11, w11, #0x1
100005fcc: 3901dfeb    	strb	w11, [sp, #0x77]
100005fd0: 12000129    	and	w9, w9, #0x1
100005fd4: 0a0a0129    	and	w9, w9, w10
100005fd8: 39015fe9    	strb	w9, [sp, #0x57]
100005fdc: 37000268    	tbnz	w8, #0x0, 0x100006028 <findWAV()+0x1b0>
100005fe0: 14000001    	b	0x100005fe4 <findWAV()+0x16c>
100005fe4: f85983a0    	ldur	x0, [x29, #-0x68]
100005fe8: b98097e1    	ldrsw	x1, [sp, #0x94]
100005fec: 9101e3e8    	add	x8, sp, #0x78
100005ff0: 92800002    	mov	x2, #-0x1               ; =-1
100005ff4: 97fff50e    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100005ff8: 14000001    	b	0x100005ffc <findWAV()+0x184>
100005ffc: 52800028    	mov	w8, #0x1                ; =1
100006000: 12000108    	and	w8, w8, #0x1
100006004: 12000108    	and	w8, w8, #0x1
100006008: 3901dfe8    	strb	w8, [sp, #0x77]
10000600c: 9101e3e0    	add	x0, sp, #0x78
100006010: d10203a1    	sub	x1, x29, #0x80
100006014: 97fff4b4    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100006018: 52800028    	mov	w8, #0x1                ; =1
10000601c: b90027e8    	str	w8, [sp, #0x24]
100006020: 37000360    	tbnz	w0, #0x0, 0x10000608c <findWAV()+0x214>
100006024: 14000001    	b	0x100006028 <findWAV()+0x1b0>
100006028: b98093e8    	ldrsw	x8, [sp, #0x90]
10000602c: b1000508    	adds	x8, x8, #0x1
100006030: 1a9f17e8    	cset	w8, eq
100006034: 52800000    	mov	w0, #0x0                ; =0
100006038: b90023e0    	str	w0, [sp, #0x20]
10000603c: 37000228    	tbnz	w8, #0x0, 0x100006080 <findWAV()+0x208>
100006040: 14000001    	b	0x100006044 <findWAV()+0x1cc>
100006044: f85983a0    	ldur	x0, [x29, #-0x68]
100006048: b98093e1    	ldrsw	x1, [sp, #0x90]
10000604c: 910163e8    	add	x8, sp, #0x58
100006050: 92800002    	mov	x2, #-0x1               ; =-1
100006054: 97fff4f6    	bl	0x10000342c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::substr[abi:ne180100](unsigned long, unsigned long) const>
100006058: 14000001    	b	0x10000605c <findWAV()+0x1e4>
10000605c: 52800028    	mov	w8, #0x1                ; =1
100006060: 12000108    	and	w8, w8, #0x1
100006064: 12000108    	and	w8, w8, #0x1
100006068: 39015fe8    	strb	w8, [sp, #0x57]
10000606c: 910163e0    	add	x0, sp, #0x58
100006070: 910263e1    	add	x1, sp, #0x98
100006074: 97fff49c    	bl	0x1000032e4 <bool std::__1::operator==[abi:ne180100]<std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100006078: b90023e0    	str	w0, [sp, #0x20]
10000607c: 14000001    	b	0x100006080 <findWAV()+0x208>
100006080: b94023e8    	ldr	w8, [sp, #0x20]
100006084: b90027e8    	str	w8, [sp, #0x24]
100006088: 14000001    	b	0x10000608c <findWAV()+0x214>
10000608c: b94027e8    	ldr	w8, [sp, #0x24]
100006090: b9001fe8    	str	w8, [sp, #0x1c]
100006094: 39415fe8    	ldrb	w8, [sp, #0x57]
100006098: 360000a8    	tbz	w8, #0x0, 0x1000060ac <findWAV()+0x234>
10000609c: 14000001    	b	0x1000060a0 <findWAV()+0x228>
1000060a0: 910163e0    	add	x0, sp, #0x58
1000060a4: 9400134f    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000060a8: 14000001    	b	0x1000060ac <findWAV()+0x234>
1000060ac: 3941dfe8    	ldrb	w8, [sp, #0x77]
1000060b0: 360000a8    	tbz	w8, #0x0, 0x1000060c4 <findWAV()+0x24c>
1000060b4: 14000001    	b	0x1000060b8 <findWAV()+0x240>
1000060b8: 9101e3e0    	add	x0, sp, #0x78
1000060bc: 94001349    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000060c0: 14000001    	b	0x1000060c4 <findWAV()+0x24c>
1000060c4: b9401fe8    	ldr	w8, [sp, #0x1c]
1000060c8: 36000388    	tbz	w8, #0x0, 0x100006138 <findWAV()+0x2c0>
1000060cc: 14000001    	b	0x1000060d0 <findWAV()+0x258>
1000060d0: f94027e0    	ldr	x0, [sp, #0x48]
1000060d4: f85983a1    	ldur	x1, [x29, #-0x68]
1000060d8: 97fff186    	bl	0x1000026f0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::push_back(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
1000060dc: 14000001    	b	0x1000060e0 <findWAV()+0x268>
1000060e0: 14000016    	b	0x100006138 <findWAV()+0x2c0>
1000060e4: f94023e9    	ldr	x9, [sp, #0x40]
1000060e8: f9000920    	str	x0, [x9, #0x10]
1000060ec: aa0103e8    	mov	x8, x1
1000060f0: b9000d28    	str	w8, [x9, #0xc]
1000060f4: 1400001d    	b	0x100006168 <findWAV()+0x2f0>
1000060f8: f94023e9    	ldr	x9, [sp, #0x40]
1000060fc: f9000920    	str	x0, [x9, #0x10]
100006100: aa0103e8    	mov	x8, x1
100006104: b9000d28    	str	w8, [x9, #0xc]
100006108: 14000015    	b	0x10000615c <findWAV()+0x2e4>
10000610c: f94023e9    	ldr	x9, [sp, #0x40]
100006110: f9000920    	str	x0, [x9, #0x10]
100006114: aa0103e8    	mov	x8, x1
100006118: b9000d28    	str	w8, [x9, #0xc]
10000611c: 3941dfe8    	ldrb	w8, [sp, #0x77]
100006120: 360000a8    	tbz	w8, #0x0, 0x100006134 <findWAV()+0x2bc>
100006124: 14000001    	b	0x100006128 <findWAV()+0x2b0>
100006128: 9101e3e0    	add	x0, sp, #0x78
10000612c: 9400132d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006130: 14000001    	b	0x100006134 <findWAV()+0x2bc>
100006134: 1400000a    	b	0x10000615c <findWAV()+0x2e4>
100006138: 910263e0    	add	x0, sp, #0x98
10000613c: 94001329    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006140: d10203a0    	sub	x0, x29, #0x80
100006144: 94001327    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006148: 14000001    	b	0x10000614c <findWAV()+0x2d4>
10000614c: d10163a0    	sub	x0, x29, #0x58
100006150: 97fff4fc    	bl	0x100003540 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::operator++[abi:ne180100]()>
100006154: 14000001    	b	0x100006158 <findWAV()+0x2e0>
100006158: 17ffff65    	b	0x100005eec <findWAV()+0x74>
10000615c: 910263e0    	add	x0, sp, #0x98
100006160: 94001320    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006164: 14000001    	b	0x100006168 <findWAV()+0x2f0>
100006168: d10203a0    	sub	x0, x29, #0x80
10000616c: 9400131d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006170: 14000001    	b	0x100006174 <findWAV()+0x2fc>
100006174: d10103a0    	sub	x0, x29, #0x40
100006178: 97fff188    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000617c: 14000031    	b	0x100006240 <findWAV()+0x3c8>
100006180: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006184: f940d000    	ldr	x0, [x0, #0x1a0]
100006188: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000618c: 91183421    	add	x1, x1, #0x60d
100006190: 97fff073    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006194: f9000be0    	str	x0, [sp, #0x10]
100006198: 14000001    	b	0x10000619c <findWAV()+0x324>
10000619c: f9400be0    	ldr	x0, [sp, #0x10]
1000061a0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000061a4: 91186021    	add	x1, x1, #0x618
1000061a8: 97fff06d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000061ac: 14000001    	b	0x1000061b0 <findWAV()+0x338>
1000061b0: 52800040    	mov	w0, #0x2                ; =2
1000061b4: 9400138c    	bl	0x10000afe4 <_strlen+0x10000afe4>
1000061b8: 14000001    	b	0x1000061bc <findWAV()+0x344>
1000061bc: f94027e0    	ldr	x0, [sp, #0x48]
1000061c0: 97fff4e8    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000061c4: aa0003e1    	mov	x1, x0
1000061c8: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000061cc: f940d000    	ldr	x0, [x0, #0x1a0]
1000061d0: 94001319    	bl	0x10000ae34 <_strlen+0x10000ae34>
1000061d4: f90007e0    	str	x0, [sp, #0x8]
1000061d8: 14000001    	b	0x1000061dc <findWAV()+0x364>
1000061dc: f94007e0    	ldr	x0, [sp, #0x8]
1000061e0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000061e4: 9121c021    	add	x1, x1, #0x870
1000061e8: 97fff05d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000061ec: f90003e0    	str	x0, [sp]
1000061f0: 14000001    	b	0x1000061f4 <findWAV()+0x37c>
1000061f4: f94003e0    	ldr	x0, [sp]
1000061f8: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000061fc: 91186021    	add	x1, x1, #0x618
100006200: 97fff057    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006204: 14000001    	b	0x100006208 <findWAV()+0x390>
100006208: 52800028    	mov	w8, #0x1                ; =1
10000620c: 12000108    	and	w8, w8, #0x1
100006210: 12000108    	and	w8, w8, #0x1
100006214: 381e73a8    	sturb	w8, [x29, #-0x19]
100006218: 385e73a8    	ldurb	w8, [x29, #-0x19]
10000621c: 370000a8    	tbnz	w8, #0x0, 0x100006230 <findWAV()+0x3b8>
100006220: 14000001    	b	0x100006224 <findWAV()+0x3ac>
100006224: f94027e0    	ldr	x0, [sp, #0x48]
100006228: 97fff15c    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000622c: 14000001    	b	0x100006230 <findWAV()+0x3b8>
100006230: a9537bfd    	ldp	x29, x30, [sp, #0x130]
100006234: a9526ffc    	ldp	x28, x27, [sp, #0x120]
100006238: 910503ff    	add	sp, sp, #0x140
10000623c: d65f03c0    	ret
100006240: f94027e0    	ldr	x0, [sp, #0x48]
100006244: 97fff155    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006248: 14000001    	b	0x10000624c <findWAV()+0x3d4>
10000624c: f94023e8    	ldr	x8, [sp, #0x40]
100006250: f9400900    	ldr	x0, [x8, #0x10]
100006254: 9400129b    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100006258 <displayMenu()>:
100006258: d10083ff    	sub	sp, sp, #0x20
10000625c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100006260: 910043fd    	add	x29, sp, #0x10
100006264: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006268: f940d000    	ldr	x0, [x0, #0x1a0]
10000626c: f90007e0    	str	x0, [sp, #0x8]
100006270: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006274: 91227c21    	add	x1, x1, #0x89f
100006278: 97fff039    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000627c: f94007e0    	ldr	x0, [sp, #0x8]
100006280: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006284: 9122d021    	add	x1, x1, #0x8b4
100006288: 97fff035    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000628c: f94007e0    	ldr	x0, [sp, #0x8]
100006290: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006294: 91231c21    	add	x1, x1, #0x8c7
100006298: 97fff031    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000629c: f94007e0    	ldr	x0, [sp, #0x8]
1000062a0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000062a4: 91236421    	add	x1, x1, #0x8d9
1000062a8: 97fff02d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000062ac: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000062b0: 910083ff    	add	sp, sp, #0x20
1000062b4: d65f03c0    	ret

00000001000062b8 <_main>:
1000062b8: a9be6ffc    	stp	x28, x27, [sp, #-0x20]!
1000062bc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000062c0: 910043fd    	add	x29, sp, #0x10
1000062c4: d10c43ff    	sub	sp, sp, #0x310
1000062c8: d10163a8    	sub	x8, x29, #0x58
1000062cc: f900a7e8    	str	x8, [sp, #0x148]
1000062d0: b81ec3bf    	stur	wzr, [x29, #-0x14]
1000062d4: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000062d8: f940d000    	ldr	x0, [x0, #0x1a0]
1000062dc: f900abe0    	str	x0, [sp, #0x150]
1000062e0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000062e4: 91239021    	add	x1, x1, #0x8e4
1000062e8: 97fff01d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000062ec: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000062f0: 91186021    	add	x1, x1, #0x618
1000062f4: f900afe1    	str	x1, [sp, #0x158]
1000062f8: 97fff019    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000062fc: f940abe0    	ldr	x0, [sp, #0x150]
100006300: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006304: 91243021    	add	x1, x1, #0x90c
100006308: 97fff015    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000630c: f940afe1    	ldr	x1, [sp, #0x158]
100006310: 97fff013    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006314: 97ffffd1    	bl	0x100006258 <displayMenu()>
100006318: 14000001    	b	0x10000631c <_main+0x64>
10000631c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006320: f940a000    	ldr	x0, [x0, #0x140]
100006324: d10063a1    	sub	x1, x29, #0x18
100006328: 940012b7    	bl	0x10000ae04 <_strlen+0x10000ae04>
10000632c: f9400008    	ldr	x8, [x0]
100006330: f85e8108    	ldur	x8, [x8, #-0x18]
100006334: 8b080000    	add	x0, x0, x8
100006338: 9400024a    	bl	0x100006c60 <std::__1::basic_ios<char, std::__1::char_traits<char>>::operator![abi:ne180100]() const>
10000633c: 360002a0    	tbz	w0, #0x0, 0x100006390 <_main+0xd8>
100006340: 14000001    	b	0x100006344 <_main+0x8c>
100006344: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006348: f940d000    	ldr	x0, [x0, #0x1a0]
10000634c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006350: 9124d021    	add	x1, x1, #0x934
100006354: 97fff002    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006358: d0000028    	adrp	x8, 0x10000c000 <_strlen+0x10000c000>
10000635c: f940a108    	ldr	x8, [x8, #0x140]
100006360: f900a3e8    	str	x8, [sp, #0x140]
100006364: f9400109    	ldr	x9, [x8]
100006368: f85e8129    	ldur	x9, [x9, #-0x18]
10000636c: 8b090100    	add	x0, x8, x9
100006370: 52800001    	mov	w1, #0x0                ; =0
100006374: 94000245    	bl	0x100006c88 <std::__1::basic_ios<char, std::__1::char_traits<char>>::clear[abi:ne180100](unsigned int)>
100006378: 9400024f    	bl	0x100006cb4 <std::__1::numeric_limits<long>::max[abi:ne180100]()>
10000637c: aa0003e1    	mov	x1, x0
100006380: f940a3e0    	ldr	x0, [sp, #0x140]
100006384: 52800142    	mov	w2, #0xa                ; =10
100006388: 94001299    	bl	0x10000adec <_strlen+0x10000adec>
10000638c: 17ffffe4    	b	0x10000631c <_main+0x64>
100006390: b85e83a8    	ldur	w8, [x29, #-0x18]
100006394: b9013fe8    	str	w8, [sp, #0x13c]
100006398: 71000508    	subs	w8, w8, #0x1
10000639c: 1a9f17e8    	cset	w8, eq
1000063a0: 370000e8    	tbnz	w8, #0x0, 0x1000063bc <_main+0x104>
1000063a4: 14000001    	b	0x1000063a8 <_main+0xf0>
1000063a8: b9413fe8    	ldr	w8, [sp, #0x13c]
1000063ac: 71001108    	subs	w8, w8, #0x4
1000063b0: 1a9f17e8    	cset	w8, eq
1000063b4: 370041e8    	tbnz	w8, #0x0, 0x100006bf0 <_main+0x938>
1000063b8: 14000215    	b	0x100006c0c <_main+0x954>
1000063bc: d100e3a8    	sub	x8, x29, #0x38
1000063c0: f90097e8    	str	x8, [sp, #0x128]
1000063c4: 97ffeefe    	bl	0x100001fbc <readDownloadFiles()>
1000063c8: f94097e0    	ldr	x0, [sp, #0x128]
1000063cc: 97fff465    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000063d0: aa0003e8    	mov	x8, x0
1000063d4: f94097e0    	ldr	x0, [sp, #0x128]
1000063d8: f9009be8    	str	x8, [sp, #0x130]
1000063dc: 97fff0ef    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
1000063e0: f9409be0    	ldr	x0, [sp, #0x130]
1000063e4: aa0003e8    	mov	x8, x0
1000063e8: b81e43a8    	stur	w8, [x29, #-0x1c]
1000063ec: b85e43a8    	ldur	w8, [x29, #-0x1c]
1000063f0: 71000508    	subs	w8, w8, #0x1
1000063f4: 1a9fb7e8    	cset	w8, ge
1000063f8: 370002a8    	tbnz	w8, #0x0, 0x10000644c <_main+0x194>
1000063fc: 14000001    	b	0x100006400 <_main+0x148>
100006400: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006404: f940d000    	ldr	x0, [x0, #0x1a0]
100006408: f9008fe0    	str	x0, [sp, #0x118]
10000640c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006410: 91257421    	add	x1, x1, #0x95d
100006414: 97ffefd2    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006418: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000641c: 91186021    	add	x1, x1, #0x618
100006420: f90093e1    	str	x1, [sp, #0x120]
100006424: 97ffefce    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006428: f9408fe0    	ldr	x0, [sp, #0x118]
10000642c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006430: 9125b421    	add	x1, x1, #0x96d
100006434: 97ffefca    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006438: f94093e1    	ldr	x1, [sp, #0x120]
10000643c: 97ffefc8    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006440: 52800020    	mov	w0, #0x1                ; =1
100006444: 940012e8    	bl	0x10000afe4 <_strlen+0x10000afe4>
100006448: 140001f7    	b	0x100006c24 <_main+0x96c>
10000644c: d10143a0    	sub	x0, x29, #0x50
100006450: 9400021e    	bl	0x100006cc8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>
100006454: 14000001    	b	0x100006458 <_main+0x1a0>
100006458: 14000001    	b	0x10000645c <_main+0x1a4>
10000645c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006460: f940d000    	ldr	x0, [x0, #0x1a0]
100006464: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006468: 9125e021    	add	x1, x1, #0x978
10000646c: 97ffefbc    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006470: f9008be0    	str	x0, [sp, #0x110]
100006474: 14000001    	b	0x100006478 <_main+0x1c0>
100006478: f9408be0    	ldr	x0, [sp, #0x110]
10000647c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006480: 91186021    	add	x1, x1, #0x618
100006484: 97ffefb6    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006488: 14000001    	b	0x10000648c <_main+0x1d4>
10000648c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006490: f940d000    	ldr	x0, [x0, #0x1a0]
100006494: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006498: 9126c021    	add	x1, x1, #0x9b0
10000649c: 97ffefb0    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000064a0: f90087e0    	str	x0, [sp, #0x108]
1000064a4: 14000001    	b	0x1000064a8 <_main+0x1f0>
1000064a8: f94087e0    	ldr	x0, [sp, #0x108]
1000064ac: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000064b0: 91186021    	add	x1, x1, #0x618
1000064b4: 97ffefaa    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000064b8: 14000001    	b	0x1000064bc <_main+0x204>
1000064bc: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000064c0: f940a000    	ldr	x0, [x0, #0x140]
1000064c4: d10143a1    	sub	x1, x29, #0x50
1000064c8: 9400020b    	bl	0x100006cf4 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)>
1000064cc: f90083e0    	str	x0, [sp, #0x100]
1000064d0: 14000001    	b	0x1000064d4 <_main+0x21c>
1000064d4: f94083e8    	ldr	x8, [sp, #0x100]
1000064d8: f9400109    	ldr	x9, [x8]
1000064dc: f85e8129    	ldur	x9, [x9, #-0x18]
1000064e0: 8b090100    	add	x0, x8, x9
1000064e4: 940002c7    	bl	0x100007000 <std::__1::basic_ios<char, std::__1::char_traits<char>>::operator bool[abi:ne180100]() const>
1000064e8: b900ffe0    	str	w0, [sp, #0xfc]
1000064ec: 14000001    	b	0x1000064f0 <_main+0x238>
1000064f0: b940ffe8    	ldr	w8, [sp, #0xfc]
1000064f4: 36003408    	tbz	w8, #0x0, 0x100006b74 <_main+0x8bc>
1000064f8: 14000001    	b	0x1000064fc <_main+0x244>
1000064fc: d101e3a8    	sub	x8, x29, #0x78
100006500: d10143a0    	sub	x0, x29, #0x50
100006504: 97ffee1d    	bl	0x100001d78 <toLowerCase(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>
100006508: 14000001    	b	0x10000650c <_main+0x254>
10000650c: d101e3a0    	sub	x0, x29, #0x78
100006510: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006514: 91278421    	add	x1, x1, #0x9e1
100006518: 97fff3df    	bl	0x100003494 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)>
10000651c: 36002e20    	tbz	w0, #0x0, 0x100006ae0 <_main+0x828>
100006520: 14000001    	b	0x100006524 <_main+0x26c>
100006524: b85e43a1    	ldur	w1, [x29, #-0x1c]
100006528: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000652c: f940d000    	ldr	x0, [x0, #0x1a0]
100006530: 9400123e    	bl	0x10000ae28 <_strlen+0x10000ae28>
100006534: f9007be0    	str	x0, [sp, #0xf0]
100006538: 14000001    	b	0x10000653c <_main+0x284>
10000653c: f9407be0    	ldr	x0, [sp, #0xf0]
100006540: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006544: 91278c21    	add	x1, x1, #0x9e3
100006548: 97ffef85    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000654c: f90077e0    	str	x0, [sp, #0xe8]
100006550: 14000001    	b	0x100006554 <_main+0x29c>
100006554: f94077e0    	ldr	x0, [sp, #0xe8]
100006558: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000655c: 91186021    	add	x1, x1, #0x618
100006560: 97ffef7f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006564: 14000001    	b	0x100006568 <_main+0x2b0>
100006568: 52800020    	mov	w0, #0x1                ; =1
10000656c: 9400129e    	bl	0x10000afe4 <_strlen+0x10000afe4>
100006570: 14000001    	b	0x100006574 <_main+0x2bc>
100006574: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006578: f940d000    	ldr	x0, [x0, #0x1a0]
10000657c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006580: 91280421    	add	x1, x1, #0xa01
100006584: 97ffef76    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006588: f90073e0    	str	x0, [sp, #0xe0]
10000658c: 14000001    	b	0x100006590 <_main+0x2d8>
100006590: f94073e0    	ldr	x0, [sp, #0xe0]
100006594: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006598: 91186021    	add	x1, x1, #0x618
10000659c: 97ffef70    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000065a0: 14000001    	b	0x1000065a4 <_main+0x2ec>
1000065a4: d10263a8    	sub	x8, x29, #0x98
1000065a8: 97fff163    	bl	0x100002b34 <findJPG()>
1000065ac: 14000001    	b	0x1000065b0 <_main+0x2f8>
1000065b0: d10263a0    	sub	x0, x29, #0x98
1000065b4: 97fff3eb    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000065b8: f9006fe0    	str	x0, [sp, #0xd8]
1000065bc: d102c3a8    	sub	x8, x29, #0xb0
1000065c0: 97fff3f2    	bl	0x100003588 <findPNG()>
1000065c4: 14000001    	b	0x1000065c8 <_main+0x310>
1000065c8: d102c3a0    	sub	x0, x29, #0xb0
1000065cc: 97fff3e5    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000065d0: f9406fe8    	ldr	x8, [sp, #0xd8]
1000065d4: 8b000108    	add	x8, x8, x0
1000065d8: f9006be8    	str	x8, [sp, #0xd0]
1000065dc: d10323a8    	sub	x8, x29, #0xc8
1000065e0: 97fff4e2    	bl	0x100003968 <findWebp()>
1000065e4: 14000001    	b	0x1000065e8 <_main+0x330>
1000065e8: d10323a0    	sub	x0, x29, #0xc8
1000065ec: 97fff3dd    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
1000065f0: f9406be8    	ldr	x8, [sp, #0xd0]
1000065f4: 8b000108    	add	x8, x8, x0
1000065f8: f90067e8    	str	x8, [sp, #0xc8]
1000065fc: d10383a8    	sub	x8, x29, #0xe0
100006600: 97fff5d2    	bl	0x100003d48 <findHEIC()>
100006604: 14000001    	b	0x100006608 <_main+0x350>
100006608: d10383a0    	sub	x0, x29, #0xe0
10000660c: 97fff3d5    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006610: f94067e8    	ldr	x8, [sp, #0xc8]
100006614: 8b000108    	add	x8, x8, x0
100006618: f90063e8    	str	x8, [sp, #0xc0]
10000661c: d103e3a8    	sub	x8, x29, #0xf8
100006620: 97fff6c2    	bl	0x100004128 <findSVG()>
100006624: 14000001    	b	0x100006628 <_main+0x370>
100006628: d103e3a0    	sub	x0, x29, #0xf8
10000662c: f90057e0    	str	x0, [sp, #0xa8]
100006630: 97fff3cc    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006634: f94063e8    	ldr	x8, [sp, #0xc0]
100006638: aa0003e9    	mov	x9, x0
10000663c: f94057e0    	ldr	x0, [sp, #0xa8]
100006640: 8b090108    	add	x8, x8, x9
100006644: f9005be8    	str	x8, [sp, #0xb0]
100006648: 97fff054    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000664c: d10383a0    	sub	x0, x29, #0xe0
100006650: 97fff052    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006654: d10323a0    	sub	x0, x29, #0xc8
100006658: 97fff050    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000665c: d102c3a0    	sub	x0, x29, #0xb0
100006660: 97fff04e    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006664: d10263a0    	sub	x0, x29, #0x98
100006668: 97fff04c    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000666c: f9405be8    	ldr	x8, [sp, #0xb0]
100006670: b81843a8    	stur	w8, [x29, #-0x7c]
100006674: b85843a1    	ldur	w1, [x29, #-0x7c]
100006678: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000667c: f940d000    	ldr	x0, [x0, #0x1a0]
100006680: 940011ea    	bl	0x10000ae28 <_strlen+0x10000ae28>
100006684: f9005fe0    	str	x0, [sp, #0xb8]
100006688: 14000001    	b	0x10000668c <_main+0x3d4>
10000668c: f9405fe0    	ldr	x0, [sp, #0xb8]
100006690: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006694: 91287421    	add	x1, x1, #0xa1d
100006698: 97ffef31    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000669c: f90053e0    	str	x0, [sp, #0xa0]
1000066a0: 14000001    	b	0x1000066a4 <_main+0x3ec>
1000066a4: f94053e0    	ldr	x0, [sp, #0xa0]
1000066a8: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000066ac: 91186021    	add	x1, x1, #0x618
1000066b0: 97ffef2b    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000066b4: 14000001    	b	0x1000066b8 <_main+0x400>
1000066b8: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000066bc: f940d000    	ldr	x0, [x0, #0x1a0]
1000066c0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000066c4: 91186021    	add	x1, x1, #0x618
1000066c8: 97ffef25    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000066cc: 14000001    	b	0x1000066d0 <_main+0x418>
1000066d0: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000066d4: f940d000    	ldr	x0, [x0, #0x1a0]
1000066d8: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000066dc: 9128fc21    	add	x1, x1, #0xa3f
1000066e0: 97ffef1f    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000066e4: f9004fe0    	str	x0, [sp, #0x98]
1000066e8: 14000001    	b	0x1000066ec <_main+0x434>
1000066ec: f9404fe0    	ldr	x0, [sp, #0x98]
1000066f0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000066f4: 91186021    	add	x1, x1, #0x618
1000066f8: 97ffef19    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000066fc: 14000001    	b	0x100006700 <_main+0x448>
100006700: 910823e8    	add	x8, sp, #0x208
100006704: 97fff781    	bl	0x100004508 <findDoc()>
100006708: 14000001    	b	0x10000670c <_main+0x454>
10000670c: 910823e0    	add	x0, sp, #0x208
100006710: 97fff394    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006714: f9004be0    	str	x0, [sp, #0x90]
100006718: 9107c3e8    	add	x8, sp, #0x1f0
10000671c: 97fff8ff    	bl	0x100004b18 <findPDF()>
100006720: 14000001    	b	0x100006724 <_main+0x46c>
100006724: 9107c3e0    	add	x0, sp, #0x1f0
100006728: 97fff38e    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
10000672c: f9404be8    	ldr	x8, [sp, #0x90]
100006730: 8b000108    	add	x8, x8, x0
100006734: f90047e8    	str	x8, [sp, #0x88]
100006738: 910763e8    	add	x8, sp, #0x1d8
10000673c: 97fff9ef    	bl	0x100004ef8 <findTXT()>
100006740: 14000001    	b	0x100006744 <_main+0x48c>
100006744: 910763e0    	add	x0, sp, #0x1d8
100006748: f9003be0    	str	x0, [sp, #0x70]
10000674c: 97fff385    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006750: f94047e8    	ldr	x8, [sp, #0x88]
100006754: aa0003e9    	mov	x9, x0
100006758: f9403be0    	ldr	x0, [sp, #0x70]
10000675c: 8b090108    	add	x8, x8, x9
100006760: f9003fe8    	str	x8, [sp, #0x78]
100006764: 97fff00d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006768: 9107c3e0    	add	x0, sp, #0x1f0
10000676c: 97fff00b    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006770: 910823e0    	add	x0, sp, #0x208
100006774: 97fff009    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006778: f9403fe8    	ldr	x8, [sp, #0x78]
10000677c: b81043a8    	stur	w8, [x29, #-0xfc]
100006780: b85043a1    	ldur	w1, [x29, #-0xfc]
100006784: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006788: f940d000    	ldr	x0, [x0, #0x1a0]
10000678c: 940011a7    	bl	0x10000ae28 <_strlen+0x10000ae28>
100006790: f90043e0    	str	x0, [sp, #0x80]
100006794: 14000001    	b	0x100006798 <_main+0x4e0>
100006798: f94043e0    	ldr	x0, [sp, #0x80]
10000679c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000067a0: 91296c21    	add	x1, x1, #0xa5b
1000067a4: 97ffeeee    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000067a8: f90037e0    	str	x0, [sp, #0x68]
1000067ac: 14000001    	b	0x1000067b0 <_main+0x4f8>
1000067b0: f94037e0    	ldr	x0, [sp, #0x68]
1000067b4: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000067b8: 91186021    	add	x1, x1, #0x618
1000067bc: 97ffeee8    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000067c0: 14000001    	b	0x1000067c4 <_main+0x50c>
1000067c4: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000067c8: f940d000    	ldr	x0, [x0, #0x1a0]
1000067cc: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000067d0: 91186021    	add	x1, x1, #0x618
1000067d4: 97ffeee2    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000067d8: 14000001    	b	0x1000067dc <_main+0x524>
1000067dc: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000067e0: f940d000    	ldr	x0, [x0, #0x1a0]
1000067e4: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000067e8: 9129f021    	add	x1, x1, #0xa7c
1000067ec: 97ffeedc    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000067f0: f90033e0    	str	x0, [sp, #0x60]
1000067f4: 14000001    	b	0x1000067f8 <_main+0x540>
1000067f8: f94033e0    	ldr	x0, [sp, #0x60]
1000067fc: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006800: 91186021    	add	x1, x1, #0x618
100006804: 97ffeed6    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006808: 14000001    	b	0x10000680c <_main+0x554>
10000680c: 9106e3e8    	add	x8, sp, #0x1b8
100006810: 97fffab2    	bl	0x1000052d8 <findMP4()>
100006814: 14000001    	b	0x100006818 <_main+0x560>
100006818: 9106e3e0    	add	x0, sp, #0x1b8
10000681c: 97fff351    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006820: f9002fe0    	str	x0, [sp, #0x58]
100006824: 910683e8    	add	x8, sp, #0x1a0
100006828: 97fffba4    	bl	0x1000056b8 <findMOV()>
10000682c: 14000001    	b	0x100006830 <_main+0x578>
100006830: 910683e0    	add	x0, sp, #0x1a0
100006834: f90023e0    	str	x0, [sp, #0x40]
100006838: 97fff34a    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
10000683c: f9402fe8    	ldr	x8, [sp, #0x58]
100006840: aa0003e9    	mov	x9, x0
100006844: f94023e0    	ldr	x0, [sp, #0x40]
100006848: 8b090108    	add	x8, x8, x9
10000684c: f90027e8    	str	x8, [sp, #0x48]
100006850: 97ffefd2    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006854: 9106e3e0    	add	x0, sp, #0x1b8
100006858: 97ffefd0    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
10000685c: f94027e8    	ldr	x8, [sp, #0x48]
100006860: b901d7e8    	str	w8, [sp, #0x1d4]
100006864: b941d7e1    	ldr	w1, [sp, #0x1d4]
100006868: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
10000686c: f940d000    	ldr	x0, [x0, #0x1a0]
100006870: 9400116e    	bl	0x10000ae28 <_strlen+0x10000ae28>
100006874: f9002be0    	str	x0, [sp, #0x50]
100006878: 14000001    	b	0x10000687c <_main+0x5c4>
10000687c: f9402be0    	ldr	x0, [sp, #0x50]
100006880: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006884: 912a6021    	add	x1, x1, #0xa98
100006888: 97ffeeb5    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
10000688c: f9001fe0    	str	x0, [sp, #0x38]
100006890: 14000001    	b	0x100006894 <_main+0x5dc>
100006894: f9401fe0    	ldr	x0, [sp, #0x38]
100006898: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
10000689c: 91186021    	add	x1, x1, #0x618
1000068a0: 97ffeeaf    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000068a4: 14000001    	b	0x1000068a8 <_main+0x5f0>
1000068a8: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000068ac: f940d000    	ldr	x0, [x0, #0x1a0]
1000068b0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000068b4: 91186021    	add	x1, x1, #0x618
1000068b8: 97ffeea9    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000068bc: 14000001    	b	0x1000068c0 <_main+0x608>
1000068c0: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000068c4: f940d000    	ldr	x0, [x0, #0x1a0]
1000068c8: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000068cc: 912ae821    	add	x1, x1, #0xaba
1000068d0: 97ffeea3    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000068d4: f9001be0    	str	x0, [sp, #0x30]
1000068d8: 14000001    	b	0x1000068dc <_main+0x624>
1000068dc: f9401be0    	ldr	x0, [sp, #0x30]
1000068e0: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000068e4: 91186021    	add	x1, x1, #0x618
1000068e8: 97ffee9d    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000068ec: 14000001    	b	0x1000068f0 <_main+0x638>
1000068f0: 910603e8    	add	x8, sp, #0x180
1000068f4: 97fffc69    	bl	0x100005a98 <findMP3()>
1000068f8: 14000001    	b	0x1000068fc <_main+0x644>
1000068fc: 910603e0    	add	x0, sp, #0x180
100006900: 97fff318    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006904: f90017e0    	str	x0, [sp, #0x28]
100006908: 9105a3e8    	add	x8, sp, #0x168
10000690c: 97fffd5b    	bl	0x100005e78 <findWAV()>
100006910: 14000001    	b	0x100006914 <_main+0x65c>
100006914: 9105a3e0    	add	x0, sp, #0x168
100006918: f9000be0    	str	x0, [sp, #0x10]
10000691c: 97fff311    	bl	0x100003560 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::size[abi:ne180100]() const>
100006920: f94017e8    	ldr	x8, [sp, #0x28]
100006924: aa0003e9    	mov	x9, x0
100006928: f9400be0    	ldr	x0, [sp, #0x10]
10000692c: 8b090108    	add	x8, x8, x9
100006930: f9000fe8    	str	x8, [sp, #0x18]
100006934: 97ffef99    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006938: 910603e0    	add	x0, sp, #0x180
10000693c: 97ffef97    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006940: f9400fe8    	ldr	x8, [sp, #0x18]
100006944: b9019fe8    	str	w8, [sp, #0x19c]
100006948: b9419fe1    	ldr	w1, [sp, #0x19c]
10000694c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006950: f940d000    	ldr	x0, [x0, #0x1a0]
100006954: 94001135    	bl	0x10000ae28 <_strlen+0x10000ae28>
100006958: f90013e0    	str	x0, [sp, #0x20]
10000695c: 14000001    	b	0x100006960 <_main+0x6a8>
100006960: f94013e0    	ldr	x0, [sp, #0x20]
100006964: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006968: 912b5421    	add	x1, x1, #0xad5
10000696c: 97ffee7c    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006970: f90007e0    	str	x0, [sp, #0x8]
100006974: 14000001    	b	0x100006978 <_main+0x6c0>
100006978: f94007e0    	ldr	x0, [sp, #0x8]
10000697c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006980: 91186021    	add	x1, x1, #0x618
100006984: 97ffee76    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006988: 14000001    	b	0x10000698c <_main+0x6d4>
10000698c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006990: f940d000    	ldr	x0, [x0, #0x1a0]
100006994: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006998: 91186021    	add	x1, x1, #0x618
10000699c: 97ffee70    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000069a0: 14000001    	b	0x1000069a4 <_main+0x6ec>
1000069a4: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
1000069a8: f940d000    	ldr	x0, [x0, #0x1a0]
1000069ac: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
1000069b0: 912bdc21    	add	x1, x1, #0xaf7
1000069b4: 97ffee6a    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
1000069b8: 14000001    	b	0x1000069bc <_main+0x704>
1000069bc: 528000c8    	mov	w8, #0x6                ; =6
1000069c0: b90167e8    	str	w8, [sp, #0x164]
1000069c4: 14000060    	b	0x100006b44 <_main+0x88c>
1000069c8: f940a7e8    	ldr	x8, [sp, #0x148]
1000069cc: f9000100    	str	x0, [x8]
1000069d0: aa0103e8    	mov	x8, x1
1000069d4: b81a43a8    	stur	w8, [x29, #-0x5c]
1000069d8: 14000083    	b	0x100006be4 <_main+0x92c>
1000069dc: f940a7e8    	ldr	x8, [sp, #0x148]
1000069e0: f9000100    	str	x0, [x8]
1000069e4: aa0103e8    	mov	x8, x1
1000069e8: b81a43a8    	stur	w8, [x29, #-0x5c]
1000069ec: 1400005f    	b	0x100006b68 <_main+0x8b0>
1000069f0: f940a7e8    	ldr	x8, [sp, #0x148]
1000069f4: f9000100    	str	x0, [x8]
1000069f8: aa0103e8    	mov	x8, x1
1000069fc: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a00: 14000018    	b	0x100006a60 <_main+0x7a8>
100006a04: f940a7e8    	ldr	x8, [sp, #0x148]
100006a08: f9000100    	str	x0, [x8]
100006a0c: aa0103e8    	mov	x8, x1
100006a10: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a14: 14000010    	b	0x100006a54 <_main+0x79c>
100006a18: f940a7e8    	ldr	x8, [sp, #0x148]
100006a1c: f9000100    	str	x0, [x8]
100006a20: aa0103e8    	mov	x8, x1
100006a24: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a28: 14000008    	b	0x100006a48 <_main+0x790>
100006a2c: f940a7e8    	ldr	x8, [sp, #0x148]
100006a30: f9000100    	str	x0, [x8]
100006a34: aa0103e8    	mov	x8, x1
100006a38: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a3c: d10383a0    	sub	x0, x29, #0xe0
100006a40: 97ffef56    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006a44: 14000001    	b	0x100006a48 <_main+0x790>
100006a48: d10323a0    	sub	x0, x29, #0xc8
100006a4c: 97ffef53    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006a50: 14000001    	b	0x100006a54 <_main+0x79c>
100006a54: d102c3a0    	sub	x0, x29, #0xb0
100006a58: 97ffef50    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006a5c: 14000001    	b	0x100006a60 <_main+0x7a8>
100006a60: d10263a0    	sub	x0, x29, #0x98
100006a64: 97ffef4d    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006a68: 14000040    	b	0x100006b68 <_main+0x8b0>
100006a6c: f940a7e8    	ldr	x8, [sp, #0x148]
100006a70: f9000100    	str	x0, [x8]
100006a74: aa0103e8    	mov	x8, x1
100006a78: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a7c: 14000008    	b	0x100006a9c <_main+0x7e4>
100006a80: f940a7e8    	ldr	x8, [sp, #0x148]
100006a84: f9000100    	str	x0, [x8]
100006a88: aa0103e8    	mov	x8, x1
100006a8c: b81a43a8    	stur	w8, [x29, #-0x5c]
100006a90: 9107c3e0    	add	x0, sp, #0x1f0
100006a94: 97ffef41    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006a98: 14000001    	b	0x100006a9c <_main+0x7e4>
100006a9c: 910823e0    	add	x0, sp, #0x208
100006aa0: 97ffef3e    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006aa4: 14000031    	b	0x100006b68 <_main+0x8b0>
100006aa8: f940a7e8    	ldr	x8, [sp, #0x148]
100006aac: f9000100    	str	x0, [x8]
100006ab0: aa0103e8    	mov	x8, x1
100006ab4: b81a43a8    	stur	w8, [x29, #-0x5c]
100006ab8: 9106e3e0    	add	x0, sp, #0x1b8
100006abc: 97ffef37    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006ac0: 1400002a    	b	0x100006b68 <_main+0x8b0>
100006ac4: f940a7e8    	ldr	x8, [sp, #0x148]
100006ac8: f9000100    	str	x0, [x8]
100006acc: aa0103e8    	mov	x8, x1
100006ad0: b81a43a8    	stur	w8, [x29, #-0x5c]
100006ad4: 910603e0    	add	x0, sp, #0x180
100006ad8: 97ffef30    	bl	0x100002798 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>
100006adc: 14000023    	b	0x100006b68 <_main+0x8b0>
100006ae0: d101e3a0    	sub	x0, x29, #0x78
100006ae4: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006ae8: 912c8c21    	add	x1, x1, #0xb23
100006aec: 97fff26a    	bl	0x100003494 <bool std::__1::operator==[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, char const*)>
100006af0: 36000160    	tbz	w0, #0x0, 0x100006b1c <_main+0x864>
100006af4: 14000001    	b	0x100006af8 <_main+0x840>
100006af8: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006afc: f940d000    	ldr	x0, [x0, #0x1a0]
100006b00: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006b04: 912c9421    	add	x1, x1, #0xb25
100006b08: 97ffee15    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006b0c: 14000001    	b	0x100006b10 <_main+0x858>
100006b10: 528000c8    	mov	w8, #0x6                ; =6
100006b14: b90167e8    	str	w8, [sp, #0x164]
100006b18: 1400000b    	b	0x100006b44 <_main+0x88c>
100006b1c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006b20: f940d000    	ldr	x0, [x0, #0x1a0]
100006b24: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006b28: 912cf021    	add	x1, x1, #0xb3c
100006b2c: 97ffee0c    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006b30: 14000001    	b	0x100006b34 <_main+0x87c>
100006b34: 14000001    	b	0x100006b38 <_main+0x880>
100006b38: 14000001    	b	0x100006b3c <_main+0x884>
100006b3c: b90167ff    	str	wzr, [sp, #0x164]
100006b40: 14000001    	b	0x100006b44 <_main+0x88c>
100006b44: d101e3a0    	sub	x0, x29, #0x78
100006b48: 940010a6    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006b4c: b94167e8    	ldr	w8, [sp, #0x164]
100006b50: 71000108    	subs	w8, w8, #0x0
100006b54: 1a9f17e8    	cset	w8, eq
100006b58: 37000068    	tbnz	w8, #0x0, 0x100006b64 <_main+0x8ac>
100006b5c: 14000001    	b	0x100006b60 <_main+0x8a8>
100006b60: 1400001c    	b	0x100006bd0 <_main+0x918>
100006b64: 1400001a    	b	0x100006bcc <_main+0x914>
100006b68: d101e3a0    	sub	x0, x29, #0x78
100006b6c: 9400109d    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006b70: 1400001d    	b	0x100006be4 <_main+0x92c>
100006b74: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006b78: f940cc00    	ldr	x0, [x0, #0x198]
100006b7c: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006b80: 912d9421    	add	x1, x1, #0xb65
100006b84: 97ffedf6    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006b88: 14000001    	b	0x100006b8c <_main+0x8d4>
100006b8c: d0000028    	adrp	x8, 0x10000c000 <_strlen+0x10000c000>
100006b90: f940a108    	ldr	x8, [x8, #0x140]
100006b94: f9400109    	ldr	x9, [x8]
100006b98: f85e8129    	ldur	x9, [x9, #-0x18]
100006b9c: 8b090100    	add	x0, x8, x9
100006ba0: 52800001    	mov	w1, #0x0                ; =0
100006ba4: 94000039    	bl	0x100006c88 <std::__1::basic_ios<char, std::__1::char_traits<char>>::clear[abi:ne180100](unsigned int)>
100006ba8: 14000001    	b	0x100006bac <_main+0x8f4>
100006bac: 94000042    	bl	0x100006cb4 <std::__1::numeric_limits<long>::max[abi:ne180100]()>
100006bb0: aa0003e1    	mov	x1, x0
100006bb4: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006bb8: f940a000    	ldr	x0, [x0, #0x140]
100006bbc: 52800142    	mov	w2, #0xa                ; =10
100006bc0: 9400108b    	bl	0x10000adec <_strlen+0x10000adec>
100006bc4: 14000001    	b	0x100006bc8 <_main+0x910>
100006bc8: 14000001    	b	0x100006bcc <_main+0x914>
100006bcc: 17fffe23    	b	0x100006458 <_main+0x1a0>
100006bd0: 52800088    	mov	w8, #0x4                ; =4
100006bd4: b90167e8    	str	w8, [sp, #0x164]
100006bd8: d10143a0    	sub	x0, x29, #0x50
100006bdc: 94001081    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006be0: 14000011    	b	0x100006c24 <_main+0x96c>
100006be4: d10143a0    	sub	x0, x29, #0x50
100006be8: 9400107e    	bl	0x10000ade0 <_strlen+0x10000ade0>
100006bec: 1400001a    	b	0x100006c54 <_main+0x99c>
100006bf0: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006bf4: f940d000    	ldr	x0, [x0, #0x1a0]
100006bf8: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006bfc: 912e3421    	add	x1, x1, #0xb8d
100006c00: 97ffedd7    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006c04: 52800000    	mov	w0, #0x0                ; =0
100006c08: 940010eb    	bl	0x10000afb4 <_strlen+0x10000afb4>
100006c0c: d0000020    	adrp	x0, 0x10000c000 <_strlen+0x10000c000>
100006c10: f940d000    	ldr	x0, [x0, #0x1a0]
100006c14: b0000021    	adrp	x1, 0x10000b000 <GCC_except_table0+0x4>
100006c18: 912e7021    	add	x1, x1, #0xb9c
100006c1c: 97ffedd0    	bl	0x10000235c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::operator<<[abi:ne180100]<std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*)>
100006c20: 14000001    	b	0x100006c24 <_main+0x96c>
100006c24: d0000028    	adrp	x8, 0x10000c000 <_strlen+0x10000c000>
100006c28: f940a108    	ldr	x8, [x8, #0x140]
100006c2c: f9400109    	ldr	x9, [x8]
100006c30: f85e8129    	ldur	x9, [x9, #-0x18]
100006c34: 8b090100    	add	x0, x8, x9
100006c38: 52800001    	mov	w1, #0x0                ; =0
100006c3c: 94000013    	bl	0x100006c88 <std::__1::basic_ios<char, std::__1::char_traits<char>>::clear[abi:ne180100](unsigned int)>
100006c40: b85ec3a0    	ldur	w0, [x29, #-0x14]
100006c44: 910c43ff    	add	sp, sp, #0x310
100006c48: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100006c4c: a8c26ffc    	ldp	x28, x27, [sp], #0x20
100006c50: d65f03c0    	ret
100006c54: f940a7e8    	ldr	x8, [sp, #0x148]
100006c58: f9400100    	ldr	x0, [x8]
100006c5c: 94001019    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100006c60 <std::__1::basic_ios<char, std::__1::char_traits<char>>::operator![abi:ne180100]() const>:
100006c60: d10083ff    	sub	sp, sp, #0x20
100006c64: a9017bfd    	stp	x29, x30, [sp, #0x10]
100006c68: 910043fd    	add	x29, sp, #0x10
100006c6c: f90007e0    	str	x0, [sp, #0x8]
100006c70: f94007e0    	ldr	x0, [sp, #0x8]
100006c74: 94000f39    	bl	0x10000a958 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fail[abi:ne180100]() const>
100006c78: 12000000    	and	w0, w0, #0x1
100006c7c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100006c80: 910083ff    	add	sp, sp, #0x20
100006c84: d65f03c0    	ret

0000000100006c88 <std::__1::basic_ios<char, std::__1::char_traits<char>>::clear[abi:ne180100](unsigned int)>:
100006c88: d10083ff    	sub	sp, sp, #0x20
100006c8c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100006c90: 910043fd    	add	x29, sp, #0x10
100006c94: f90007e0    	str	x0, [sp, #0x8]
100006c98: b90007e1    	str	w1, [sp, #0x4]
100006c9c: f94007e0    	ldr	x0, [sp, #0x8]
100006ca0: b94007e1    	ldr	w1, [sp, #0x4]
100006ca4: 9400109a    	bl	0x10000af0c <_strlen+0x10000af0c>
100006ca8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100006cac: 910083ff    	add	sp, sp, #0x20
100006cb0: d65f03c0    	ret

0000000100006cb4 <std::__1::numeric_limits<long>::max[abi:ne180100]()>:
100006cb4: a9bf7bfd    	stp	x29, x30, [sp, #-0x10]!
100006cb8: 910003fd    	mov	x29, sp
100006cbc: 94000509    	bl	0x1000080e0 <std::__1::__libcpp_numeric_limits<long, true>::max[abi:ne180100]()>
100006cc0: a8c17bfd    	ldp	x29, x30, [sp], #0x10
100006cc4: d65f03c0    	ret

0000000100006cc8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>:
100006cc8: d10083ff    	sub	sp, sp, #0x20
100006ccc: a9017bfd    	stp	x29, x30, [sp, #0x10]
100006cd0: 910043fd    	add	x29, sp, #0x10
100006cd4: f90007e0    	str	x0, [sp, #0x8]
100006cd8: f94007e0    	ldr	x0, [sp, #0x8]
100006cdc: f90003e0    	str	x0, [sp]
100006ce0: 94000502    	bl	0x1000080e8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>
100006ce4: f94003e0    	ldr	x0, [sp]
100006ce8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100006cec: 910083ff    	add	sp, sp, #0x20
100006cf0: d65f03c0    	ret

0000000100006cf4 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)>:
100006cf4: d10243ff    	sub	sp, sp, #0x90
100006cf8: a9087bfd    	stp	x29, x30, [sp, #0x80]
100006cfc: 910203fd    	add	x29, sp, #0x80
100006d00: f81f83a0    	stur	x0, [x29, #-0x8]
100006d04: f81f03a1    	stur	x1, [x29, #-0x10]
100006d08: 52800008    	mov	w8, #0x0                ; =0
100006d0c: b81ec3bf    	stur	wzr, [x29, #-0x14]
100006d10: f85f83a1    	ldur	x1, [x29, #-0x8]
100006d14: d10057a0    	sub	x0, x29, #0x15
100006d18: f90017e0    	str	x0, [sp, #0x28]
100006d1c: 12000102    	and	w2, w8, #0x1
100006d20: 94001036    	bl	0x10000adf8 <_strlen+0x10000adf8>
100006d24: f94017e0    	ldr	x0, [sp, #0x28]
100006d28: 94000f20    	bl	0x10000a9a8 <std::__1::basic_istream<char, std::__1::char_traits<char>>::sentry::operator bool[abi:ne180100]() const>
100006d2c: 360015a0    	tbz	w0, #0x0, 0x100006fe0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2ec>
100006d30: 14000001    	b	0x100006d34 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x40>
100006d34: f85f03a0    	ldur	x0, [x29, #-0x10]
100006d38: 94000f23    	bl	0x10000a9c4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()>
100006d3c: f85f83a8    	ldur	x8, [x29, #-0x8]
100006d40: f9400109    	ldr	x9, [x8]
100006d44: f85e8129    	ldur	x9, [x9, #-0x18]
100006d48: 8b090100    	add	x0, x8, x9
100006d4c: 94000780    	bl	0x100008b4c <std::__1::ios_base::width[abi:ne180100]() const>
100006d50: f81e03a0    	stur	x0, [x29, #-0x20]
100006d54: f85e03a8    	ldur	x8, [x29, #-0x20]
100006d58: f1000108    	subs	x8, x8, #0x0
100006d5c: 1a9fd7e8    	cset	w8, gt
100006d60: 370000c8    	tbnz	w8, #0x0, 0x100006d78 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x84>
100006d64: 14000001    	b	0x100006d68 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x74>
100006d68: f85f03a0    	ldur	x0, [x29, #-0x10]
100006d6c: 94000aea    	bl	0x100009914 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const>
100006d70: f81e03a0    	stur	x0, [x29, #-0x20]
100006d74: 14000001    	b	0x100006d78 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x84>
100006d78: f85e03a8    	ldur	x8, [x29, #-0x20]
100006d7c: f1000108    	subs	x8, x8, #0x0
100006d80: 1a9fd7e8    	cset	w8, gt
100006d84: 370000a8    	tbnz	w8, #0x0, 0x100006d98 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xa4>
100006d88: 14000001    	b	0x100006d8c <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x98>
100006d8c: 97ffffca    	bl	0x100006cb4 <std::__1::numeric_limits<long>::max[abi:ne180100]()>
100006d90: f81e03a0    	stur	x0, [x29, #-0x20]
100006d94: 14000001    	b	0x100006d98 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xa4>
100006d98: f81d83bf    	stur	xzr, [x29, #-0x28]
100006d9c: f85f83a8    	ldur	x8, [x29, #-0x8]
100006da0: f9400109    	ldr	x9, [x8]
100006da4: f85e8129    	ldur	x9, [x9, #-0x18]
100006da8: 8b090100    	add	x0, x8, x9
100006dac: d100e3a8    	sub	x8, x29, #0x38
100006db0: 94000fd9    	bl	0x10000ad14 <_strlen+0x10000ad14>
100006db4: 14000001    	b	0x100006db8 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xc4>
100006db8: d100e3a0    	sub	x0, x29, #0x38
100006dbc: 94000806    	bl	0x100008dd4 <std::__1::ctype<char> const& std::__1::use_facet[abi:ne180100]<std::__1::ctype<char>>(std::__1::locale const&)>
100006dc0: f90013e0    	str	x0, [sp, #0x20]
100006dc4: 14000001    	b	0x100006dc8 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xd4>
100006dc8: d100e3a0    	sub	x0, x29, #0x38
100006dcc: 9400104a    	bl	0x10000aef4 <_strlen+0x10000aef4>
100006dd0: f94013e8    	ldr	x8, [sp, #0x20]
100006dd4: f81d03a8    	stur	x8, [x29, #-0x30]
100006dd8: 14000001    	b	0x100006ddc <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xe8>
100006ddc: f85d83a8    	ldur	x8, [x29, #-0x28]
100006de0: f85e03a9    	ldur	x9, [x29, #-0x20]
100006de4: eb090108    	subs	x8, x8, x9
100006de8: 1a9fb7e8    	cset	w8, ge
100006dec: 37000bc8    	tbnz	w8, #0x0, 0x100006f64 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x270>
100006df0: 14000001    	b	0x100006df4 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x100>
100006df4: f85f83a8    	ldur	x8, [x29, #-0x8]
100006df8: f9400109    	ldr	x9, [x8]
100006dfc: f85e8129    	ldur	x9, [x9, #-0x18]
100006e00: 8b090100    	add	x0, x8, x9
100006e04: 940007b8    	bl	0x100008ce4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::rdbuf[abi:ne180100]() const>
100006e08: f9000fe0    	str	x0, [sp, #0x18]
100006e0c: 14000001    	b	0x100006e10 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x11c>
100006e10: f9400fe0    	ldr	x0, [sp, #0x18]
100006e14: 94000f11    	bl	0x10000aa58 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()>
100006e18: b90017e0    	str	w0, [sp, #0x14]
100006e1c: 14000001    	b	0x100006e20 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x12c>
100006e20: b94017e8    	ldr	w8, [sp, #0x14]
100006e24: b9003be8    	str	w8, [sp, #0x38]
100006e28: b9403be8    	ldr	w8, [sp, #0x38]
100006e2c: b90013e8    	str	w8, [sp, #0x10]
100006e30: 940007c6    	bl	0x100008d48 <std::__1::char_traits<char>::eof[abi:ne180100]()>
100006e34: aa0003e1    	mov	x1, x0
100006e38: b94013e0    	ldr	w0, [sp, #0x10]
100006e3c: 940007b9    	bl	0x100008d20 <std::__1::char_traits<char>::eq_int_type[abi:ne180100](int, int)>
100006e40: 36000540    	tbz	w0, #0x0, 0x100006ee8 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x1f4>
100006e44: 14000001    	b	0x100006e48 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x154>
100006e48: b85ec3a8    	ldur	w8, [x29, #-0x14]
100006e4c: 321f0108    	orr	w8, w8, #0x2
100006e50: b81ec3a8    	stur	w8, [x29, #-0x14]
100006e54: 14000044    	b	0x100006f64 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x270>
100006e58: f90023e0    	str	x0, [sp, #0x40]
100006e5c: aa0103e8    	mov	x8, x1
100006e60: b9003fe8    	str	w8, [sp, #0x3c]
100006e64: 14000007    	b	0x100006e80 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x18c>
100006e68: f90023e0    	str	x0, [sp, #0x40]
100006e6c: aa0103e8    	mov	x8, x1
100006e70: b9003fe8    	str	w8, [sp, #0x3c]
100006e74: d100e3a0    	sub	x0, x29, #0x38
100006e78: 9400101f    	bl	0x10000aef4 <_strlen+0x10000aef4>
100006e7c: 14000001    	b	0x100006e80 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x18c>
100006e80: f94023e0    	ldr	x0, [sp, #0x40]
100006e84: 9400103a    	bl	0x10000af6c <_strlen+0x10000af6c>
100006e88: b85ec3a8    	ldur	w8, [x29, #-0x14]
100006e8c: 32000108    	orr	w8, w8, #0x1
100006e90: b81ec3a8    	stur	w8, [x29, #-0x14]
100006e94: f85f83a8    	ldur	x8, [x29, #-0x8]
100006e98: f9400109    	ldr	x9, [x8]
100006e9c: f85e8129    	ldur	x9, [x9, #-0x18]
100006ea0: 8b090100    	add	x0, x8, x9
100006ea4: b85ec3a1    	ldur	w1, [x29, #-0x14]
100006ea8: 94000f4b    	bl	0x10000abd4 <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)>
100006eac: 14000001    	b	0x100006eb0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x1bc>
100006eb0: f85f83a8    	ldur	x8, [x29, #-0x8]
100006eb4: f9400109    	ldr	x9, [x8]
100006eb8: f85e8129    	ldur	x9, [x9, #-0x18]
100006ebc: 8b090100    	add	x0, x8, x9
100006ec0: 94000f5e    	bl	0x10000ac38 <std::__1::basic_ios<char, std::__1::char_traits<char>>::exceptions[abi:ne180100]() const>
100006ec4: b9000fe0    	str	w0, [sp, #0xc]
100006ec8: 14000001    	b	0x100006ecc <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x1d8>
100006ecc: b9400fe8    	ldr	w8, [sp, #0xc]
100006ed0: 72000108    	ands	w8, w8, #0x1
100006ed4: 1a9f17e8    	cset	w8, eq
100006ed8: 37000708    	tbnz	w8, #0x0, 0x100006fb8 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2c4>
100006edc: 14000001    	b	0x100006ee0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x1ec>
100006ee0: 9400102c    	bl	0x10000af90 <_strlen+0x10000af90>
100006ee4: 14000046    	b	0x100006ffc <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x308>
100006ee8: b9403be0    	ldr	w0, [sp, #0x38]
100006eec: 94000ef7    	bl	0x10000aac8 <std::__1::char_traits<char>::to_char_type[abi:ne180100](int)>
100006ef0: 3900dfe0    	strb	w0, [sp, #0x37]
100006ef4: f85d03a0    	ldur	x0, [x29, #-0x30]
100006ef8: 39c0dfe2    	ldrsb	w2, [sp, #0x37]
100006efc: 52880001    	mov	w1, #0x4000             ; =16384
100006f00: 94000ef8    	bl	0x10000aae0 <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const>
100006f04: b9000be0    	str	w0, [sp, #0x8]
100006f08: 14000001    	b	0x100006f0c <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x218>
100006f0c: b9400be8    	ldr	w8, [sp, #0x8]
100006f10: 36000068    	tbz	w8, #0x0, 0x100006f1c <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x228>
100006f14: 14000001    	b	0x100006f18 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x224>
100006f18: 14000013    	b	0x100006f64 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x270>
100006f1c: f85f03a0    	ldur	x0, [x29, #-0x10]
100006f20: 39c0dfe1    	ldrsb	w1, [sp, #0x37]
100006f24: 94000fa6    	bl	0x10000adbc <_strlen+0x10000adbc>
100006f28: 14000001    	b	0x100006f2c <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x238>
100006f2c: f85d83a8    	ldur	x8, [x29, #-0x28]
100006f30: 91000508    	add	x8, x8, #0x1
100006f34: f81d83a8    	stur	x8, [x29, #-0x28]
100006f38: f85f83a8    	ldur	x8, [x29, #-0x8]
100006f3c: f9400109    	ldr	x9, [x8]
100006f40: f85e8129    	ldur	x9, [x9, #-0x18]
100006f44: 8b090100    	add	x0, x8, x9
100006f48: 94000767    	bl	0x100008ce4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::rdbuf[abi:ne180100]() const>
100006f4c: f90003e0    	str	x0, [sp]
100006f50: 14000001    	b	0x100006f54 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x260>
100006f54: f94003e0    	ldr	x0, [sp]
100006f58: 94000f01    	bl	0x10000ab5c <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()>
100006f5c: 14000001    	b	0x100006f60 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x26c>
100006f60: 17ffff9f    	b	0x100006ddc <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0xe8>
100006f64: f85f83a8    	ldur	x8, [x29, #-0x8]
100006f68: f9400109    	ldr	x9, [x8]
100006f6c: f85e8129    	ldur	x9, [x9, #-0x18]
100006f70: 8b090100    	add	x0, x8, x9
100006f74: d2800001    	mov	x1, #0x0                ; =0
100006f78: 94000723    	bl	0x100008c04 <std::__1::ios_base::width[abi:ne180100](long)>
100006f7c: f85d83a8    	ldur	x8, [x29, #-0x28]
100006f80: f1000108    	subs	x8, x8, #0x0
100006f84: 1a9f07e8    	cset	w8, ne
100006f88: 370000c8    	tbnz	w8, #0x0, 0x100006fa0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2ac>
100006f8c: 14000001    	b	0x100006f90 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x29c>
100006f90: b85ec3a8    	ldur	w8, [x29, #-0x14]
100006f94: 321e0108    	orr	w8, w8, #0x4
100006f98: b81ec3a8    	stur	w8, [x29, #-0x14]
100006f9c: 14000001    	b	0x100006fa0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2ac>
100006fa0: 14000008    	b	0x100006fc0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2cc>
100006fa4: f90023e0    	str	x0, [sp, #0x40]
100006fa8: aa0103e8    	mov	x8, x1
100006fac: b9003fe8    	str	w8, [sp, #0x3c]
100006fb0: 94000ff2    	bl	0x10000af78 <_strlen+0x10000af78>
100006fb4: 1400000a    	b	0x100006fdc <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2e8>
100006fb8: 94000ff0    	bl	0x10000af78 <_strlen+0x10000af78>
100006fbc: 14000001    	b	0x100006fc0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2cc>
100006fc0: f85f83a8    	ldur	x8, [x29, #-0x8]
100006fc4: f9400109    	ldr	x9, [x8]
100006fc8: f85e8129    	ldur	x9, [x9, #-0x18]
100006fcc: 8b090100    	add	x0, x8, x9
100006fd0: b85ec3a1    	ldur	w1, [x29, #-0x14]
100006fd4: 940006d3    	bl	0x100008b20 <std::__1::basic_ios<char, std::__1::char_traits<char>>::setstate[abi:ne180100](unsigned int)>
100006fd8: 14000002    	b	0x100006fe0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2ec>
100006fdc: 14000005    	b	0x100006ff0 <std::__1::basic_istream<char, std::__1::char_traits<char>>& std::__1::operator>>[abi:ne180100]<char, std::__1::char_traits<char>, std::__1::allocator<char>>(std::__1::basic_istream<char, std::__1::char_traits<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)+0x2fc>
100006fe0: f85f83a0    	ldur	x0, [x29, #-0x8]
100006fe4: a9487bfd    	ldp	x29, x30, [sp, #0x80]
100006fe8: 910243ff    	add	sp, sp, #0x90
100006fec: d65f03c0    	ret
100006ff0: f94023e0    	ldr	x0, [sp, #0x40]
100006ff4: 94000f33    	bl	0x10000acc0 <_strlen+0x10000acc0>
100006ff8: 97ffede4    	bl	0x100002788 <___clang_call_terminate>
100006ffc: d4200020    	brk	#0x1

0000000100007000 <std::__1::basic_ios<char, std::__1::char_traits<char>>::operator bool[abi:ne180100]() const>:
100007000: d10083ff    	sub	sp, sp, #0x20
100007004: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007008: 910043fd    	add	x29, sp, #0x10
10000700c: f90007e0    	str	x0, [sp, #0x8]
100007010: f94007e0    	ldr	x0, [sp, #0x8]
100007014: 94000e51    	bl	0x10000a958 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fail[abi:ne180100]() const>
100007018: 52000008    	eor	w8, w0, #0x1
10000701c: 12000100    	and	w0, w8, #0x1
100007020: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007024: 910083ff    	add	sp, sp, #0x20
100007028: d65f03c0    	ret

000000010000702c <std::__1::__fs::filesystem::path::~path[abi:ne180100]()>:
10000702c: d10083ff    	sub	sp, sp, #0x20
100007030: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007034: 910043fd    	add	x29, sp, #0x10
100007038: f90007e0    	str	x0, [sp, #0x8]
10000703c: f94007e0    	ldr	x0, [sp, #0x8]
100007040: f90003e0    	str	x0, [sp]
100007044: 94000f67    	bl	0x10000ade0 <_strlen+0x10000ade0>
100007048: f94003e0    	ldr	x0, [sp]
10000704c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007050: 910083ff    	add	sp, sp, #0x20
100007054: d65f03c0    	ret

0000000100007058 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator&&)>:
100007058: d100c3ff    	sub	sp, sp, #0x30
10000705c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007060: 910083fd    	add	x29, sp, #0x20
100007064: f81f83a0    	stur	x0, [x29, #-0x8]
100007068: f9000be1    	str	x1, [sp, #0x10]
10000706c: f85f83a0    	ldur	x0, [x29, #-0x8]
100007070: f90007e0    	str	x0, [sp, #0x8]
100007074: f9400be1    	ldr	x1, [sp, #0x10]
100007078: 94000005    	bl	0x10000708c <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator&&)>
10000707c: f94007e0    	ldr	x0, [sp, #0x8]
100007080: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007084: 9100c3ff    	add	sp, sp, #0x30
100007088: d65f03c0    	ret

000000010000708c <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator&&)>:
10000708c: d100c3ff    	sub	sp, sp, #0x30
100007090: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007094: 910083fd    	add	x29, sp, #0x20
100007098: f81f83a0    	stur	x0, [x29, #-0x8]
10000709c: f9000be1    	str	x1, [sp, #0x10]
1000070a0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000070a4: f90007e0    	str	x0, [sp, #0x8]
1000070a8: f9400be1    	ldr	x1, [sp, #0x10]
1000070ac: 94000005    	bl	0x1000070c0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>&&)>
1000070b0: f94007e0    	ldr	x0, [sp, #0x8]
1000070b4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000070b8: 9100c3ff    	add	sp, sp, #0x30
1000070bc: d65f03c0    	ret

00000001000070c0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>&&)>:
1000070c0: d100c3ff    	sub	sp, sp, #0x30
1000070c4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000070c8: 910083fd    	add	x29, sp, #0x20
1000070cc: f81f83a0    	stur	x0, [x29, #-0x8]
1000070d0: f9000be1    	str	x1, [sp, #0x10]
1000070d4: f85f83a0    	ldur	x0, [x29, #-0x8]
1000070d8: f90007e0    	str	x0, [sp, #0x8]
1000070dc: f9400be1    	ldr	x1, [sp, #0x10]
1000070e0: 94000005    	bl	0x1000070f4 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>&&)>
1000070e4: f94007e0    	ldr	x0, [sp, #0x8]
1000070e8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000070ec: 9100c3ff    	add	sp, sp, #0x30
1000070f0: d65f03c0    	ret

00000001000070f4 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>&&)>:
1000070f4: d10043ff    	sub	sp, sp, #0x10
1000070f8: f90007e0    	str	x0, [sp, #0x8]
1000070fc: f90003e1    	str	x1, [sp]
100007100: f94007e0    	ldr	x0, [sp, #0x8]
100007104: f94003e8    	ldr	x8, [sp]
100007108: f9400108    	ldr	x8, [x8]
10000710c: f9000008    	str	x8, [x0]
100007110: f94003e8    	ldr	x8, [sp]
100007114: f9400508    	ldr	x8, [x8, #0x8]
100007118: f9000408    	str	x8, [x0, #0x8]
10000711c: f94003e8    	ldr	x8, [sp]
100007120: f900011f    	str	xzr, [x8]
100007124: f94003e8    	ldr	x8, [sp]
100007128: f900051f    	str	xzr, [x8, #0x8]
10000712c: 910043ff    	add	sp, sp, #0x10
100007130: d65f03c0    	ret

0000000100007134 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&)>:
100007134: d100c3ff    	sub	sp, sp, #0x30
100007138: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000713c: 910083fd    	add	x29, sp, #0x20
100007140: f81f83a0    	stur	x0, [x29, #-0x8]
100007144: f9000be1    	str	x1, [sp, #0x10]
100007148: f85f83a0    	ldur	x0, [x29, #-0x8]
10000714c: f90007e0    	str	x0, [sp, #0x8]
100007150: f9400be1    	ldr	x1, [sp, #0x10]
100007154: 94000005    	bl	0x100007168 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>
100007158: f94007e0    	ldr	x0, [sp, #0x8]
10000715c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007160: 9100c3ff    	add	sp, sp, #0x30
100007164: d65f03c0    	ret

0000000100007168 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>:
100007168: d100c3ff    	sub	sp, sp, #0x30
10000716c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007170: 910083fd    	add	x29, sp, #0x20
100007174: f81f83a0    	stur	x0, [x29, #-0x8]
100007178: f9000be1    	str	x1, [sp, #0x10]
10000717c: f85f83a0    	ldur	x0, [x29, #-0x8]
100007180: f90007e0    	str	x0, [sp, #0x8]
100007184: f9400be1    	ldr	x1, [sp, #0x10]
100007188: 94000005    	bl	0x10000719c <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>
10000718c: f94007e0    	ldr	x0, [sp, #0x8]
100007190: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007194: 9100c3ff    	add	sp, sp, #0x30
100007198: d65f03c0    	ret

000000010000719c <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>:
10000719c: d100c3ff    	sub	sp, sp, #0x30
1000071a0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000071a4: 910083fd    	add	x29, sp, #0x20
1000071a8: f9000be0    	str	x0, [sp, #0x10]
1000071ac: f90007e1    	str	x1, [sp, #0x8]
1000071b0: f9400be8    	ldr	x8, [sp, #0x10]
1000071b4: f90003e8    	str	x8, [sp]
1000071b8: aa0803e9    	mov	x9, x8
1000071bc: f81f83a9    	stur	x9, [x29, #-0x8]
1000071c0: f94007e9    	ldr	x9, [sp, #0x8]
1000071c4: f9400129    	ldr	x9, [x9]
1000071c8: f9000109    	str	x9, [x8]
1000071cc: f94007e9    	ldr	x9, [sp, #0x8]
1000071d0: f9400529    	ldr	x9, [x9, #0x8]
1000071d4: f9000509    	str	x9, [x8, #0x8]
1000071d8: f9400508    	ldr	x8, [x8, #0x8]
1000071dc: f1000108    	subs	x8, x8, #0x0
1000071e0: 1a9f17e8    	cset	w8, eq
1000071e4: 370000c8    	tbnz	w8, #0x0, 0x1000071fc <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)+0x60>
1000071e8: 14000001    	b	0x1000071ec <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)+0x50>
1000071ec: f94003e8    	ldr	x8, [sp]
1000071f0: f9400500    	ldr	x0, [x8, #0x8]
1000071f4: 94000006    	bl	0x10000720c <std::__1::__shared_weak_count::__add_shared[abi:ne180100]()>
1000071f8: 14000001    	b	0x1000071fc <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100](std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)+0x60>
1000071fc: f85f83a0    	ldur	x0, [x29, #-0x8]
100007200: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007204: 9100c3ff    	add	sp, sp, #0x30
100007208: d65f03c0    	ret

000000010000720c <std::__1::__shared_weak_count::__add_shared[abi:ne180100]()>:
10000720c: d10083ff    	sub	sp, sp, #0x20
100007210: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007214: 910043fd    	add	x29, sp, #0x10
100007218: f90007e0    	str	x0, [sp, #0x8]
10000721c: f94007e0    	ldr	x0, [sp, #0x8]
100007220: 94000004    	bl	0x100007230 <std::__1::__shared_count::__add_shared[abi:ne180100]()>
100007224: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007228: 910083ff    	add	sp, sp, #0x20
10000722c: d65f03c0    	ret

0000000100007230 <std::__1::__shared_count::__add_shared[abi:ne180100]()>:
100007230: d10083ff    	sub	sp, sp, #0x20
100007234: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007238: 910043fd    	add	x29, sp, #0x10
10000723c: f90007e0    	str	x0, [sp, #0x8]
100007240: f94007e8    	ldr	x8, [sp, #0x8]
100007244: 91002100    	add	x0, x8, #0x8
100007248: 94000004    	bl	0x100007258 <long std::__1::__libcpp_atomic_refcount_increment[abi:ne180100]<long>(long&)>
10000724c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007250: 910083ff    	add	sp, sp, #0x20
100007254: d65f03c0    	ret

0000000100007258 <long std::__1::__libcpp_atomic_refcount_increment[abi:ne180100]<long>(long&)>:
100007258: d10083ff    	sub	sp, sp, #0x20
10000725c: f9000fe0    	str	x0, [sp, #0x18]
100007260: f9400fe8    	ldr	x8, [sp, #0x18]
100007264: d2800029    	mov	x9, #0x1                ; =1
100007268: f9000be9    	str	x9, [sp, #0x10]
10000726c: f9400be9    	ldr	x9, [sp, #0x10]
100007270: f8290108    	ldadd	x9, x8, [x8]
100007274: 8b090108    	add	x8, x8, x9
100007278: f90007e8    	str	x8, [sp, #0x8]
10000727c: f94007e0    	ldr	x0, [sp, #0x8]
100007280: 910083ff    	add	sp, sp, #0x20
100007284: d65f03c0    	ret

0000000100007288 <std::__1::__fs::filesystem::directory_iterator::~directory_iterator[abi:ne180100]()>:
100007288: d10083ff    	sub	sp, sp, #0x20
10000728c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007290: 910043fd    	add	x29, sp, #0x10
100007294: f90007e0    	str	x0, [sp, #0x8]
100007298: f94007e0    	ldr	x0, [sp, #0x8]
10000729c: f90003e0    	str	x0, [sp]
1000072a0: 94000005    	bl	0x1000072b4 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()>
1000072a4: f94003e0    	ldr	x0, [sp]
1000072a8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000072ac: 910083ff    	add	sp, sp, #0x20
1000072b0: d65f03c0    	ret

00000001000072b4 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()>:
1000072b4: d10083ff    	sub	sp, sp, #0x20
1000072b8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000072bc: 910043fd    	add	x29, sp, #0x10
1000072c0: f90007e0    	str	x0, [sp, #0x8]
1000072c4: f94007e0    	ldr	x0, [sp, #0x8]
1000072c8: f90003e0    	str	x0, [sp]
1000072cc: 94000005    	bl	0x1000072e0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()>
1000072d0: f94003e0    	ldr	x0, [sp]
1000072d4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000072d8: 910083ff    	add	sp, sp, #0x20
1000072dc: d65f03c0    	ret

00000001000072e0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()>:
1000072e0: d100c3ff    	sub	sp, sp, #0x30
1000072e4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000072e8: 910083fd    	add	x29, sp, #0x20
1000072ec: f9000be0    	str	x0, [sp, #0x10]
1000072f0: f9400be8    	ldr	x8, [sp, #0x10]
1000072f4: f90007e8    	str	x8, [sp, #0x8]
1000072f8: aa0803e9    	mov	x9, x8
1000072fc: f81f83a9    	stur	x9, [x29, #-0x8]
100007300: f9400508    	ldr	x8, [x8, #0x8]
100007304: f1000108    	subs	x8, x8, #0x0
100007308: 1a9f17e8    	cset	w8, eq
10000730c: 370000c8    	tbnz	w8, #0x0, 0x100007324 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()+0x44>
100007310: 14000001    	b	0x100007314 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()+0x34>
100007314: f94007e8    	ldr	x8, [sp, #0x8]
100007318: f9400500    	ldr	x0, [x8, #0x8]
10000731c: 94000006    	bl	0x100007334 <std::__1::__shared_weak_count::__release_shared[abi:ne180100]()>
100007320: 14000001    	b	0x100007324 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::~shared_ptr[abi:ne180100]()+0x44>
100007324: f85f83a0    	ldur	x0, [x29, #-0x8]
100007328: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000732c: 9100c3ff    	add	sp, sp, #0x30
100007330: d65f03c0    	ret

0000000100007334 <std::__1::__shared_weak_count::__release_shared[abi:ne180100]()>:
100007334: d10083ff    	sub	sp, sp, #0x20
100007338: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000733c: 910043fd    	add	x29, sp, #0x10
100007340: f90007e0    	str	x0, [sp, #0x8]
100007344: f94007e0    	ldr	x0, [sp, #0x8]
100007348: f90003e0    	str	x0, [sp]
10000734c: 94000009    	bl	0x100007370 <std::__1::__shared_count::__release_shared[abi:ne180100]()>
100007350: 360000a0    	tbz	w0, #0x0, 0x100007364 <std::__1::__shared_weak_count::__release_shared[abi:ne180100]()+0x30>
100007354: 14000001    	b	0x100007358 <std::__1::__shared_weak_count::__release_shared[abi:ne180100]()+0x24>
100007358: f94003e0    	ldr	x0, [sp]
10000735c: 94000ec5    	bl	0x10000ae70 <_strlen+0x10000ae70>
100007360: 14000001    	b	0x100007364 <std::__1::__shared_weak_count::__release_shared[abi:ne180100]()+0x30>
100007364: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007368: 910083ff    	add	sp, sp, #0x20
10000736c: d65f03c0    	ret

0000000100007370 <std::__1::__shared_count::__release_shared[abi:ne180100]()>:
100007370: d100c3ff    	sub	sp, sp, #0x30
100007374: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007378: 910083fd    	add	x29, sp, #0x20
10000737c: f9000be0    	str	x0, [sp, #0x10]
100007380: f9400be8    	ldr	x8, [sp, #0x10]
100007384: f90007e8    	str	x8, [sp, #0x8]
100007388: 91002100    	add	x0, x8, #0x8
10000738c: 94000018    	bl	0x1000073ec <long std::__1::__libcpp_atomic_refcount_decrement[abi:ne180100]<long>(long&)>
100007390: b1000408    	adds	x8, x0, #0x1
100007394: 1a9f07e8    	cset	w8, ne
100007398: 37000168    	tbnz	w8, #0x0, 0x1000073c4 <std::__1::__shared_count::__release_shared[abi:ne180100]()+0x54>
10000739c: 14000001    	b	0x1000073a0 <std::__1::__shared_count::__release_shared[abi:ne180100]()+0x30>
1000073a0: f94007e0    	ldr	x0, [sp, #0x8]
1000073a4: f9400008    	ldr	x8, [x0]
1000073a8: f9400908    	ldr	x8, [x8, #0x10]
1000073ac: d63f0100    	blr	x8
1000073b0: 52800028    	mov	w8, #0x1                ; =1
1000073b4: 12000108    	and	w8, w8, #0x1
1000073b8: 12000108    	and	w8, w8, #0x1
1000073bc: 381ff3a8    	sturb	w8, [x29, #-0x1]
1000073c0: 14000006    	b	0x1000073d8 <std::__1::__shared_count::__release_shared[abi:ne180100]()+0x68>
1000073c4: 52800008    	mov	w8, #0x0                ; =0
1000073c8: 12000108    	and	w8, w8, #0x1
1000073cc: 12000108    	and	w8, w8, #0x1
1000073d0: 381ff3a8    	sturb	w8, [x29, #-0x1]
1000073d4: 14000001    	b	0x1000073d8 <std::__1::__shared_count::__release_shared[abi:ne180100]()+0x68>
1000073d8: 385ff3a8    	ldurb	w8, [x29, #-0x1]
1000073dc: 12000100    	and	w0, w8, #0x1
1000073e0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000073e4: 9100c3ff    	add	sp, sp, #0x30
1000073e8: d65f03c0    	ret

00000001000073ec <long std::__1::__libcpp_atomic_refcount_decrement[abi:ne180100]<long>(long&)>:
1000073ec: d10083ff    	sub	sp, sp, #0x20
1000073f0: f9000fe0    	str	x0, [sp, #0x18]
1000073f4: f9400fe8    	ldr	x8, [sp, #0x18]
1000073f8: 92800009    	mov	x9, #-0x1               ; =-1
1000073fc: f9000be9    	str	x9, [sp, #0x10]
100007400: f9400be9    	ldr	x9, [sp, #0x10]
100007404: f8e90108    	ldaddal	x9, x8, [x8]
100007408: 8b090108    	add	x8, x8, x9
10000740c: f90007e8    	str	x8, [sp, #0x8]
100007410: f94007e0    	ldr	x0, [sp, #0x8]
100007414: 910083ff    	add	sp, sp, #0x20
100007418: d65f03c0    	ret

000000010000741c <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100]()>:
10000741c: d10083ff    	sub	sp, sp, #0x20
100007420: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007424: 910043fd    	add	x29, sp, #0x10
100007428: f90007e0    	str	x0, [sp, #0x8]
10000742c: f94007e0    	ldr	x0, [sp, #0x8]
100007430: f90003e0    	str	x0, [sp]
100007434: 94000005    	bl	0x100007448 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100]()>
100007438: f94003e0    	ldr	x0, [sp]
10000743c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007440: 910083ff    	add	sp, sp, #0x20
100007444: d65f03c0    	ret

0000000100007448 <std::__1::__fs::filesystem::directory_iterator::directory_iterator[abi:ne180100]()>:
100007448: d10083ff    	sub	sp, sp, #0x20
10000744c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007450: 910043fd    	add	x29, sp, #0x10
100007454: f90007e0    	str	x0, [sp, #0x8]
100007458: f94007e0    	ldr	x0, [sp, #0x8]
10000745c: f90003e0    	str	x0, [sp]
100007460: 94000005    	bl	0x100007474 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100]()>
100007464: f94003e0    	ldr	x0, [sp]
100007468: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000746c: 910083ff    	add	sp, sp, #0x20
100007470: d65f03c0    	ret

0000000100007474 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100]()>:
100007474: d10083ff    	sub	sp, sp, #0x20
100007478: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000747c: 910043fd    	add	x29, sp, #0x10
100007480: f90007e0    	str	x0, [sp, #0x8]
100007484: f94007e0    	ldr	x0, [sp, #0x8]
100007488: f90003e0    	str	x0, [sp]
10000748c: 94000005    	bl	0x1000074a0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100]()>
100007490: f94003e0    	ldr	x0, [sp]
100007494: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007498: 910083ff    	add	sp, sp, #0x20
10000749c: d65f03c0    	ret

00000001000074a0 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::shared_ptr[abi:ne180100]()>:
1000074a0: d10043ff    	sub	sp, sp, #0x10
1000074a4: f90007e0    	str	x0, [sp, #0x8]
1000074a8: f94007e0    	ldr	x0, [sp, #0x8]
1000074ac: f900001f    	str	xzr, [x0]
1000074b0: f900041f    	str	xzr, [x0, #0x8]
1000074b4: 910043ff    	add	sp, sp, #0x10
1000074b8: d65f03c0    	ret

00000001000074bc <std::__1::__fs::filesystem::operator==[abi:ne180100](std::__1::__fs::filesystem::directory_iterator const&, std::__1::__fs::filesystem::directory_iterator const&)>:
1000074bc: d10083ff    	sub	sp, sp, #0x20
1000074c0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000074c4: 910043fd    	add	x29, sp, #0x10
1000074c8: f90007e0    	str	x0, [sp, #0x8]
1000074cc: f90003e1    	str	x1, [sp]
1000074d0: f94007e0    	ldr	x0, [sp, #0x8]
1000074d4: f94003e1    	ldr	x1, [sp]
1000074d8: 94000005    	bl	0x1000074ec <bool std::__1::operator==[abi:ne180100]<std::__1::__fs::filesystem::__dir_stream, std::__1::__fs::filesystem::__dir_stream>(std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&, std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>
1000074dc: 12000000    	and	w0, w0, #0x1
1000074e0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000074e4: 910083ff    	add	sp, sp, #0x20
1000074e8: d65f03c0    	ret

00000001000074ec <bool std::__1::operator==[abi:ne180100]<std::__1::__fs::filesystem::__dir_stream, std::__1::__fs::filesystem::__dir_stream>(std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&, std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream> const&)>:
1000074ec: d100c3ff    	sub	sp, sp, #0x30
1000074f0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000074f4: 910083fd    	add	x29, sp, #0x20
1000074f8: f81f83a0    	stur	x0, [x29, #-0x8]
1000074fc: f9000be1    	str	x1, [sp, #0x10]
100007500: f85f83a0    	ldur	x0, [x29, #-0x8]
100007504: 9400000c    	bl	0x100007534 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::get[abi:ne180100]() const>
100007508: f90007e0    	str	x0, [sp, #0x8]
10000750c: f9400be0    	ldr	x0, [sp, #0x10]
100007510: 94000009    	bl	0x100007534 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::get[abi:ne180100]() const>
100007514: aa0003e8    	mov	x8, x0
100007518: f94007e0    	ldr	x0, [sp, #0x8]
10000751c: eb080008    	subs	x8, x0, x8
100007520: 1a9f17e8    	cset	w8, eq
100007524: 12000100    	and	w0, w8, #0x1
100007528: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000752c: 9100c3ff    	add	sp, sp, #0x30
100007530: d65f03c0    	ret

0000000100007534 <std::__1::shared_ptr<std::__1::__fs::filesystem::__dir_stream>::get[abi:ne180100]() const>:
100007534: d10043ff    	sub	sp, sp, #0x10
100007538: f90007e0    	str	x0, [sp, #0x8]
10000753c: f94007e8    	ldr	x8, [sp, #0x8]
100007540: f9400100    	ldr	x0, [x8]
100007544: 910043ff    	add	sp, sp, #0x10
100007548: d65f03c0    	ret

000000010000754c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string<std::__1::basic_string_view<char, std::__1::char_traits<char>>, 0>(std::__1::basic_string_view<char, std::__1::char_traits<char>> const&)>:
10000754c: d100c3ff    	sub	sp, sp, #0x30
100007550: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007554: 910083fd    	add	x29, sp, #0x20
100007558: f81f83a0    	stur	x0, [x29, #-0x8]
10000755c: f9000be1    	str	x1, [sp, #0x10]
100007560: f85f83a0    	ldur	x0, [x29, #-0x8]
100007564: f90007e0    	str	x0, [sp, #0x8]
100007568: f9400be1    	ldr	x1, [sp, #0x10]
10000756c: 94000014    	bl	0x1000075bc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string<std::__1::basic_string_view<char, std::__1::char_traits<char>>, 0>(std::__1::basic_string_view<char, std::__1::char_traits<char>> const&)>
100007570: f94007e0    	ldr	x0, [sp, #0x8]
100007574: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007578: 9100c3ff    	add	sp, sp, #0x30
10000757c: d65f03c0    	ret

0000000100007580 <std::__1::__fs::filesystem::path::path[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, std::__1::__fs::filesystem::path::format)>:
100007580: d100c3ff    	sub	sp, sp, #0x30
100007584: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007588: 910083fd    	add	x29, sp, #0x20
10000758c: f81f83a0    	stur	x0, [x29, #-0x8]
100007590: f9000be1    	str	x1, [sp, #0x10]
100007594: 39003fe2    	strb	w2, [sp, #0xf]
100007598: f85f83a0    	ldur	x0, [x29, #-0x8]
10000759c: f90003e0    	str	x0, [sp]
1000075a0: f9400be1    	ldr	x1, [sp, #0x10]
1000075a4: 39403fe2    	ldrb	w2, [sp, #0xf]
1000075a8: 9400006b    	bl	0x100007754 <std::__1::__fs::filesystem::path::path[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, std::__1::__fs::filesystem::path::format)>
1000075ac: f94003e0    	ldr	x0, [sp]
1000075b0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000075b4: 9100c3ff    	add	sp, sp, #0x30
1000075b8: d65f03c0    	ret

00000001000075bc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string<std::__1::basic_string_view<char, std::__1::char_traits<char>>, 0>(std::__1::basic_string_view<char, std::__1::char_traits<char>> const&)>:
1000075bc: d10183ff    	sub	sp, sp, #0x60
1000075c0: a9057bfd    	stp	x29, x30, [sp, #0x50]
1000075c4: 910143fd    	add	x29, sp, #0x50
1000075c8: f81f83a0    	stur	x0, [x29, #-0x8]
1000075cc: f81f03a1    	stur	x1, [x29, #-0x10]
1000075d0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000075d4: f9000fe0    	str	x0, [sp, #0x18]
1000075d8: d10047a1    	sub	x1, x29, #0x11
1000075dc: d1004ba2    	sub	x2, x29, #0x12
1000075e0: 94000013    	bl	0x10000762c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>
1000075e4: f85f03a8    	ldur	x8, [x29, #-0x10]
1000075e8: 3dc00100    	ldr	q0, [x8]
1000075ec: 910083e0    	add	x0, sp, #0x20
1000075f0: f90007e0    	str	x0, [sp, #0x8]
1000075f4: 3d800be0    	str	q0, [sp, #0x20]
1000075f8: 9400001c    	bl	0x100007668 <std::__1::basic_string_view<char, std::__1::char_traits<char>>::data[abi:ne180100]() const>
1000075fc: aa0003e1    	mov	x1, x0
100007600: f94007e0    	ldr	x0, [sp, #0x8]
100007604: f9000be1    	str	x1, [sp, #0x10]
100007608: 9400001e    	bl	0x100007680 <std::__1::basic_string_view<char, std::__1::char_traits<char>>::size[abi:ne180100]() const>
10000760c: f9400be1    	ldr	x1, [sp, #0x10]
100007610: aa0003e2    	mov	x2, x0
100007614: f9400fe0    	ldr	x0, [sp, #0x18]
100007618: 94000dd4    	bl	0x10000ad68 <_strlen+0x10000ad68>
10000761c: f9400fe0    	ldr	x0, [sp, #0x18]
100007620: a9457bfd    	ldp	x29, x30, [sp, #0x50]
100007624: 910183ff    	add	sp, sp, #0x60
100007628: d65f03c0    	ret

000000010000762c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>:
10000762c: d100c3ff    	sub	sp, sp, #0x30
100007630: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007634: 910083fd    	add	x29, sp, #0x20
100007638: f81f83a0    	stur	x0, [x29, #-0x8]
10000763c: f9000be1    	str	x1, [sp, #0x10]
100007640: f90007e2    	str	x2, [sp, #0x8]
100007644: f85f83a0    	ldur	x0, [x29, #-0x8]
100007648: f90003e0    	str	x0, [sp]
10000764c: f9400be1    	ldr	x1, [sp, #0x10]
100007650: f94007e2    	ldr	x2, [sp, #0x8]
100007654: 94000011    	bl	0x100007698 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>
100007658: f94003e0    	ldr	x0, [sp]
10000765c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007660: 9100c3ff    	add	sp, sp, #0x30
100007664: d65f03c0    	ret

0000000100007668 <std::__1::basic_string_view<char, std::__1::char_traits<char>>::data[abi:ne180100]() const>:
100007668: d10043ff    	sub	sp, sp, #0x10
10000766c: f90007e0    	str	x0, [sp, #0x8]
100007670: f94007e8    	ldr	x8, [sp, #0x8]
100007674: f9400100    	ldr	x0, [x8]
100007678: 910043ff    	add	sp, sp, #0x10
10000767c: d65f03c0    	ret

0000000100007680 <std::__1::basic_string_view<char, std::__1::char_traits<char>>::size[abi:ne180100]() const>:
100007680: d10043ff    	sub	sp, sp, #0x10
100007684: f90007e0    	str	x0, [sp, #0x8]
100007688: f94007e8    	ldr	x8, [sp, #0x8]
10000768c: f9400500    	ldr	x0, [x8, #0x8]
100007690: 910043ff    	add	sp, sp, #0x10
100007694: d65f03c0    	ret

0000000100007698 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>:
100007698: d10103ff    	sub	sp, sp, #0x40
10000769c: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000076a0: 9100c3fd    	add	x29, sp, #0x30
1000076a4: f81f83a0    	stur	x0, [x29, #-0x8]
1000076a8: f81f03a1    	stur	x1, [x29, #-0x10]
1000076ac: f9000fe2    	str	x2, [sp, #0x18]
1000076b0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000076b4: f90007e0    	str	x0, [sp, #0x8]
1000076b8: 94000007    	bl	0x1000076d4 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>
1000076bc: f94007e0    	ldr	x0, [sp, #0x8]
1000076c0: 9400000a    	bl	0x1000076e8 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>
1000076c4: f94007e0    	ldr	x0, [sp, #0x8]
1000076c8: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000076cc: 910103ff    	add	sp, sp, #0x40
1000076d0: d65f03c0    	ret

00000001000076d4 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>:
1000076d4: d10043ff    	sub	sp, sp, #0x10
1000076d8: f90003e0    	str	x0, [sp]
1000076dc: f94003e0    	ldr	x0, [sp]
1000076e0: 910043ff    	add	sp, sp, #0x10
1000076e4: d65f03c0    	ret

00000001000076e8 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>:
1000076e8: d100c3ff    	sub	sp, sp, #0x30
1000076ec: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000076f0: 910083fd    	add	x29, sp, #0x20
1000076f4: f9000be0    	str	x0, [sp, #0x10]
1000076f8: f9400be0    	ldr	x0, [sp, #0x10]
1000076fc: f90007e0    	str	x0, [sp, #0x8]
100007700: 94000005    	bl	0x100007714 <std::__1::allocator<char>::allocator[abi:ne180100]()>
100007704: f94007e0    	ldr	x0, [sp, #0x8]
100007708: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000770c: 9100c3ff    	add	sp, sp, #0x30
100007710: d65f03c0    	ret

0000000100007714 <std::__1::allocator<char>::allocator[abi:ne180100]()>:
100007714: d10083ff    	sub	sp, sp, #0x20
100007718: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000771c: 910043fd    	add	x29, sp, #0x10
100007720: f90007e0    	str	x0, [sp, #0x8]
100007724: f94007e0    	ldr	x0, [sp, #0x8]
100007728: f90003e0    	str	x0, [sp]
10000772c: 94000005    	bl	0x100007740 <std::__1::__non_trivial_if<true, std::__1::allocator<char>>::__non_trivial_if[abi:ne180100]()>
100007730: f94003e0    	ldr	x0, [sp]
100007734: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007738: 910083ff    	add	sp, sp, #0x20
10000773c: d65f03c0    	ret

0000000100007740 <std::__1::__non_trivial_if<true, std::__1::allocator<char>>::__non_trivial_if[abi:ne180100]()>:
100007740: d10043ff    	sub	sp, sp, #0x10
100007744: f90007e0    	str	x0, [sp, #0x8]
100007748: f94007e0    	ldr	x0, [sp, #0x8]
10000774c: 910043ff    	add	sp, sp, #0x10
100007750: d65f03c0    	ret

0000000100007754 <std::__1::__fs::filesystem::path::path[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&, std::__1::__fs::filesystem::path::format)>:
100007754: d100c3ff    	sub	sp, sp, #0x30
100007758: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000775c: 910083fd    	add	x29, sp, #0x20
100007760: f81f83a0    	stur	x0, [x29, #-0x8]
100007764: f9000be1    	str	x1, [sp, #0x10]
100007768: 39003fe2    	strb	w2, [sp, #0xf]
10000776c: f85f83a0    	ldur	x0, [x29, #-0x8]
100007770: f90003e0    	str	x0, [sp]
100007774: f9400be1    	ldr	x1, [sp, #0x10]
100007778: 94000005    	bl	0x10000778c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)>
10000777c: f94003e0    	ldr	x0, [sp]
100007780: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007784: 9100c3ff    	add	sp, sp, #0x30
100007788: d65f03c0    	ret

000000010000778c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)>:
10000778c: d100c3ff    	sub	sp, sp, #0x30
100007790: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007794: 910083fd    	add	x29, sp, #0x20
100007798: f81f83a0    	stur	x0, [x29, #-0x8]
10000779c: f9000be1    	str	x1, [sp, #0x10]
1000077a0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000077a4: f90007e0    	str	x0, [sp, #0x8]
1000077a8: f9400be1    	ldr	x1, [sp, #0x10]
1000077ac: 94000005    	bl	0x1000077c0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)>
1000077b0: f94007e0    	ldr	x0, [sp, #0x8]
1000077b4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000077b8: 9100c3ff    	add	sp, sp, #0x30
1000077bc: d65f03c0    	ret

00000001000077c0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)>:
1000077c0: d10183ff    	sub	sp, sp, #0x60
1000077c4: a9057bfd    	stp	x29, x30, [sp, #0x50]
1000077c8: 910143fd    	add	x29, sp, #0x50
1000077cc: f81f03a0    	stur	x0, [x29, #-0x10]
1000077d0: f81e83a1    	stur	x1, [x29, #-0x18]
1000077d4: f85f03a8    	ldur	x8, [x29, #-0x10]
1000077d8: f90007e8    	str	x8, [sp, #0x8]
1000077dc: f81f83a8    	stur	x8, [x29, #-0x8]
1000077e0: f85e83a1    	ldur	x1, [x29, #-0x18]
1000077e4: d10067a0    	sub	x0, x29, #0x19
1000077e8: 94000024    	bl	0x100007878 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)::'lambda'(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)::operator()(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&) const>
1000077ec: f9000be0    	str	x0, [sp, #0x10]
1000077f0: 14000001    	b	0x1000077f4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)+0x34>
1000077f4: f94007e9    	ldr	x9, [sp, #0x8]
1000077f8: f9400be8    	ldr	x8, [sp, #0x10]
1000077fc: 3dc00100    	ldr	q0, [x8]
100007800: 3d800120    	str	q0, [x9]
100007804: f9400908    	ldr	x8, [x8, #0x10]
100007808: f9000928    	str	x8, [x9, #0x10]
10000780c: f9000fff    	str	xzr, [sp, #0x18]
100007810: f90013ff    	str	xzr, [sp, #0x20]
100007814: f90017ff    	str	xzr, [sp, #0x28]
100007818: f85e83a0    	ldur	x0, [x29, #-0x18]
10000781c: 94000027    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100007820: 3cc183e0    	ldur	q0, [sp, #0x18]
100007824: 3d800000    	str	q0, [x0]
100007828: f94017e8    	ldr	x8, [sp, #0x28]
10000782c: f9000808    	str	x8, [x0, #0x10]
100007830: f85e83a0    	ldur	x0, [x29, #-0x18]
100007834: d2800001    	mov	x1, #0x0                ; =0
100007838: 94000029    	bl	0x1000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>
10000783c: f94007e0    	ldr	x0, [sp, #0x8]
100007840: 9400002c    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
100007844: 37000100    	tbnz	w0, #0x0, 0x100007864 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)+0xa4>
100007848: 14000001    	b	0x10000784c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)+0x8c>
10000784c: f94007e0    	ldr	x0, [sp, #0x8]
100007850: 94000036    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100007854: aa0003e1    	mov	x1, x0
100007858: f94007e0    	ldr	x0, [sp, #0x8]
10000785c: 94000020    	bl	0x1000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>
100007860: 14000001    	b	0x100007864 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)+0xa4>
100007864: f85f83a0    	ldur	x0, [x29, #-0x8]
100007868: a9457bfd    	ldp	x29, x30, [sp, #0x50]
10000786c: 910183ff    	add	sp, sp, #0x60
100007870: d65f03c0    	ret
100007874: 97ffebc5    	bl	0x100002788 <___clang_call_terminate>

0000000100007878 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)::'lambda'(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)::operator()(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&) const>:
100007878: d10083ff    	sub	sp, sp, #0x20
10000787c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007880: 910043fd    	add	x29, sp, #0x10
100007884: f90007e0    	str	x0, [sp, #0x8]
100007888: f90003e1    	str	x1, [sp]
10000788c: f94003e0    	ldr	x0, [sp]
100007890: 94000018    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
100007894: 370000a0    	tbnz	w0, #0x0, 0x1000078a8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)::'lambda'(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)::operator()(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&) const+0x30>
100007898: 14000001    	b	0x10000789c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)::'lambda'(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)::operator()(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&) const+0x24>
10000789c: f94003e0    	ldr	x0, [sp]
1000078a0: 94000037    	bl	0x10000797c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_delete[abi:ne180100]() const>
1000078a4: 14000001    	b	0x1000078a8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&&)::'lambda'(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&)::operator()(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&) const+0x30>
1000078a8: f94003e0    	ldr	x0, [sp]
1000078ac: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000078b0: 910083ff    	add	sp, sp, #0x20
1000078b4: d65f03c0    	ret

00000001000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>:
1000078b8: d10083ff    	sub	sp, sp, #0x20
1000078bc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000078c0: 910043fd    	add	x29, sp, #0x10
1000078c4: f90007e0    	str	x0, [sp, #0x8]
1000078c8: f94007e0    	ldr	x0, [sp, #0x8]
1000078cc: 94000030    	bl	0x10000798c <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__get[abi:ne180100]()>
1000078d0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000078d4: 910083ff    	add	sp, sp, #0x20
1000078d8: d65f03c0    	ret

00000001000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>:
1000078dc: d10043ff    	sub	sp, sp, #0x10
1000078e0: f90007e0    	str	x0, [sp, #0x8]
1000078e4: f90003e1    	str	x1, [sp]
1000078e8: 910043ff    	add	sp, sp, #0x10
1000078ec: d65f03c0    	ret

00000001000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>:
1000078f0: d10083ff    	sub	sp, sp, #0x20
1000078f4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000078f8: 910043fd    	add	x29, sp, #0x10
1000078fc: f90007e0    	str	x0, [sp, #0x8]
100007900: f94007e0    	ldr	x0, [sp, #0x8]
100007904: 94000027    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
100007908: 39405c08    	ldrb	w8, [x0, #0x17]
10000790c: 53077d08    	lsr	w8, w8, #7
100007910: 72001d08    	ands	w8, w8, #0xff
100007914: 1a9f07e8    	cset	w8, ne
100007918: 12000100    	and	w0, w8, #0x1
10000791c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007920: 910083ff    	add	sp, sp, #0x20
100007924: d65f03c0    	ret

0000000100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>:
100007928: d100c3ff    	sub	sp, sp, #0x30
10000792c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007930: 910083fd    	add	x29, sp, #0x20
100007934: f81f83a0    	stur	x0, [x29, #-0x8]
100007938: f85f83a0    	ldur	x0, [x29, #-0x8]
10000793c: f9000be0    	str	x0, [sp, #0x10]
100007940: 97ffffec    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
100007944: 360000c0    	tbz	w0, #0x0, 0x10000795c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const+0x34>
100007948: 14000001    	b	0x10000794c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const+0x24>
10000794c: f9400be0    	ldr	x0, [sp, #0x10]
100007950: 94000022    	bl	0x1000079d8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_size[abi:ne180100]() const>
100007954: f90007e0    	str	x0, [sp, #0x8]
100007958: 14000005    	b	0x10000796c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const+0x44>
10000795c: f9400be0    	ldr	x0, [sp, #0x10]
100007960: 94000028    	bl	0x100007a00 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_size[abi:ne180100]() const>
100007964: f90007e0    	str	x0, [sp, #0x8]
100007968: 14000001    	b	0x10000796c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const+0x44>
10000796c: f94007e0    	ldr	x0, [sp, #0x8]
100007970: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007974: 9100c3ff    	add	sp, sp, #0x30
100007978: d65f03c0    	ret

000000010000797c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_delete[abi:ne180100]() const>:
10000797c: d10043ff    	sub	sp, sp, #0x10
100007980: f90007e0    	str	x0, [sp, #0x8]
100007984: 910043ff    	add	sp, sp, #0x10
100007988: d65f03c0    	ret

000000010000798c <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__get[abi:ne180100]()>:
10000798c: d10043ff    	sub	sp, sp, #0x10
100007990: f90007e0    	str	x0, [sp, #0x8]
100007994: f94007e0    	ldr	x0, [sp, #0x8]
100007998: 910043ff    	add	sp, sp, #0x10
10000799c: d65f03c0    	ret

00000001000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>:
1000079a0: d10083ff    	sub	sp, sp, #0x20
1000079a4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000079a8: 910043fd    	add	x29, sp, #0x10
1000079ac: f90007e0    	str	x0, [sp, #0x8]
1000079b0: f94007e0    	ldr	x0, [sp, #0x8]
1000079b4: 94000004    	bl	0x1000079c4 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__get[abi:ne180100]() const>
1000079b8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000079bc: 910083ff    	add	sp, sp, #0x20
1000079c0: d65f03c0    	ret

00000001000079c4 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__get[abi:ne180100]() const>:
1000079c4: d10043ff    	sub	sp, sp, #0x10
1000079c8: f90007e0    	str	x0, [sp, #0x8]
1000079cc: f94007e0    	ldr	x0, [sp, #0x8]
1000079d0: 910043ff    	add	sp, sp, #0x10
1000079d4: d65f03c0    	ret

00000001000079d8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_size[abi:ne180100]() const>:
1000079d8: d10083ff    	sub	sp, sp, #0x20
1000079dc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000079e0: 910043fd    	add	x29, sp, #0x10
1000079e4: f90007e0    	str	x0, [sp, #0x8]
1000079e8: f94007e0    	ldr	x0, [sp, #0x8]
1000079ec: 97ffffed    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
1000079f0: f9400400    	ldr	x0, [x0, #0x8]
1000079f4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000079f8: 910083ff    	add	sp, sp, #0x20
1000079fc: d65f03c0    	ret

0000000100007a00 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_size[abi:ne180100]() const>:
100007a00: d10083ff    	sub	sp, sp, #0x20
100007a04: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007a08: 910043fd    	add	x29, sp, #0x10
100007a0c: f90007e0    	str	x0, [sp, #0x8]
100007a10: f94007e0    	ldr	x0, [sp, #0x8]
100007a14: 97ffffe3    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
100007a18: 39405c08    	ldrb	w8, [x0, #0x17]
100007a1c: 12001909    	and	w9, w8, #0x7f
100007a20: aa0903e8    	mov	x8, x9
100007a24: 92401d00    	and	x0, x8, #0xff
100007a28: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007a2c: 910083ff    	add	sp, sp, #0x20
100007a30: d65f03c0    	ret

0000000100007a34 <std::__1::__fs::filesystem::is_regular_file[abi:ne180100](std::__1::__fs::filesystem::file_status)>:
100007a34: d10083ff    	sub	sp, sp, #0x20
100007a38: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007a3c: 910043fd    	add	x29, sp, #0x10
100007a40: aa0003e8    	mov	x8, x0
100007a44: f90007e8    	str	x8, [sp, #0x8]
100007a48: 94000013    	bl	0x100007a94 <std::__1::__fs::filesystem::file_status::type[abi:ne180100]() const>
100007a4c: 12001c08    	and	w8, w0, #0xff
100007a50: 71000508    	subs	w8, w8, #0x1
100007a54: 1a9f17e8    	cset	w8, eq
100007a58: 12000100    	and	w0, w8, #0x1
100007a5c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007a60: 910083ff    	add	sp, sp, #0x20
100007a64: d65f03c0    	ret

0000000100007a68 <std::__1::__fs::filesystem::file_status::~file_status[abi:ne180100]()>:
100007a68: d10083ff    	sub	sp, sp, #0x20
100007a6c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007a70: 910043fd    	add	x29, sp, #0x10
100007a74: f90007e0    	str	x0, [sp, #0x8]
100007a78: f94007e0    	ldr	x0, [sp, #0x8]
100007a7c: f90003e0    	str	x0, [sp]
100007a80: 9400000b    	bl	0x100007aac <std::__1::__fs::filesystem::file_status::~file_status[abi:ne180100]()>
100007a84: f94003e0    	ldr	x0, [sp]
100007a88: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007a8c: 910083ff    	add	sp, sp, #0x20
100007a90: d65f03c0    	ret

0000000100007a94 <std::__1::__fs::filesystem::file_status::type[abi:ne180100]() const>:
100007a94: d10043ff    	sub	sp, sp, #0x10
100007a98: f90007e0    	str	x0, [sp, #0x8]
100007a9c: f94007e8    	ldr	x8, [sp, #0x8]
100007aa0: 39c00100    	ldrsb	w0, [x8]
100007aa4: 910043ff    	add	sp, sp, #0x10
100007aa8: d65f03c0    	ret

0000000100007aac <std::__1::__fs::filesystem::file_status::~file_status[abi:ne180100]()>:
100007aac: d10043ff    	sub	sp, sp, #0x10
100007ab0: f90007e0    	str	x0, [sp, #0x8]
100007ab4: f94007e0    	ldr	x0, [sp, #0x8]
100007ab8: 910043ff    	add	sp, sp, #0x10
100007abc: d65f03c0    	ret

0000000100007ac0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~list()>:
100007ac0: d10083ff    	sub	sp, sp, #0x20
100007ac4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007ac8: 910043fd    	add	x29, sp, #0x10
100007acc: f90007e0    	str	x0, [sp, #0x8]
100007ad0: f94007e0    	ldr	x0, [sp, #0x8]
100007ad4: f90003e0    	str	x0, [sp]
100007ad8: 94000005    	bl	0x100007aec <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~__list_imp()>
100007adc: f94003e0    	ldr	x0, [sp]
100007ae0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007ae4: 910083ff    	add	sp, sp, #0x20
100007ae8: d65f03c0    	ret

0000000100007aec <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::~__list_imp()>:
100007aec: d10083ff    	sub	sp, sp, #0x20
100007af0: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007af4: 910043fd    	add	x29, sp, #0x10
100007af8: f90007e0    	str	x0, [sp, #0x8]
100007afc: f94007e0    	ldr	x0, [sp, #0x8]
100007b00: f90003e0    	str	x0, [sp]
100007b04: 94000005    	bl	0x100007b18 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()>
100007b08: f94003e0    	ldr	x0, [sp]
100007b0c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007b10: 910083ff    	add	sp, sp, #0x20
100007b14: d65f03c0    	ret

0000000100007b18 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()>:
100007b18: d10103ff    	sub	sp, sp, #0x40
100007b1c: a9037bfd    	stp	x29, x30, [sp, #0x30]
100007b20: 9100c3fd    	add	x29, sp, #0x30
100007b24: f81f83a0    	stur	x0, [x29, #-0x8]
100007b28: f85f83a0    	ldur	x0, [x29, #-0x8]
100007b2c: f90007e0    	str	x0, [sp, #0x8]
100007b30: 94000029    	bl	0x100007bd4 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::empty[abi:ne180100]() const>
100007b34: 37000480    	tbnz	w0, #0x0, 0x100007bc4 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0xac>
100007b38: 14000001    	b	0x100007b3c <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0x24>
100007b3c: f94007e0    	ldr	x0, [sp, #0x8]
100007b40: f9400408    	ldr	x8, [x0, #0x8]
100007b44: f81f03a8    	stur	x8, [x29, #-0x10]
100007b48: 94000030    	bl	0x100007c08 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const>
100007b4c: f9000fe0    	str	x0, [sp, #0x18]
100007b50: f85f03a0    	ldur	x0, [x29, #-0x10]
100007b54: f9400fe8    	ldr	x8, [sp, #0x18]
100007b58: f9400101    	ldr	x1, [x8]
100007b5c: 9400003c    	bl	0x100007c4c <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__unlink_nodes(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
100007b60: f94007e0    	ldr	x0, [sp, #0x8]
100007b64: 94000049    	bl	0x100007c88 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]()>
100007b68: f900001f    	str	xzr, [x0]
100007b6c: 14000001    	b	0x100007b70 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0x58>
100007b70: f85f03a8    	ldur	x8, [x29, #-0x10]
100007b74: f9400fe9    	ldr	x9, [sp, #0x18]
100007b78: eb090108    	subs	x8, x8, x9
100007b7c: 1a9f17e8    	cset	w8, eq
100007b80: 37000208    	tbnz	w8, #0x0, 0x100007bc0 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0xa8>
100007b84: 14000001    	b	0x100007b88 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0x70>
100007b88: f85f03a0    	ldur	x0, [x29, #-0x10]
100007b8c: 94000049    	bl	0x100007cb0 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__as_node[abi:ne180100]()>
100007b90: f90003e0    	str	x0, [sp]
100007b94: 14000001    	b	0x100007b98 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0x80>
100007b98: f94007e0    	ldr	x0, [sp, #0x8]
100007b9c: f94003e8    	ldr	x8, [sp]
100007ba0: f9000be8    	str	x8, [sp, #0x10]
100007ba4: f85f03a8    	ldur	x8, [x29, #-0x10]
100007ba8: f9400508    	ldr	x8, [x8, #0x8]
100007bac: f81f03a8    	stur	x8, [x29, #-0x10]
100007bb0: f9400be1    	ldr	x1, [sp, #0x10]
100007bb4: 94000c64    	bl	0x10000ad44 <_strlen+0x10000ad44>
100007bb8: 14000001    	b	0x100007bbc <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0xa4>
100007bbc: 17ffffed    	b	0x100007b70 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0x58>
100007bc0: 14000001    	b	0x100007bc4 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::clear()+0xac>
100007bc4: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100007bc8: 910103ff    	add	sp, sp, #0x40
100007bcc: d65f03c0    	ret
100007bd0: 97ffeaee    	bl	0x100002788 <___clang_call_terminate>

0000000100007bd4 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::empty[abi:ne180100]() const>:
100007bd4: d10083ff    	sub	sp, sp, #0x20
100007bd8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007bdc: 910043fd    	add	x29, sp, #0x10
100007be0: f90007e0    	str	x0, [sp, #0x8]
100007be4: f94007e0    	ldr	x0, [sp, #0x8]
100007be8: 94000053    	bl	0x100007d34 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]() const>
100007bec: f9400008    	ldr	x8, [x0]
100007bf0: f1000108    	subs	x8, x8, #0x0
100007bf4: 1a9f17e8    	cset	w8, eq
100007bf8: 12000100    	and	w0, w8, #0x1
100007bfc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007c00: 910083ff    	add	sp, sp, #0x20
100007c04: d65f03c0    	ret

0000000100007c08 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const>:
100007c08: d100c3ff    	sub	sp, sp, #0x30
100007c0c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007c10: 910083fd    	add	x29, sp, #0x20
100007c14: f81f83a0    	stur	x0, [x29, #-0x8]
100007c18: f85f83a0    	ldur	x0, [x29, #-0x8]
100007c1c: 94000063    	bl	0x100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>
100007c20: f9000be0    	str	x0, [sp, #0x10]
100007c24: 14000001    	b	0x100007c28 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const+0x20>
100007c28: f9400be0    	ldr	x0, [sp, #0x10]
100007c2c: 9400005a    	bl	0x100007d94 <std::__1::__list_node_pointer_traits<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__unsafe_link_pointer_cast[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
100007c30: f90007e0    	str	x0, [sp, #0x8]
100007c34: 14000001    	b	0x100007c38 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const+0x30>
100007c38: f94007e0    	ldr	x0, [sp, #0x8]
100007c3c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007c40: 9100c3ff    	add	sp, sp, #0x30
100007c44: d65f03c0    	ret
100007c48: 97ffead0    	bl	0x100002788 <___clang_call_terminate>

0000000100007c4c <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__unlink_nodes(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
100007c4c: d10043ff    	sub	sp, sp, #0x10
100007c50: f90007e0    	str	x0, [sp, #0x8]
100007c54: f90003e1    	str	x1, [sp]
100007c58: f94003e8    	ldr	x8, [sp]
100007c5c: f9400508    	ldr	x8, [x8, #0x8]
100007c60: f94007e9    	ldr	x9, [sp, #0x8]
100007c64: f9400129    	ldr	x9, [x9]
100007c68: f9000528    	str	x8, [x9, #0x8]
100007c6c: f94007e8    	ldr	x8, [sp, #0x8]
100007c70: f9400108    	ldr	x8, [x8]
100007c74: f94003e9    	ldr	x9, [sp]
100007c78: f9400529    	ldr	x9, [x9, #0x8]
100007c7c: f9000128    	str	x8, [x9]
100007c80: 910043ff    	add	sp, sp, #0x10
100007c84: d65f03c0    	ret

0000000100007c88 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]()>:
100007c88: d10083ff    	sub	sp, sp, #0x20
100007c8c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007c90: 910043fd    	add	x29, sp, #0x10
100007c94: f90007e0    	str	x0, [sp, #0x8]
100007c98: f94007e8    	ldr	x8, [sp, #0x8]
100007c9c: 91004100    	add	x0, x8, #0x10
100007ca0: 94000050    	bl	0x100007de0 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::first[abi:ne180100]()>
100007ca4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007ca8: 910083ff    	add	sp, sp, #0x20
100007cac: d65f03c0    	ret

0000000100007cb0 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__as_node[abi:ne180100]()>:
100007cb0: d10083ff    	sub	sp, sp, #0x20
100007cb4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007cb8: 910043fd    	add	x29, sp, #0x10
100007cbc: f90007e0    	str	x0, [sp, #0x8]
100007cc0: f94007e0    	ldr	x0, [sp, #0x8]
100007cc4: 94000039    	bl	0x100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>
100007cc8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007ccc: 910083ff    	add	sp, sp, #0x20
100007cd0: d65f03c0    	ret

0000000100007cd4 <void std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__delete_node[abi:ne180100]<>(std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
100007cd4: d100c3ff    	sub	sp, sp, #0x30
100007cd8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007cdc: 910083fd    	add	x29, sp, #0x20
100007ce0: f81f83a0    	stur	x0, [x29, #-0x8]
100007ce4: f9000be1    	str	x1, [sp, #0x10]
100007ce8: f85f83a0    	ldur	x0, [x29, #-0x8]
100007cec: 9400004b    	bl	0x100007e18 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__node_alloc[abi:ne180100]()>
100007cf0: f90007e0    	str	x0, [sp, #0x8]
100007cf4: f94007e8    	ldr	x8, [sp, #0x8]
100007cf8: f90003e8    	str	x8, [sp]
100007cfc: f9400be0    	ldr	x0, [sp, #0x10]
100007d00: 9400005a    	bl	0x100007e68 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__get_value[abi:ne180100]()>
100007d04: aa0003e1    	mov	x1, x0
100007d08: f94003e0    	ldr	x0, [sp]
100007d0c: 94000c4d    	bl	0x10000ae40 <_strlen+0x10000ae40>
100007d10: f9400be0    	ldr	x0, [sp, #0x10]
100007d14: 9400005b    	bl	0x100007e80 <void std::__1::__destroy_at[abi:ne180100]<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>, 0>(std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
100007d18: f94007e0    	ldr	x0, [sp, #0x8]
100007d1c: f9400be1    	ldr	x1, [sp, #0x10]
100007d20: d2800022    	mov	x2, #0x1                ; =1
100007d24: 94000060    	bl	0x100007ea4 <std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::deallocate[abi:ne180100](std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)>
100007d28: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007d2c: 9100c3ff    	add	sp, sp, #0x30
100007d30: d65f03c0    	ret

0000000100007d34 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__sz[abi:ne180100]() const>:
100007d34: d10083ff    	sub	sp, sp, #0x20
100007d38: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007d3c: 910043fd    	add	x29, sp, #0x10
100007d40: f90007e0    	str	x0, [sp, #0x8]
100007d44: f94007e8    	ldr	x8, [sp, #0x8]
100007d48: 91004100    	add	x0, x8, #0x10
100007d4c: 94000004    	bl	0x100007d5c <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::first[abi:ne180100]() const>
100007d50: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007d54: 910083ff    	add	sp, sp, #0x20
100007d58: d65f03c0    	ret

0000000100007d5c <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::first[abi:ne180100]() const>:
100007d5c: d10083ff    	sub	sp, sp, #0x20
100007d60: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007d64: 910043fd    	add	x29, sp, #0x10
100007d68: f90007e0    	str	x0, [sp, #0x8]
100007d6c: f94007e0    	ldr	x0, [sp, #0x8]
100007d70: 94000004    	bl	0x100007d80 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__get[abi:ne180100]() const>
100007d74: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007d78: 910083ff    	add	sp, sp, #0x20
100007d7c: d65f03c0    	ret

0000000100007d80 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__get[abi:ne180100]() const>:
100007d80: d10043ff    	sub	sp, sp, #0x10
100007d84: f90007e0    	str	x0, [sp, #0x8]
100007d88: f94007e0    	ldr	x0, [sp, #0x8]
100007d8c: 910043ff    	add	sp, sp, #0x10
100007d90: d65f03c0    	ret

0000000100007d94 <std::__1::__list_node_pointer_traits<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__unsafe_link_pointer_cast[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
100007d94: d10043ff    	sub	sp, sp, #0x10
100007d98: f90007e0    	str	x0, [sp, #0x8]
100007d9c: f94007e0    	ldr	x0, [sp, #0x8]
100007da0: 910043ff    	add	sp, sp, #0x10
100007da4: d65f03c0    	ret

0000000100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>:
100007da8: d10083ff    	sub	sp, sp, #0x20
100007dac: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007db0: 910043fd    	add	x29, sp, #0x10
100007db4: f90007e0    	str	x0, [sp, #0x8]
100007db8: f94007e0    	ldr	x0, [sp, #0x8]
100007dbc: 94000004    	bl	0x100007dcc <std::__1::pointer_traits<std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*>::pointer_to[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>&)>
100007dc0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007dc4: 910083ff    	add	sp, sp, #0x20
100007dc8: d65f03c0    	ret

0000000100007dcc <std::__1::pointer_traits<std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*>::pointer_to[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>&)>:
100007dcc: d10043ff    	sub	sp, sp, #0x10
100007dd0: f90007e0    	str	x0, [sp, #0x8]
100007dd4: f94007e0    	ldr	x0, [sp, #0x8]
100007dd8: 910043ff    	add	sp, sp, #0x10
100007ddc: d65f03c0    	ret

0000000100007de0 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::first[abi:ne180100]()>:
100007de0: d10083ff    	sub	sp, sp, #0x20
100007de4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007de8: 910043fd    	add	x29, sp, #0x10
100007dec: f90007e0    	str	x0, [sp, #0x8]
100007df0: f94007e0    	ldr	x0, [sp, #0x8]
100007df4: 94000004    	bl	0x100007e04 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__get[abi:ne180100]()>
100007df8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007dfc: 910083ff    	add	sp, sp, #0x20
100007e00: d65f03c0    	ret

0000000100007e04 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__get[abi:ne180100]()>:
100007e04: d10043ff    	sub	sp, sp, #0x10
100007e08: f90007e0    	str	x0, [sp, #0x8]
100007e0c: f94007e0    	ldr	x0, [sp, #0x8]
100007e10: 910043ff    	add	sp, sp, #0x10
100007e14: d65f03c0    	ret

0000000100007e18 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__node_alloc[abi:ne180100]()>:
100007e18: d10083ff    	sub	sp, sp, #0x20
100007e1c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007e20: 910043fd    	add	x29, sp, #0x10
100007e24: f90007e0    	str	x0, [sp, #0x8]
100007e28: f94007e8    	ldr	x8, [sp, #0x8]
100007e2c: 91004100    	add	x0, x8, #0x10
100007e30: 9400002a    	bl	0x100007ed8 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::second[abi:ne180100]()>
100007e34: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007e38: 910083ff    	add	sp, sp, #0x20
100007e3c: d65f03c0    	ret

0000000100007e40 <void std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::destroy[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void, void>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>*)>:
100007e40: d10083ff    	sub	sp, sp, #0x20
100007e44: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007e48: 910043fd    	add	x29, sp, #0x10
100007e4c: f90007e0    	str	x0, [sp, #0x8]
100007e50: f90003e1    	str	x1, [sp]
100007e54: f94003e0    	ldr	x0, [sp]
100007e58: 9400002e    	bl	0x100007f10 <void std::__1::__destroy_at[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, 0>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>*)>
100007e5c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007e60: 910083ff    	add	sp, sp, #0x20
100007e64: d65f03c0    	ret

0000000100007e68 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__get_value[abi:ne180100]()>:
100007e68: d10043ff    	sub	sp, sp, #0x10
100007e6c: f90007e0    	str	x0, [sp, #0x8]
100007e70: f94007e8    	ldr	x8, [sp, #0x8]
100007e74: 91004100    	add	x0, x8, #0x10
100007e78: 910043ff    	add	sp, sp, #0x10
100007e7c: d65f03c0    	ret

0000000100007e80 <void std::__1::__destroy_at[abi:ne180100]<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>, 0>(std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
100007e80: d10083ff    	sub	sp, sp, #0x20
100007e84: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007e88: 910043fd    	add	x29, sp, #0x10
100007e8c: f90007e0    	str	x0, [sp, #0x8]
100007e90: f94007e0    	ldr	x0, [sp, #0x8]
100007e94: 94000028    	bl	0x100007f34 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::~__list_node[abi:ne180100]()>
100007e98: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007e9c: 910083ff    	add	sp, sp, #0x20
100007ea0: d65f03c0    	ret

0000000100007ea4 <std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::deallocate[abi:ne180100](std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)>:
100007ea4: d100c3ff    	sub	sp, sp, #0x30
100007ea8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007eac: 910083fd    	add	x29, sp, #0x20
100007eb0: f81f83a0    	stur	x0, [x29, #-0x8]
100007eb4: f9000be1    	str	x1, [sp, #0x10]
100007eb8: f90007e2    	str	x2, [sp, #0x8]
100007ebc: f85f83a0    	ldur	x0, [x29, #-0x8]
100007ec0: f9400be1    	ldr	x1, [sp, #0x10]
100007ec4: f94007e2    	ldr	x2, [sp, #0x8]
100007ec8: 9400002b    	bl	0x100007f74 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::deallocate[abi:ne180100](std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)>
100007ecc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007ed0: 9100c3ff    	add	sp, sp, #0x30
100007ed4: d65f03c0    	ret

0000000100007ed8 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::second[abi:ne180100]()>:
100007ed8: d10083ff    	sub	sp, sp, #0x20
100007edc: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007ee0: 910043fd    	add	x29, sp, #0x10
100007ee4: f90007e0    	str	x0, [sp, #0x8]
100007ee8: f94007e0    	ldr	x0, [sp, #0x8]
100007eec: 94000004    	bl	0x100007efc <std::__1::__compressed_pair_elem<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, 1, true>::__get[abi:ne180100]()>
100007ef0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007ef4: 910083ff    	add	sp, sp, #0x20
100007ef8: d65f03c0    	ret

0000000100007efc <std::__1::__compressed_pair_elem<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, 1, true>::__get[abi:ne180100]()>:
100007efc: d10043ff    	sub	sp, sp, #0x10
100007f00: f90007e0    	str	x0, [sp, #0x8]
100007f04: f94007e0    	ldr	x0, [sp, #0x8]
100007f08: 910043ff    	add	sp, sp, #0x10
100007f0c: d65f03c0    	ret

0000000100007f10 <void std::__1::__destroy_at[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, 0>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>*)>:
100007f10: d10083ff    	sub	sp, sp, #0x20
100007f14: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007f18: 910043fd    	add	x29, sp, #0x10
100007f1c: f90007e0    	str	x0, [sp, #0x8]
100007f20: f94007e0    	ldr	x0, [sp, #0x8]
100007f24: 94000baf    	bl	0x10000ade0 <_strlen+0x10000ade0>
100007f28: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007f2c: 910083ff    	add	sp, sp, #0x20
100007f30: d65f03c0    	ret

0000000100007f34 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::~__list_node[abi:ne180100]()>:
100007f34: d10083ff    	sub	sp, sp, #0x20
100007f38: a9017bfd    	stp	x29, x30, [sp, #0x10]
100007f3c: 910043fd    	add	x29, sp, #0x10
100007f40: f90007e0    	str	x0, [sp, #0x8]
100007f44: f94007e0    	ldr	x0, [sp, #0x8]
100007f48: f90003e0    	str	x0, [sp]
100007f4c: 94000005    	bl	0x100007f60 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::~__list_node[abi:ne180100]()>
100007f50: f94003e0    	ldr	x0, [sp]
100007f54: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100007f58: 910083ff    	add	sp, sp, #0x20
100007f5c: d65f03c0    	ret

0000000100007f60 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::~__list_node[abi:ne180100]()>:
100007f60: d10043ff    	sub	sp, sp, #0x10
100007f64: f90007e0    	str	x0, [sp, #0x8]
100007f68: f94007e0    	ldr	x0, [sp, #0x8]
100007f6c: 910043ff    	add	sp, sp, #0x10
100007f70: d65f03c0    	ret

0000000100007f74 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::deallocate[abi:ne180100](std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)>:
100007f74: d100c3ff    	sub	sp, sp, #0x30
100007f78: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007f7c: 910083fd    	add	x29, sp, #0x20
100007f80: f81f83a0    	stur	x0, [x29, #-0x8]
100007f84: f9000be1    	str	x1, [sp, #0x10]
100007f88: f90007e2    	str	x2, [sp, #0x8]
100007f8c: f9400be0    	ldr	x0, [sp, #0x10]
100007f90: f94007e8    	ldr	x8, [sp, #0x8]
100007f94: d2800509    	mov	x9, #0x28               ; =40
100007f98: 9b097d01    	mul	x1, x8, x9
100007f9c: d2800102    	mov	x2, #0x8                ; =8
100007fa0: 94000006    	bl	0x100007fb8 <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)>
100007fa4: 14000001    	b	0x100007fa8 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::deallocate[abi:ne180100](std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)+0x34>
100007fa8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100007fac: 9100c3ff    	add	sp, sp, #0x30
100007fb0: d65f03c0    	ret
100007fb4: 97ffe9f5    	bl	0x100002788 <___clang_call_terminate>

0000000100007fb8 <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)>:
100007fb8: d100c3ff    	sub	sp, sp, #0x30
100007fbc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100007fc0: 910083fd    	add	x29, sp, #0x20
100007fc4: f81f83a0    	stur	x0, [x29, #-0x8]
100007fc8: f9000be1    	str	x1, [sp, #0x10]
100007fcc: f90007e2    	str	x2, [sp, #0x8]
100007fd0: f94007e0    	ldr	x0, [sp, #0x8]
100007fd4: 94000011    	bl	0x100008018 <std::__1::__is_overaligned_for_new[abi:ne180100](unsigned long)>
100007fd8: 36000120    	tbz	w0, #0x0, 0x100007ffc <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)+0x44>
100007fdc: 14000001    	b	0x100007fe0 <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)+0x28>
100007fe0: f94007e8    	ldr	x8, [sp, #0x8]
100007fe4: f90003e8    	str	x8, [sp]
100007fe8: f85f83a0    	ldur	x0, [x29, #-0x8]
100007fec: f9400be1    	ldr	x1, [sp, #0x10]
100007ff0: f94003e2    	ldr	x2, [sp]
100007ff4: 94000011    	bl	0x100008038 <void std::__1::__do_deallocate_handle_size[abi:ne180100]<std::align_val_t>(void*, unsigned long, std::align_val_t)>
100007ff8: 14000005    	b	0x10000800c <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)+0x54>
100007ffc: f85f83a0    	ldur	x0, [x29, #-0x8]
100008000: f9400be1    	ldr	x1, [sp, #0x10]
100008004: 94000019    	bl	0x100008068 <void std::__1::__do_deallocate_handle_size[abi:ne180100]<>(void*, unsigned long)>
100008008: 14000001    	b	0x10000800c <std::__1::__libcpp_deallocate[abi:ne180100](void*, unsigned long, unsigned long)+0x54>
10000800c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008010: 9100c3ff    	add	sp, sp, #0x30
100008014: d65f03c0    	ret

0000000100008018 <std::__1::__is_overaligned_for_new[abi:ne180100](unsigned long)>:
100008018: d10043ff    	sub	sp, sp, #0x10
10000801c: f90007e0    	str	x0, [sp, #0x8]
100008020: f94007e8    	ldr	x8, [sp, #0x8]
100008024: f1004108    	subs	x8, x8, #0x10
100008028: 1a9f97e8    	cset	w8, hi
10000802c: 12000100    	and	w0, w8, #0x1
100008030: 910043ff    	add	sp, sp, #0x10
100008034: d65f03c0    	ret

0000000100008038 <void std::__1::__do_deallocate_handle_size[abi:ne180100]<std::align_val_t>(void*, unsigned long, std::align_val_t)>:
100008038: d100c3ff    	sub	sp, sp, #0x30
10000803c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008040: 910083fd    	add	x29, sp, #0x20
100008044: f81f83a0    	stur	x0, [x29, #-0x8]
100008048: f9000be1    	str	x1, [sp, #0x10]
10000804c: f90007e2    	str	x2, [sp, #0x8]
100008050: f85f83a0    	ldur	x0, [x29, #-0x8]
100008054: f94007e1    	ldr	x1, [sp, #0x8]
100008058: 9400000e    	bl	0x100008090 <void std::__1::__libcpp_operator_delete[abi:ne180100]<void*, std::align_val_t>(void*, std::align_val_t)>
10000805c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008060: 9100c3ff    	add	sp, sp, #0x30
100008064: d65f03c0    	ret

0000000100008068 <void std::__1::__do_deallocate_handle_size[abi:ne180100]<>(void*, unsigned long)>:
100008068: d10083ff    	sub	sp, sp, #0x20
10000806c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008070: 910043fd    	add	x29, sp, #0x10
100008074: f90007e0    	str	x0, [sp, #0x8]
100008078: f90003e1    	str	x1, [sp]
10000807c: f94007e0    	ldr	x0, [sp, #0x8]
100008080: 9400000f    	bl	0x1000080bc <void std::__1::__libcpp_operator_delete[abi:ne180100]<void*>(void*)>
100008084: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008088: 910083ff    	add	sp, sp, #0x20
10000808c: d65f03c0    	ret

0000000100008090 <void std::__1::__libcpp_operator_delete[abi:ne180100]<void*, std::align_val_t>(void*, std::align_val_t)>:
100008090: d10083ff    	sub	sp, sp, #0x20
100008094: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008098: 910043fd    	add	x29, sp, #0x10
10000809c: f90007e0    	str	x0, [sp, #0x8]
1000080a0: f90003e1    	str	x1, [sp]
1000080a4: f94007e0    	ldr	x0, [sp, #0x8]
1000080a8: f94003e1    	ldr	x1, [sp]
1000080ac: 94000ba4    	bl	0x10000af3c <_strlen+0x10000af3c>
1000080b0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000080b4: 910083ff    	add	sp, sp, #0x20
1000080b8: d65f03c0    	ret

00000001000080bc <void std::__1::__libcpp_operator_delete[abi:ne180100]<void*>(void*)>:
1000080bc: d10083ff    	sub	sp, sp, #0x20
1000080c0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000080c4: 910043fd    	add	x29, sp, #0x10
1000080c8: f90007e0    	str	x0, [sp, #0x8]
1000080cc: f94007e0    	ldr	x0, [sp, #0x8]
1000080d0: 94000b98    	bl	0x10000af30 <_strlen+0x10000af30>
1000080d4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000080d8: 910083ff    	add	sp, sp, #0x20
1000080dc: d65f03c0    	ret

00000001000080e0 <std::__1::__libcpp_numeric_limits<long, true>::max[abi:ne180100]()>:
1000080e0: 92f00000    	mov	x0, #0x7fffffffffffffff ; =9223372036854775807
1000080e4: d65f03c0    	ret

00000001000080e8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>:
1000080e8: d100c3ff    	sub	sp, sp, #0x30
1000080ec: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000080f0: 910083fd    	add	x29, sp, #0x20
1000080f4: f81f83a0    	stur	x0, [x29, #-0x8]
1000080f8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000080fc: f90007e0    	str	x0, [sp, #0x8]
100008100: d10027a1    	sub	x1, x29, #0x9
100008104: d1002ba2    	sub	x2, x29, #0xa
100008108: 9400000a    	bl	0x100008130 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__value_init_tag, std::__1::__default_init_tag>(std::__1::__value_init_tag&&, std::__1::__default_init_tag&&)>
10000810c: 14000001    	b	0x100008110 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()+0x28>
100008110: f94007e0    	ldr	x0, [sp, #0x8]
100008114: d2800001    	mov	x1, #0x0                ; =0
100008118: 97fffdf1    	bl	0x1000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>
10000811c: f94007e0    	ldr	x0, [sp, #0x8]
100008120: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008124: 9100c3ff    	add	sp, sp, #0x30
100008128: d65f03c0    	ret
10000812c: 97ffe997    	bl	0x100002788 <___clang_call_terminate>

0000000100008130 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__value_init_tag, std::__1::__default_init_tag>(std::__1::__value_init_tag&&, std::__1::__default_init_tag&&)>:
100008130: d100c3ff    	sub	sp, sp, #0x30
100008134: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008138: 910083fd    	add	x29, sp, #0x20
10000813c: f81f83a0    	stur	x0, [x29, #-0x8]
100008140: f9000be1    	str	x1, [sp, #0x10]
100008144: f90007e2    	str	x2, [sp, #0x8]
100008148: f85f83a0    	ldur	x0, [x29, #-0x8]
10000814c: f90003e0    	str	x0, [sp]
100008150: f9400be1    	ldr	x1, [sp, #0x10]
100008154: f94007e2    	ldr	x2, [sp, #0x8]
100008158: 94000005    	bl	0x10000816c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__value_init_tag, std::__1::__default_init_tag>(std::__1::__value_init_tag&&, std::__1::__default_init_tag&&)>
10000815c: f94003e0    	ldr	x0, [sp]
100008160: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008164: 9100c3ff    	add	sp, sp, #0x30
100008168: d65f03c0    	ret

000000010000816c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__value_init_tag, std::__1::__default_init_tag>(std::__1::__value_init_tag&&, std::__1::__default_init_tag&&)>:
10000816c: d10103ff    	sub	sp, sp, #0x40
100008170: a9037bfd    	stp	x29, x30, [sp, #0x30]
100008174: 9100c3fd    	add	x29, sp, #0x30
100008178: f81f83a0    	stur	x0, [x29, #-0x8]
10000817c: f81f03a1    	stur	x1, [x29, #-0x10]
100008180: f9000fe2    	str	x2, [sp, #0x18]
100008184: f85f83a0    	ldur	x0, [x29, #-0x8]
100008188: f90007e0    	str	x0, [sp, #0x8]
10000818c: 94000007    	bl	0x1000081a8 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__compressed_pair_elem[abi:ne180100](std::__1::__value_init_tag)>
100008190: f94007e0    	ldr	x0, [sp, #0x8]
100008194: 97fffd55    	bl	0x1000076e8 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>
100008198: f94007e0    	ldr	x0, [sp, #0x8]
10000819c: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000081a0: 910103ff    	add	sp, sp, #0x40
1000081a4: d65f03c0    	ret

00000001000081a8 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__compressed_pair_elem[abi:ne180100](std::__1::__value_init_tag)>:
1000081a8: d10043ff    	sub	sp, sp, #0x10
1000081ac: f90003e0    	str	x0, [sp]
1000081b0: f94003e0    	ldr	x0, [sp]
1000081b4: f900001f    	str	xzr, [x0]
1000081b8: f900041f    	str	xzr, [x0, #0x8]
1000081bc: f900081f    	str	xzr, [x0, #0x10]
1000081c0: 910043ff    	add	sp, sp, #0x10
1000081c4: d65f03c0    	ret

00000001000081c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__make_iterator[abi:ne180100](char*)>:
1000081c8: d100c3ff    	sub	sp, sp, #0x30
1000081cc: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000081d0: 910083fd    	add	x29, sp, #0x20
1000081d4: f9000be0    	str	x0, [sp, #0x10]
1000081d8: f90007e1    	str	x1, [sp, #0x8]
1000081dc: f94007e1    	ldr	x1, [sp, #0x8]
1000081e0: d10023a0    	sub	x0, x29, #0x8
1000081e4: 9400001a    	bl	0x10000824c <std::__1::__wrap_iter<char*>::__wrap_iter[abi:ne180100](char*)>
1000081e8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000081ec: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000081f0: 9100c3ff    	add	sp, sp, #0x30
1000081f4: d65f03c0    	ret

00000001000081f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()>:
1000081f8: d100c3ff    	sub	sp, sp, #0x30
1000081fc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008200: 910083fd    	add	x29, sp, #0x20
100008204: f81f83a0    	stur	x0, [x29, #-0x8]
100008208: f85f83a0    	ldur	x0, [x29, #-0x8]
10000820c: f9000be0    	str	x0, [sp, #0x10]
100008210: 97fffdb8    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
100008214: 360000c0    	tbz	w0, #0x0, 0x10000822c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()+0x34>
100008218: 14000001    	b	0x10000821c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()+0x24>
10000821c: f9400be0    	ldr	x0, [sp, #0x10]
100008220: 94000020    	bl	0x1000082a0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_pointer[abi:ne180100]()>
100008224: f90007e0    	str	x0, [sp, #0x8]
100008228: 14000005    	b	0x10000823c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()+0x44>
10000822c: f9400be0    	ldr	x0, [sp, #0x10]
100008230: 94000026    	bl	0x1000082c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]()>
100008234: f90007e0    	str	x0, [sp, #0x8]
100008238: 14000001    	b	0x10000823c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()+0x44>
10000823c: f94007e0    	ldr	x0, [sp, #0x8]
100008240: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008244: 9100c3ff    	add	sp, sp, #0x30
100008248: d65f03c0    	ret

000000010000824c <std::__1::__wrap_iter<char*>::__wrap_iter[abi:ne180100](char*)>:
10000824c: d100c3ff    	sub	sp, sp, #0x30
100008250: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008254: 910083fd    	add	x29, sp, #0x20
100008258: f81f83a0    	stur	x0, [x29, #-0x8]
10000825c: f9000be1    	str	x1, [sp, #0x10]
100008260: f85f83a0    	ldur	x0, [x29, #-0x8]
100008264: f90007e0    	str	x0, [sp, #0x8]
100008268: f9400be1    	ldr	x1, [sp, #0x10]
10000826c: 94000005    	bl	0x100008280 <std::__1::__wrap_iter<char*>::__wrap_iter[abi:ne180100](char*)>
100008270: f94007e0    	ldr	x0, [sp, #0x8]
100008274: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008278: 9100c3ff    	add	sp, sp, #0x30
10000827c: d65f03c0    	ret

0000000100008280 <std::__1::__wrap_iter<char*>::__wrap_iter[abi:ne180100](char*)>:
100008280: d10043ff    	sub	sp, sp, #0x10
100008284: f90007e0    	str	x0, [sp, #0x8]
100008288: f90003e1    	str	x1, [sp]
10000828c: f94007e0    	ldr	x0, [sp, #0x8]
100008290: f94003e8    	ldr	x8, [sp]
100008294: f9000008    	str	x8, [x0]
100008298: 910043ff    	add	sp, sp, #0x10
10000829c: d65f03c0    	ret

00000001000082a0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_pointer[abi:ne180100]()>:
1000082a0: d10083ff    	sub	sp, sp, #0x20
1000082a4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000082a8: 910043fd    	add	x29, sp, #0x10
1000082ac: f90007e0    	str	x0, [sp, #0x8]
1000082b0: f94007e0    	ldr	x0, [sp, #0x8]
1000082b4: 97fffd81    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
1000082b8: f9400000    	ldr	x0, [x0]
1000082bc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000082c0: 910083ff    	add	sp, sp, #0x20
1000082c4: d65f03c0    	ret

00000001000082c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]()>:
1000082c8: d10083ff    	sub	sp, sp, #0x20
1000082cc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000082d0: 910043fd    	add	x29, sp, #0x10
1000082d4: f90007e0    	str	x0, [sp, #0x8]
1000082d8: f94007e0    	ldr	x0, [sp, #0x8]
1000082dc: 97fffd77    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
1000082e0: 94000004    	bl	0x1000082f0 <std::__1::pointer_traits<char*>::pointer_to[abi:ne180100](char&)>
1000082e4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000082e8: 910083ff    	add	sp, sp, #0x20
1000082ec: d65f03c0    	ret

00000001000082f0 <std::__1::pointer_traits<char*>::pointer_to[abi:ne180100](char&)>:
1000082f0: d10043ff    	sub	sp, sp, #0x10
1000082f4: f90007e0    	str	x0, [sp, #0x8]
1000082f8: f94007e0    	ldr	x0, [sp, #0x8]
1000082fc: 910043ff    	add	sp, sp, #0x10
100008300: d65f03c0    	ret

0000000100008304 <bool std::__1::operator!=[abi:ne180100]<char*>(std::__1::__wrap_iter<char*> const&, std::__1::__wrap_iter<char*> const&)>:
100008304: d10083ff    	sub	sp, sp, #0x20
100008308: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000830c: 910043fd    	add	x29, sp, #0x10
100008310: f90007e0    	str	x0, [sp, #0x8]
100008314: f90003e1    	str	x1, [sp]
100008318: f94007e0    	ldr	x0, [sp, #0x8]
10000831c: f94003e1    	ldr	x1, [sp]
100008320: 94000014    	bl	0x100008370 <bool std::__1::operator==[abi:ne180100]<char*>(std::__1::__wrap_iter<char*> const&, std::__1::__wrap_iter<char*> const&)>
100008324: 52000008    	eor	w8, w0, #0x1
100008328: 12000100    	and	w0, w8, #0x1
10000832c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008330: 910083ff    	add	sp, sp, #0x20
100008334: d65f03c0    	ret

0000000100008338 <std::__1::__wrap_iter<char*>::operator*[abi:ne180100]() const>:
100008338: d10043ff    	sub	sp, sp, #0x10
10000833c: f90007e0    	str	x0, [sp, #0x8]
100008340: f94007e8    	ldr	x8, [sp, #0x8]
100008344: f9400100    	ldr	x0, [x8]
100008348: 910043ff    	add	sp, sp, #0x10
10000834c: d65f03c0    	ret

0000000100008350 <std::__1::__wrap_iter<char*>::operator++[abi:ne180100]()>:
100008350: d10043ff    	sub	sp, sp, #0x10
100008354: f90007e0    	str	x0, [sp, #0x8]
100008358: f94007e0    	ldr	x0, [sp, #0x8]
10000835c: f9400008    	ldr	x8, [x0]
100008360: 91000508    	add	x8, x8, #0x1
100008364: f9000008    	str	x8, [x0]
100008368: 910043ff    	add	sp, sp, #0x10
10000836c: d65f03c0    	ret

0000000100008370 <bool std::__1::operator==[abi:ne180100]<char*>(std::__1::__wrap_iter<char*> const&, std::__1::__wrap_iter<char*> const&)>:
100008370: d100c3ff    	sub	sp, sp, #0x30
100008374: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008378: 910083fd    	add	x29, sp, #0x20
10000837c: f81f83a0    	stur	x0, [x29, #-0x8]
100008380: f9000be1    	str	x1, [sp, #0x10]
100008384: f85f83a0    	ldur	x0, [x29, #-0x8]
100008388: 9400000c    	bl	0x1000083b8 <std::__1::__wrap_iter<char*>::base[abi:ne180100]() const>
10000838c: f90007e0    	str	x0, [sp, #0x8]
100008390: f9400be0    	ldr	x0, [sp, #0x10]
100008394: 94000009    	bl	0x1000083b8 <std::__1::__wrap_iter<char*>::base[abi:ne180100]() const>
100008398: aa0003e8    	mov	x8, x0
10000839c: f94007e0    	ldr	x0, [sp, #0x8]
1000083a0: eb080008    	subs	x8, x0, x8
1000083a4: 1a9f17e8    	cset	w8, eq
1000083a8: 12000100    	and	w0, w8, #0x1
1000083ac: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000083b0: 9100c3ff    	add	sp, sp, #0x30
1000083b4: d65f03c0    	ret

00000001000083b8 <std::__1::__wrap_iter<char*>::base[abi:ne180100]() const>:
1000083b8: d10043ff    	sub	sp, sp, #0x10
1000083bc: f90007e0    	str	x0, [sp, #0x8]
1000083c0: f94007e8    	ldr	x8, [sp, #0x8]
1000083c4: f9400100    	ldr	x0, [x8]
1000083c8: 910043ff    	add	sp, sp, #0x10
1000083cc: d65f03c0    	ret

00000001000083d0 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::list[abi:ne180100]()>:
1000083d0: d10083ff    	sub	sp, sp, #0x20
1000083d4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000083d8: 910043fd    	add	x29, sp, #0x10
1000083dc: f90007e0    	str	x0, [sp, #0x8]
1000083e0: f94007e0    	ldr	x0, [sp, #0x8]
1000083e4: f90003e0    	str	x0, [sp]
1000083e8: 94000005    	bl	0x1000083fc <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__list_imp()>
1000083ec: f94003e0    	ldr	x0, [sp]
1000083f0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000083f4: 910083ff    	add	sp, sp, #0x20
1000083f8: d65f03c0    	ret

00000001000083fc <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__list_imp()>:
1000083fc: d100c3ff    	sub	sp, sp, #0x30
100008400: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008404: 910083fd    	add	x29, sp, #0x20
100008408: f81f83a0    	stur	x0, [x29, #-0x8]
10000840c: f85f83a0    	ldur	x0, [x29, #-0x8]
100008410: f90007e0    	str	x0, [sp, #0x8]
100008414: 9400000e    	bl	0x10000844c <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100]()>
100008418: 14000001    	b	0x10000841c <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__list_imp()+0x20>
10000841c: f94007e8    	ldr	x8, [sp, #0x8]
100008420: 91004100    	add	x0, x8, #0x10
100008424: d10033a1    	sub	x1, x29, #0xc
100008428: b81f43bf    	stur	wzr, [x29, #-0xc]
10000842c: d10037a2    	sub	x2, x29, #0xd
100008430: 94000012    	bl	0x100008478 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__compressed_pair[abi:ne180100]<int, std::__1::__default_init_tag>(int&&, std::__1::__default_init_tag&&)>
100008434: 14000001    	b	0x100008438 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__list_imp()+0x3c>
100008438: f94007e0    	ldr	x0, [sp, #0x8]
10000843c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008440: 9100c3ff    	add	sp, sp, #0x30
100008444: d65f03c0    	ret
100008448: 97ffe8d0    	bl	0x100002788 <___clang_call_terminate>

000000010000844c <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100]()>:
10000844c: d10083ff    	sub	sp, sp, #0x20
100008450: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008454: 910043fd    	add	x29, sp, #0x10
100008458: f90007e0    	str	x0, [sp, #0x8]
10000845c: f94007e0    	ldr	x0, [sp, #0x8]
100008460: f90003e0    	str	x0, [sp]
100008464: 94000014    	bl	0x1000084b4 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100]()>
100008468: f94003e0    	ldr	x0, [sp]
10000846c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008470: 910083ff    	add	sp, sp, #0x20
100008474: d65f03c0    	ret

0000000100008478 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__compressed_pair[abi:ne180100]<int, std::__1::__default_init_tag>(int&&, std::__1::__default_init_tag&&)>:
100008478: d100c3ff    	sub	sp, sp, #0x30
10000847c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008480: 910083fd    	add	x29, sp, #0x20
100008484: f81f83a0    	stur	x0, [x29, #-0x8]
100008488: f9000be1    	str	x1, [sp, #0x10]
10000848c: f90007e2    	str	x2, [sp, #0x8]
100008490: f85f83a0    	ldur	x0, [x29, #-0x8]
100008494: f90003e0    	str	x0, [sp]
100008498: f9400be1    	ldr	x1, [sp, #0x10]
10000849c: f94007e2    	ldr	x2, [sp, #0x8]
1000084a0: 94000018    	bl	0x100008500 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__compressed_pair[abi:ne180100]<int, std::__1::__default_init_tag>(int&&, std::__1::__default_init_tag&&)>
1000084a4: f94003e0    	ldr	x0, [sp]
1000084a8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000084ac: 9100c3ff    	add	sp, sp, #0x30
1000084b0: d65f03c0    	ret

00000001000084b4 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100]()>:
1000084b4: d10083ff    	sub	sp, sp, #0x20
1000084b8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000084bc: 910043fd    	add	x29, sp, #0x10
1000084c0: f90007e0    	str	x0, [sp, #0x8]
1000084c4: f94007e0    	ldr	x0, [sp, #0x8]
1000084c8: f90003e0    	str	x0, [sp]
1000084cc: 97fffe37    	bl	0x100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>
1000084d0: 97fffe31    	bl	0x100007d94 <std::__1::__list_node_pointer_traits<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__unsafe_link_pointer_cast[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
1000084d4: aa0003e8    	mov	x8, x0
1000084d8: f94003e0    	ldr	x0, [sp]
1000084dc: f9000008    	str	x8, [x0]
1000084e0: 97fffe32    	bl	0x100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>
1000084e4: 97fffe2c    	bl	0x100007d94 <std::__1::__list_node_pointer_traits<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__unsafe_link_pointer_cast[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
1000084e8: aa0003e8    	mov	x8, x0
1000084ec: f94003e0    	ldr	x0, [sp]
1000084f0: f9000408    	str	x8, [x0, #0x8]
1000084f4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000084f8: 910083ff    	add	sp, sp, #0x20
1000084fc: d65f03c0    	ret

0000000100008500 <std::__1::__compressed_pair<unsigned long, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__compressed_pair[abi:ne180100]<int, std::__1::__default_init_tag>(int&&, std::__1::__default_init_tag&&)>:
100008500: d10103ff    	sub	sp, sp, #0x40
100008504: a9037bfd    	stp	x29, x30, [sp, #0x30]
100008508: 9100c3fd    	add	x29, sp, #0x30
10000850c: f81f83a0    	stur	x0, [x29, #-0x8]
100008510: f81f03a1    	stur	x1, [x29, #-0x10]
100008514: f9000fe2    	str	x2, [sp, #0x18]
100008518: f85f83a0    	ldur	x0, [x29, #-0x8]
10000851c: f90007e0    	str	x0, [sp, #0x8]
100008520: f85f03a1    	ldur	x1, [x29, #-0x10]
100008524: 94000007    	bl	0x100008540 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__compressed_pair_elem[abi:ne180100]<int, void>(int&&)>
100008528: f94007e0    	ldr	x0, [sp, #0x8]
10000852c: 9400000e    	bl	0x100008564 <std::__1::__compressed_pair_elem<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, 1, true>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>
100008530: f94007e0    	ldr	x0, [sp, #0x8]
100008534: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100008538: 910103ff    	add	sp, sp, #0x40
10000853c: d65f03c0    	ret

0000000100008540 <std::__1::__compressed_pair_elem<unsigned long, 0, false>::__compressed_pair_elem[abi:ne180100]<int, void>(int&&)>:
100008540: d10043ff    	sub	sp, sp, #0x10
100008544: f90007e0    	str	x0, [sp, #0x8]
100008548: f90003e1    	str	x1, [sp]
10000854c: f94007e0    	ldr	x0, [sp, #0x8]
100008550: f94003e8    	ldr	x8, [sp]
100008554: b9800108    	ldrsw	x8, [x8]
100008558: f9000008    	str	x8, [x0]
10000855c: 910043ff    	add	sp, sp, #0x10
100008560: d65f03c0    	ret

0000000100008564 <std::__1::__compressed_pair_elem<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, 1, true>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>:
100008564: d100c3ff    	sub	sp, sp, #0x30
100008568: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000856c: 910083fd    	add	x29, sp, #0x20
100008570: f9000be0    	str	x0, [sp, #0x10]
100008574: f9400be0    	ldr	x0, [sp, #0x10]
100008578: f90007e0    	str	x0, [sp, #0x8]
10000857c: 94000005    	bl	0x100008590 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocator[abi:ne180100]()>
100008580: f94007e0    	ldr	x0, [sp, #0x8]
100008584: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008588: 9100c3ff    	add	sp, sp, #0x30
10000858c: d65f03c0    	ret

0000000100008590 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocator[abi:ne180100]()>:
100008590: d10083ff    	sub	sp, sp, #0x20
100008594: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008598: 910043fd    	add	x29, sp, #0x10
10000859c: f90007e0    	str	x0, [sp, #0x8]
1000085a0: f94007e0    	ldr	x0, [sp, #0x8]
1000085a4: f90003e0    	str	x0, [sp]
1000085a8: 94000005    	bl	0x1000085bc <std::__1::__non_trivial_if<true, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__non_trivial_if[abi:ne180100]()>
1000085ac: f94003e0    	ldr	x0, [sp]
1000085b0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000085b4: 910083ff    	add	sp, sp, #0x20
1000085b8: d65f03c0    	ret

00000001000085bc <std::__1::__non_trivial_if<true, std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__non_trivial_if[abi:ne180100]()>:
1000085bc: d10043ff    	sub	sp, sp, #0x10
1000085c0: f90007e0    	str	x0, [sp, #0x8]
1000085c4: f94007e0    	ldr	x0, [sp, #0x8]
1000085c8: 910043ff    	add	sp, sp, #0x10
1000085cc: d65f03c0    	ret

00000001000085d0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)>:
1000085d0: d10283ff    	sub	sp, sp, #0xa0
1000085d4: a9097bfd    	stp	x29, x30, [sp, #0x90]
1000085d8: 910243fd    	add	x29, sp, #0x90
1000085dc: f81f83a0    	stur	x0, [x29, #-0x8]
1000085e0: f81f03a1    	stur	x1, [x29, #-0x10]
1000085e4: f81e83a2    	stur	x2, [x29, #-0x18]
1000085e8: f85f83a1    	ldur	x1, [x29, #-0x8]
1000085ec: d100a3a0    	sub	x0, x29, #0x28
1000085f0: 94000a08    	bl	0x10000ae10 <_strlen+0x10000ae10>
1000085f4: 14000001    	b	0x1000085f8 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x28>
1000085f8: d100a3a0    	sub	x0, x29, #0x28
1000085fc: 9400007d    	bl	0x1000087f0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>::sentry::operator bool[abi:ne180100]() const>
100008600: b90047e0    	str	w0, [sp, #0x44]
100008604: 14000001    	b	0x100008608 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x38>
100008608: b94047e8    	ldr	w8, [sp, #0x44]
10000860c: 36000c08    	tbz	w8, #0x0, 0x10000878c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1bc>
100008610: 14000001    	b	0x100008614 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x44>
100008614: f85f83a1    	ldur	x1, [x29, #-0x8]
100008618: 910123e0    	add	x0, sp, #0x48
10000861c: 9400010c    	bl	0x100008a4c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::ostreambuf_iterator[abi:ne180100](std::__1::basic_ostream<char, std::__1::char_traits<char>>&)>
100008620: f85f03a8    	ldur	x8, [x29, #-0x10]
100008624: f9001fe8    	str	x8, [sp, #0x38]
100008628: f85f83a8    	ldur	x8, [x29, #-0x8]
10000862c: f9400109    	ldr	x9, [x8]
100008630: f85e8129    	ldur	x9, [x9, #-0x18]
100008634: 8b090100    	add	x0, x8, x9
100008638: 94000112    	bl	0x100008a80 <std::__1::ios_base::flags[abi:ne180100]() const>
10000863c: b90043e0    	str	w0, [sp, #0x40]
100008640: 14000001    	b	0x100008644 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x74>
100008644: b94043e8    	ldr	w8, [sp, #0x40]
100008648: 52801609    	mov	w9, #0xb0               ; =176
10000864c: 0a090108    	and	w8, w8, w9
100008650: 71008108    	subs	w8, w8, #0x20
100008654: 1a9f07e8    	cset	w8, ne
100008658: 370000e8    	tbnz	w8, #0x0, 0x100008674 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0xa4>
10000865c: 14000001    	b	0x100008660 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x90>
100008660: f85f03a8    	ldur	x8, [x29, #-0x10]
100008664: f85e83a9    	ldur	x9, [x29, #-0x18]
100008668: 8b090108    	add	x8, x8, x9
10000866c: f9001be8    	str	x8, [sp, #0x30]
100008670: 14000004    	b	0x100008680 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0xb0>
100008674: f85f03a8    	ldur	x8, [x29, #-0x10]
100008678: f9001be8    	str	x8, [sp, #0x30]
10000867c: 14000001    	b	0x100008680 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0xb0>
100008680: f9401be8    	ldr	x8, [sp, #0x30]
100008684: f9000be8    	str	x8, [sp, #0x10]
100008688: f85f03a8    	ldur	x8, [x29, #-0x10]
10000868c: f85e83a9    	ldur	x9, [x29, #-0x18]
100008690: 8b090108    	add	x8, x8, x9
100008694: f9000fe8    	str	x8, [sp, #0x18]
100008698: f85f83a8    	ldur	x8, [x29, #-0x8]
10000869c: f9400109    	ldr	x9, [x8]
1000086a0: f85e8129    	ldur	x9, [x9, #-0x18]
1000086a4: 8b090108    	add	x8, x8, x9
1000086a8: f90013e8    	str	x8, [sp, #0x20]
1000086ac: f85f83a8    	ldur	x8, [x29, #-0x8]
1000086b0: f9400109    	ldr	x9, [x8]
1000086b4: f85e8129    	ldur	x9, [x9, #-0x18]
1000086b8: 8b090100    	add	x0, x8, x9
1000086bc: 940000f7    	bl	0x100008a98 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fill[abi:ne180100]() const>
1000086c0: b9002fe0    	str	w0, [sp, #0x2c]
1000086c4: 14000001    	b	0x1000086c8 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0xf8>
1000086c8: b9402fe8    	ldr	w8, [sp, #0x2c]
1000086cc: f94013e4    	ldr	x4, [sp, #0x20]
1000086d0: f9400fe3    	ldr	x3, [sp, #0x18]
1000086d4: f9400be2    	ldr	x2, [sp, #0x10]
1000086d8: f9401fe1    	ldr	x1, [sp, #0x38]
1000086dc: f94027e0    	ldr	x0, [sp, #0x48]
1000086e0: 13001d05    	sxtb	w5, w8
1000086e4: 9400004a    	bl	0x10000880c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)>
1000086e8: f90007e0    	str	x0, [sp, #0x8]
1000086ec: 14000001    	b	0x1000086f0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x120>
1000086f0: f94007e8    	ldr	x8, [sp, #0x8]
1000086f4: d10103a0    	sub	x0, x29, #0x40
1000086f8: f81c03a8    	stur	x8, [x29, #-0x40]
1000086fc: 94000100    	bl	0x100008afc <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::failed[abi:ne180100]() const>
100008700: 36000440    	tbz	w0, #0x0, 0x100008788 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1b8>
100008704: 14000001    	b	0x100008708 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x138>
100008708: f85f83a8    	ldur	x8, [x29, #-0x8]
10000870c: f9400109    	ldr	x9, [x8]
100008710: f85e8129    	ldur	x9, [x9, #-0x18]
100008714: 8b090100    	add	x0, x8, x9
100008718: 528000a1    	mov	w1, #0x5                ; =5
10000871c: 94000101    	bl	0x100008b20 <std::__1::basic_ios<char, std::__1::char_traits<char>>::setstate[abi:ne180100](unsigned int)>
100008720: 14000001    	b	0x100008724 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x154>
100008724: 14000019    	b	0x100008788 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1b8>
100008728: f81d03a0    	stur	x0, [x29, #-0x30]
10000872c: aa0103e8    	mov	x8, x1
100008730: b81cc3a8    	stur	w8, [x29, #-0x34]
100008734: 14000007    	b	0x100008750 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x180>
100008738: f81d03a0    	stur	x0, [x29, #-0x30]
10000873c: aa0103e8    	mov	x8, x1
100008740: b81cc3a8    	stur	w8, [x29, #-0x34]
100008744: d100a3a0    	sub	x0, x29, #0x28
100008748: 940009b5    	bl	0x10000ae1c <_strlen+0x10000ae1c>
10000874c: 14000001    	b	0x100008750 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x180>
100008750: f85d03a0    	ldur	x0, [x29, #-0x30]
100008754: 94000a06    	bl	0x10000af6c <_strlen+0x10000af6c>
100008758: f85f83a8    	ldur	x8, [x29, #-0x8]
10000875c: f9400109    	ldr	x9, [x8]
100008760: f85e8129    	ldur	x9, [x9, #-0x18]
100008764: 8b090100    	add	x0, x8, x9
100008768: 940009e6    	bl	0x10000af00 <_strlen+0x10000af00>
10000876c: 14000001    	b	0x100008770 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1a0>
100008770: 94000a02    	bl	0x10000af78 <_strlen+0x10000af78>
100008774: 14000001    	b	0x100008778 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1a8>
100008778: f85f83a0    	ldur	x0, [x29, #-0x8]
10000877c: a9497bfd    	ldp	x29, x30, [sp, #0x90]
100008780: 910283ff    	add	sp, sp, #0xa0
100008784: d65f03c0    	ret
100008788: 14000001    	b	0x10000878c <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1bc>
10000878c: d100a3a0    	sub	x0, x29, #0x28
100008790: 940009a3    	bl	0x10000ae1c <_strlen+0x10000ae1c>
100008794: 17fffff9    	b	0x100008778 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1a8>
100008798: f81d03a0    	stur	x0, [x29, #-0x30]
10000879c: aa0103e8    	mov	x8, x1
1000087a0: b81cc3a8    	stur	w8, [x29, #-0x34]
1000087a4: 940009f5    	bl	0x10000af78 <_strlen+0x10000af78>
1000087a8: 14000001    	b	0x1000087ac <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1dc>
1000087ac: 14000001    	b	0x1000087b0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>& std::__1::__put_character_sequence[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::basic_ostream<char, std::__1::char_traits<char>>&, char const*, unsigned long)+0x1e0>
1000087b0: f85d03a0    	ldur	x0, [x29, #-0x30]
1000087b4: 94000943    	bl	0x10000acc0 <_strlen+0x10000acc0>
1000087b8: 97ffe7f4    	bl	0x100002788 <___clang_call_terminate>

00000001000087bc <std::__1::char_traits<char>::length[abi:ne180100](char const*)>:
1000087bc: d10083ff    	sub	sp, sp, #0x20
1000087c0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000087c4: 910043fd    	add	x29, sp, #0x10
1000087c8: f90007e0    	str	x0, [sp, #0x8]
1000087cc: f94007e0    	ldr	x0, [sp, #0x8]
1000087d0: 940001a7    	bl	0x100008e6c <std::__1::__constexpr_strlen[abi:ne180100](char const*)>
1000087d4: f90003e0    	str	x0, [sp]
1000087d8: 14000001    	b	0x1000087dc <std::__1::char_traits<char>::length[abi:ne180100](char const*)+0x20>
1000087dc: f94003e0    	ldr	x0, [sp]
1000087e0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000087e4: 910083ff    	add	sp, sp, #0x20
1000087e8: d65f03c0    	ret
1000087ec: 97ffe7e7    	bl	0x100002788 <___clang_call_terminate>

00000001000087f0 <std::__1::basic_ostream<char, std::__1::char_traits<char>>::sentry::operator bool[abi:ne180100]() const>:
1000087f0: d10043ff    	sub	sp, sp, #0x10
1000087f4: f90007e0    	str	x0, [sp, #0x8]
1000087f8: f94007e8    	ldr	x8, [sp, #0x8]
1000087fc: 39400108    	ldrb	w8, [x8]
100008800: 12000100    	and	w0, w8, #0x1
100008804: 910043ff    	add	sp, sp, #0x10
100008808: d65f03c0    	ret

000000010000880c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)>:
10000880c: d10283ff    	sub	sp, sp, #0xa0
100008810: a9097bfd    	stp	x29, x30, [sp, #0x90]
100008814: 910243fd    	add	x29, sp, #0x90
100008818: f81f03a0    	stur	x0, [x29, #-0x10]
10000881c: f81e83a1    	stur	x1, [x29, #-0x18]
100008820: f81e03a2    	stur	x2, [x29, #-0x20]
100008824: f81d83a3    	stur	x3, [x29, #-0x28]
100008828: f81d03a4    	stur	x4, [x29, #-0x30]
10000882c: 381cf3a5    	sturb	w5, [x29, #-0x31]
100008830: f85f03a8    	ldur	x8, [x29, #-0x10]
100008834: f1000108    	subs	x8, x8, #0x0
100008838: 1a9f07e8    	cset	w8, ne
10000883c: 370000a8    	tbnz	w8, #0x0, 0x100008850 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x44>
100008840: 14000001    	b	0x100008844 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x38>
100008844: f85f03a8    	ldur	x8, [x29, #-0x10]
100008848: f81f83a8    	stur	x8, [x29, #-0x8]
10000884c: 1400007a    	b	0x100008a34 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x228>
100008850: f85d83a8    	ldur	x8, [x29, #-0x28]
100008854: f85e83a9    	ldur	x9, [x29, #-0x18]
100008858: eb090108    	subs	x8, x8, x9
10000885c: f81c03a8    	stur	x8, [x29, #-0x40]
100008860: f85d03a0    	ldur	x0, [x29, #-0x30]
100008864: 940000ba    	bl	0x100008b4c <std::__1::ios_base::width[abi:ne180100]() const>
100008868: f90027e0    	str	x0, [sp, #0x48]
10000886c: f94027e8    	ldr	x8, [sp, #0x48]
100008870: f85c03a9    	ldur	x9, [x29, #-0x40]
100008874: eb090108    	subs	x8, x8, x9
100008878: 1a9fc7e8    	cset	w8, le
10000887c: 370000e8    	tbnz	w8, #0x0, 0x100008898 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x8c>
100008880: 14000001    	b	0x100008884 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x78>
100008884: f85c03a9    	ldur	x9, [x29, #-0x40]
100008888: f94027e8    	ldr	x8, [sp, #0x48]
10000888c: eb090108    	subs	x8, x8, x9
100008890: f90027e8    	str	x8, [sp, #0x48]
100008894: 14000003    	b	0x1000088a0 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x94>
100008898: f90027ff    	str	xzr, [sp, #0x48]
10000889c: 14000001    	b	0x1000088a0 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x94>
1000088a0: f85e03a8    	ldur	x8, [x29, #-0x20]
1000088a4: f85e83a9    	ldur	x9, [x29, #-0x18]
1000088a8: eb090108    	subs	x8, x8, x9
1000088ac: f90023e8    	str	x8, [sp, #0x40]
1000088b0: f94023e8    	ldr	x8, [sp, #0x40]
1000088b4: f1000108    	subs	x8, x8, #0x0
1000088b8: 1a9fc7e8    	cset	w8, le
1000088bc: 37000208    	tbnz	w8, #0x0, 0x1000088fc <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0xf0>
1000088c0: 14000001    	b	0x1000088c4 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0xb8>
1000088c4: f85f03a0    	ldur	x0, [x29, #-0x10]
1000088c8: f85e83a1    	ldur	x1, [x29, #-0x18]
1000088cc: f94023e2    	ldr	x2, [sp, #0x40]
1000088d0: 940000a5    	bl	0x100008b64 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sputn[abi:ne180100](char const*, long)>
1000088d4: f94023e8    	ldr	x8, [sp, #0x40]
1000088d8: eb080008    	subs	x8, x0, x8
1000088dc: 1a9f17e8    	cset	w8, eq
1000088e0: 370000c8    	tbnz	w8, #0x0, 0x1000088f8 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0xec>
1000088e4: 14000001    	b	0x1000088e8 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0xdc>
1000088e8: f81f03bf    	stur	xzr, [x29, #-0x10]
1000088ec: f85f03a8    	ldur	x8, [x29, #-0x10]
1000088f0: f81f83a8    	stur	x8, [x29, #-0x8]
1000088f4: 14000050    	b	0x100008a34 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x228>
1000088f8: 14000001    	b	0x1000088fc <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0xf0>
1000088fc: f94027e8    	ldr	x8, [sp, #0x48]
100008900: f1000108    	subs	x8, x8, #0x0
100008904: 1a9fc7e8    	cset	w8, le
100008908: 370005c8    	tbnz	w8, #0x0, 0x1000089c0 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1b4>
10000890c: 14000001    	b	0x100008910 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x104>
100008910: f94027e1    	ldr	x1, [sp, #0x48]
100008914: 38dcf3a2    	ldursb	w2, [x29, #-0x31]
100008918: 9100a3e0    	add	x0, sp, #0x28
10000891c: f90003e0    	str	x0, [sp]
100008920: 940000a0    	bl	0x100008ba0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](unsigned long, char)>
100008924: f94003e0    	ldr	x0, [sp]
100008928: f85f03a8    	ldur	x8, [x29, #-0x10]
10000892c: f90007e8    	str	x8, [sp, #0x8]
100008930: 940000ab    	bl	0x100008bdc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]()>
100008934: aa0003e1    	mov	x1, x0
100008938: f94007e0    	ldr	x0, [sp, #0x8]
10000893c: f94027e2    	ldr	x2, [sp, #0x48]
100008940: 94000089    	bl	0x100008b64 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sputn[abi:ne180100](char const*, long)>
100008944: f9000be0    	str	x0, [sp, #0x10]
100008948: 14000001    	b	0x10000894c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x140>
10000894c: f9400be8    	ldr	x8, [sp, #0x10]
100008950: f94027e9    	ldr	x9, [sp, #0x48]
100008954: eb090108    	subs	x8, x8, x9
100008958: 1a9f17e8    	cset	w8, eq
10000895c: 370001c8    	tbnz	w8, #0x0, 0x100008994 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x188>
100008960: 14000001    	b	0x100008964 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x158>
100008964: f81f03bf    	stur	xzr, [x29, #-0x10]
100008968: f85f03a8    	ldur	x8, [x29, #-0x10]
10000896c: f81f83a8    	stur	x8, [x29, #-0x8]
100008970: 52800028    	mov	w8, #0x1                ; =1
100008974: b9001be8    	str	w8, [sp, #0x18]
100008978: 14000009    	b	0x10000899c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x190>
10000897c: f90013e0    	str	x0, [sp, #0x20]
100008980: aa0103e8    	mov	x8, x1
100008984: b9001fe8    	str	w8, [sp, #0x1c]
100008988: 9100a3e0    	add	x0, sp, #0x28
10000898c: 94000915    	bl	0x10000ade0 <_strlen+0x10000ade0>
100008990: 1400002d    	b	0x100008a44 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x238>
100008994: b9001bff    	str	wzr, [sp, #0x18]
100008998: 14000001    	b	0x10000899c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x190>
10000899c: 9100a3e0    	add	x0, sp, #0x28
1000089a0: 94000910    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000089a4: b9401be8    	ldr	w8, [sp, #0x18]
1000089a8: 71000108    	subs	w8, w8, #0x0
1000089ac: 1a9f17e8    	cset	w8, eq
1000089b0: 37000068    	tbnz	w8, #0x0, 0x1000089bc <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1b0>
1000089b4: 14000001    	b	0x1000089b8 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1ac>
1000089b8: 1400001f    	b	0x100008a34 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x228>
1000089bc: 14000001    	b	0x1000089c0 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1b4>
1000089c0: f85d83a8    	ldur	x8, [x29, #-0x28]
1000089c4: f85e03a9    	ldur	x9, [x29, #-0x20]
1000089c8: eb090108    	subs	x8, x8, x9
1000089cc: f90023e8    	str	x8, [sp, #0x40]
1000089d0: f94023e8    	ldr	x8, [sp, #0x40]
1000089d4: f1000108    	subs	x8, x8, #0x0
1000089d8: 1a9fc7e8    	cset	w8, le
1000089dc: 37000208    	tbnz	w8, #0x0, 0x100008a1c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x210>
1000089e0: 14000001    	b	0x1000089e4 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1d8>
1000089e4: f85f03a0    	ldur	x0, [x29, #-0x10]
1000089e8: f85e03a1    	ldur	x1, [x29, #-0x20]
1000089ec: f94023e2    	ldr	x2, [sp, #0x40]
1000089f0: 9400005d    	bl	0x100008b64 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sputn[abi:ne180100](char const*, long)>
1000089f4: f94023e8    	ldr	x8, [sp, #0x40]
1000089f8: eb080008    	subs	x8, x0, x8
1000089fc: 1a9f17e8    	cset	w8, eq
100008a00: 370000c8    	tbnz	w8, #0x0, 0x100008a18 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x20c>
100008a04: 14000001    	b	0x100008a08 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x1fc>
100008a08: f81f03bf    	stur	xzr, [x29, #-0x10]
100008a0c: f85f03a8    	ldur	x8, [x29, #-0x10]
100008a10: f81f83a8    	stur	x8, [x29, #-0x8]
100008a14: 14000008    	b	0x100008a34 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x228>
100008a18: 14000001    	b	0x100008a1c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x210>
100008a1c: f85d03a0    	ldur	x0, [x29, #-0x30]
100008a20: d2800001    	mov	x1, #0x0                ; =0
100008a24: 94000078    	bl	0x100008c04 <std::__1::ios_base::width[abi:ne180100](long)>
100008a28: f85f03a8    	ldur	x8, [x29, #-0x10]
100008a2c: f81f83a8    	stur	x8, [x29, #-0x8]
100008a30: 14000001    	b	0x100008a34 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>> std::__1::__pad_and_output[abi:ne180100]<char, std::__1::char_traits<char>>(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>, char const*, char const*, char const*, std::__1::ios_base&, char)+0x228>
100008a34: f85f83a0    	ldur	x0, [x29, #-0x8]
100008a38: a9497bfd    	ldp	x29, x30, [sp, #0x90]
100008a3c: 910283ff    	add	sp, sp, #0xa0
100008a40: d65f03c0    	ret
100008a44: f94013e0    	ldr	x0, [sp, #0x20]
100008a48: 9400089e    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100008a4c <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::ostreambuf_iterator[abi:ne180100](std::__1::basic_ostream<char, std::__1::char_traits<char>>&)>:
100008a4c: d100c3ff    	sub	sp, sp, #0x30
100008a50: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008a54: 910083fd    	add	x29, sp, #0x20
100008a58: f81f83a0    	stur	x0, [x29, #-0x8]
100008a5c: f9000be1    	str	x1, [sp, #0x10]
100008a60: f85f83a0    	ldur	x0, [x29, #-0x8]
100008a64: f90007e0    	str	x0, [sp, #0x8]
100008a68: f9400be1    	ldr	x1, [sp, #0x10]
100008a6c: 94000089    	bl	0x100008c90 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::ostreambuf_iterator[abi:ne180100](std::__1::basic_ostream<char, std::__1::char_traits<char>>&)>
100008a70: f94007e0    	ldr	x0, [sp, #0x8]
100008a74: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008a78: 9100c3ff    	add	sp, sp, #0x30
100008a7c: d65f03c0    	ret

0000000100008a80 <std::__1::ios_base::flags[abi:ne180100]() const>:
100008a80: d10043ff    	sub	sp, sp, #0x10
100008a84: f90007e0    	str	x0, [sp, #0x8]
100008a88: f94007e8    	ldr	x8, [sp, #0x8]
100008a8c: b9400900    	ldr	w0, [x8, #0x8]
100008a90: 910043ff    	add	sp, sp, #0x10
100008a94: d65f03c0    	ret

0000000100008a98 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fill[abi:ne180100]() const>:
100008a98: d10083ff    	sub	sp, sp, #0x20
100008a9c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008aa0: 910043fd    	add	x29, sp, #0x10
100008aa4: f90007e0    	str	x0, [sp, #0x8]
100008aa8: f94007e8    	ldr	x8, [sp, #0x8]
100008aac: f90003e8    	str	x8, [sp]
100008ab0: 940000a6    	bl	0x100008d48 <std::__1::char_traits<char>::eof[abi:ne180100]()>
100008ab4: f94003e8    	ldr	x8, [sp]
100008ab8: b9409101    	ldr	w1, [x8, #0x90]
100008abc: 94000099    	bl	0x100008d20 <std::__1::char_traits<char>::eq_int_type[abi:ne180100](int, int)>
100008ac0: 36000120    	tbz	w0, #0x0, 0x100008ae4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fill[abi:ne180100]() const+0x4c>
100008ac4: 14000001    	b	0x100008ac8 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fill[abi:ne180100]() const+0x30>
100008ac8: f94003e0    	ldr	x0, [sp]
100008acc: 52800401    	mov	w1, #0x20               ; =32
100008ad0: 940000a0    	bl	0x100008d50 <std::__1::basic_ios<char, std::__1::char_traits<char>>::widen[abi:ne180100](char) const>
100008ad4: f94003e9    	ldr	x9, [sp]
100008ad8: 13001c08    	sxtb	w8, w0
100008adc: b9009128    	str	w8, [x9, #0x90]
100008ae0: 14000001    	b	0x100008ae4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fill[abi:ne180100]() const+0x4c>
100008ae4: f94003e8    	ldr	x8, [sp]
100008ae8: b9409108    	ldr	w8, [x8, #0x90]
100008aec: 13001d00    	sxtb	w0, w8
100008af0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008af4: 910083ff    	add	sp, sp, #0x20
100008af8: d65f03c0    	ret

0000000100008afc <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::failed[abi:ne180100]() const>:
100008afc: d10043ff    	sub	sp, sp, #0x10
100008b00: f90007e0    	str	x0, [sp, #0x8]
100008b04: f94007e8    	ldr	x8, [sp, #0x8]
100008b08: f9400108    	ldr	x8, [x8]
100008b0c: f1000108    	subs	x8, x8, #0x0
100008b10: 1a9f17e8    	cset	w8, eq
100008b14: 12000100    	and	w0, w8, #0x1
100008b18: 910043ff    	add	sp, sp, #0x10
100008b1c: d65f03c0    	ret

0000000100008b20 <std::__1::basic_ios<char, std::__1::char_traits<char>>::setstate[abi:ne180100](unsigned int)>:
100008b20: d10083ff    	sub	sp, sp, #0x20
100008b24: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008b28: 910043fd    	add	x29, sp, #0x10
100008b2c: f90007e0    	str	x0, [sp, #0x8]
100008b30: b90007e1    	str	w1, [sp, #0x4]
100008b34: f94007e0    	ldr	x0, [sp, #0x8]
100008b38: b94007e1    	ldr	w1, [sp, #0x4]
100008b3c: 940000bf    	bl	0x100008e38 <std::__1::ios_base::setstate[abi:ne180100](unsigned int)>
100008b40: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008b44: 910083ff    	add	sp, sp, #0x20
100008b48: d65f03c0    	ret

0000000100008b4c <std::__1::ios_base::width[abi:ne180100]() const>:
100008b4c: d10043ff    	sub	sp, sp, #0x10
100008b50: f90007e0    	str	x0, [sp, #0x8]
100008b54: f94007e8    	ldr	x8, [sp, #0x8]
100008b58: f9400d00    	ldr	x0, [x8, #0x18]
100008b5c: 910043ff    	add	sp, sp, #0x10
100008b60: d65f03c0    	ret

0000000100008b64 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sputn[abi:ne180100](char const*, long)>:
100008b64: d100c3ff    	sub	sp, sp, #0x30
100008b68: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008b6c: 910083fd    	add	x29, sp, #0x20
100008b70: f81f83a0    	stur	x0, [x29, #-0x8]
100008b74: f9000be1    	str	x1, [sp, #0x10]
100008b78: f90007e2    	str	x2, [sp, #0x8]
100008b7c: f85f83a0    	ldur	x0, [x29, #-0x8]
100008b80: f9400be1    	ldr	x1, [sp, #0x10]
100008b84: f94007e2    	ldr	x2, [sp, #0x8]
100008b88: f9400008    	ldr	x8, [x0]
100008b8c: f9403108    	ldr	x8, [x8, #0x60]
100008b90: d63f0100    	blr	x8
100008b94: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008b98: 9100c3ff    	add	sp, sp, #0x30
100008b9c: d65f03c0    	ret

0000000100008ba0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](unsigned long, char)>:
100008ba0: d100c3ff    	sub	sp, sp, #0x30
100008ba4: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008ba8: 910083fd    	add	x29, sp, #0x20
100008bac: f81f83a0    	stur	x0, [x29, #-0x8]
100008bb0: f9000be1    	str	x1, [sp, #0x10]
100008bb4: 39003fe2    	strb	w2, [sp, #0xf]
100008bb8: f85f83a0    	ldur	x0, [x29, #-0x8]
100008bbc: f90003e0    	str	x0, [sp]
100008bc0: f9400be1    	ldr	x1, [sp, #0x10]
100008bc4: 39c03fe2    	ldrsb	w2, [sp, #0xf]
100008bc8: 9400001a    	bl	0x100008c30 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](unsigned long, char)>
100008bcc: f94003e0    	ldr	x0, [sp]
100008bd0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008bd4: 9100c3ff    	add	sp, sp, #0x30
100008bd8: d65f03c0    	ret

0000000100008bdc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]()>:
100008bdc: d10083ff    	sub	sp, sp, #0x20
100008be0: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008be4: 910043fd    	add	x29, sp, #0x10
100008be8: f90007e0    	str	x0, [sp, #0x8]
100008bec: f94007e0    	ldr	x0, [sp, #0x8]
100008bf0: 97fffd82    	bl	0x1000081f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()>
100008bf4: 94000022    	bl	0x100008c7c <char* std::__1::__to_address[abi:ne180100]<char>(char*)>
100008bf8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008bfc: 910083ff    	add	sp, sp, #0x20
100008c00: d65f03c0    	ret

0000000100008c04 <std::__1::ios_base::width[abi:ne180100](long)>:
100008c04: d10083ff    	sub	sp, sp, #0x20
100008c08: f9000fe0    	str	x0, [sp, #0x18]
100008c0c: f9000be1    	str	x1, [sp, #0x10]
100008c10: f9400fe9    	ldr	x9, [sp, #0x18]
100008c14: f9400d28    	ldr	x8, [x9, #0x18]
100008c18: f90007e8    	str	x8, [sp, #0x8]
100008c1c: f9400be8    	ldr	x8, [sp, #0x10]
100008c20: f9000d28    	str	x8, [x9, #0x18]
100008c24: f94007e0    	ldr	x0, [sp, #0x8]
100008c28: 910083ff    	add	sp, sp, #0x20
100008c2c: d65f03c0    	ret

0000000100008c30 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100](unsigned long, char)>:
100008c30: d100c3ff    	sub	sp, sp, #0x30
100008c34: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008c38: 910083fd    	add	x29, sp, #0x20
100008c3c: f81f83a0    	stur	x0, [x29, #-0x8]
100008c40: f9000be1    	str	x1, [sp, #0x10]
100008c44: 39003fe2    	strb	w2, [sp, #0xf]
100008c48: f85f83a0    	ldur	x0, [x29, #-0x8]
100008c4c: f90003e0    	str	x0, [sp]
100008c50: 91003be1    	add	x1, sp, #0xe
100008c54: 910037e2    	add	x2, sp, #0xd
100008c58: 97fffa75    	bl	0x10000762c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>
100008c5c: f94003e0    	ldr	x0, [sp]
100008c60: f9400be1    	ldr	x1, [sp, #0x10]
100008c64: 39c03fe2    	ldrsb	w2, [sp, #0xf]
100008c68: 94000843    	bl	0x10000ad74 <_strlen+0x10000ad74>
100008c6c: f94003e0    	ldr	x0, [sp]
100008c70: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008c74: 9100c3ff    	add	sp, sp, #0x30
100008c78: d65f03c0    	ret

0000000100008c7c <char* std::__1::__to_address[abi:ne180100]<char>(char*)>:
100008c7c: d10043ff    	sub	sp, sp, #0x10
100008c80: f90007e0    	str	x0, [sp, #0x8]
100008c84: f94007e0    	ldr	x0, [sp, #0x8]
100008c88: 910043ff    	add	sp, sp, #0x10
100008c8c: d65f03c0    	ret

0000000100008c90 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::ostreambuf_iterator[abi:ne180100](std::__1::basic_ostream<char, std::__1::char_traits<char>>&)>:
100008c90: d100c3ff    	sub	sp, sp, #0x30
100008c94: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008c98: 910083fd    	add	x29, sp, #0x20
100008c9c: f81f83a0    	stur	x0, [x29, #-0x8]
100008ca0: f9000be1    	str	x1, [sp, #0x10]
100008ca4: f85f83a8    	ldur	x8, [x29, #-0x8]
100008ca8: f90003e8    	str	x8, [sp]
100008cac: f9400be8    	ldr	x8, [sp, #0x10]
100008cb0: f9400109    	ldr	x9, [x8]
100008cb4: f85e8129    	ldur	x9, [x9, #-0x18]
100008cb8: 8b090100    	add	x0, x8, x9
100008cbc: 9400000a    	bl	0x100008ce4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::rdbuf[abi:ne180100]() const>
100008cc0: f90007e0    	str	x0, [sp, #0x8]
100008cc4: 14000001    	b	0x100008cc8 <std::__1::ostreambuf_iterator<char, std::__1::char_traits<char>>::ostreambuf_iterator[abi:ne180100](std::__1::basic_ostream<char, std::__1::char_traits<char>>&)+0x38>
100008cc8: f94003e0    	ldr	x0, [sp]
100008ccc: f94007e8    	ldr	x8, [sp, #0x8]
100008cd0: f9000008    	str	x8, [x0]
100008cd4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008cd8: 9100c3ff    	add	sp, sp, #0x30
100008cdc: d65f03c0    	ret
100008ce0: 97ffe6aa    	bl	0x100002788 <___clang_call_terminate>

0000000100008ce4 <std::__1::basic_ios<char, std::__1::char_traits<char>>::rdbuf[abi:ne180100]() const>:
100008ce4: d10083ff    	sub	sp, sp, #0x20
100008ce8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008cec: 910043fd    	add	x29, sp, #0x10
100008cf0: f90007e0    	str	x0, [sp, #0x8]
100008cf4: f94007e0    	ldr	x0, [sp, #0x8]
100008cf8: 94000004    	bl	0x100008d08 <std::__1::ios_base::rdbuf[abi:ne180100]() const>
100008cfc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008d00: 910083ff    	add	sp, sp, #0x20
100008d04: d65f03c0    	ret

0000000100008d08 <std::__1::ios_base::rdbuf[abi:ne180100]() const>:
100008d08: d10043ff    	sub	sp, sp, #0x10
100008d0c: f90007e0    	str	x0, [sp, #0x8]
100008d10: f94007e8    	ldr	x8, [sp, #0x8]
100008d14: f9401500    	ldr	x0, [x8, #0x28]
100008d18: 910043ff    	add	sp, sp, #0x10
100008d1c: d65f03c0    	ret

0000000100008d20 <std::__1::char_traits<char>::eq_int_type[abi:ne180100](int, int)>:
100008d20: d10043ff    	sub	sp, sp, #0x10
100008d24: b9000fe0    	str	w0, [sp, #0xc]
100008d28: b9000be1    	str	w1, [sp, #0x8]
100008d2c: b9400fe8    	ldr	w8, [sp, #0xc]
100008d30: b9400be9    	ldr	w9, [sp, #0x8]
100008d34: 6b090108    	subs	w8, w8, w9
100008d38: 1a9f17e8    	cset	w8, eq
100008d3c: 12000100    	and	w0, w8, #0x1
100008d40: 910043ff    	add	sp, sp, #0x10
100008d44: d65f03c0    	ret

0000000100008d48 <std::__1::char_traits<char>::eof[abi:ne180100]()>:
100008d48: 12800000    	mov	w0, #-0x1               ; =-1
100008d4c: d65f03c0    	ret

0000000100008d50 <std::__1::basic_ios<char, std::__1::char_traits<char>>::widen[abi:ne180100](char) const>:
100008d50: d10143ff    	sub	sp, sp, #0x50
100008d54: a9047bfd    	stp	x29, x30, [sp, #0x40]
100008d58: 910103fd    	add	x29, sp, #0x40
100008d5c: f81f83a0    	stur	x0, [x29, #-0x8]
100008d60: 381f73a1    	sturb	w1, [x29, #-0x9]
100008d64: f85f83a0    	ldur	x0, [x29, #-0x8]
100008d68: d10063a8    	sub	x8, x29, #0x18
100008d6c: f90007e8    	str	x8, [sp, #0x8]
100008d70: 940007e9    	bl	0x10000ad14 <_strlen+0x10000ad14>
100008d74: f94007e0    	ldr	x0, [sp, #0x8]
100008d78: 94000017    	bl	0x100008dd4 <std::__1::ctype<char> const& std::__1::use_facet[abi:ne180100]<std::__1::ctype<char>>(std::__1::locale const&)>
100008d7c: f9000be0    	str	x0, [sp, #0x10]
100008d80: 14000001    	b	0x100008d84 <std::__1::basic_ios<char, std::__1::char_traits<char>>::widen[abi:ne180100](char) const+0x34>
100008d84: f9400be0    	ldr	x0, [sp, #0x10]
100008d88: 38df73a1    	ldursb	w1, [x29, #-0x9]
100008d8c: 9400001d    	bl	0x100008e00 <std::__1::ctype<char>::widen[abi:ne180100](char) const>
100008d90: b90007e0    	str	w0, [sp, #0x4]
100008d94: 14000001    	b	0x100008d98 <std::__1::basic_ios<char, std::__1::char_traits<char>>::widen[abi:ne180100](char) const+0x48>
100008d98: d10063a0    	sub	x0, x29, #0x18
100008d9c: 94000856    	bl	0x10000aef4 <_strlen+0x10000aef4>
100008da0: b94007e8    	ldr	w8, [sp, #0x4]
100008da4: 13001d00    	sxtb	w0, w8
100008da8: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100008dac: 910143ff    	add	sp, sp, #0x50
100008db0: d65f03c0    	ret
100008db4: f90013e0    	str	x0, [sp, #0x20]
100008db8: aa0103e8    	mov	x8, x1
100008dbc: b9001fe8    	str	w8, [sp, #0x1c]
100008dc0: d10063a0    	sub	x0, x29, #0x18
100008dc4: 9400084c    	bl	0x10000aef4 <_strlen+0x10000aef4>
100008dc8: 14000001    	b	0x100008dcc <std::__1::basic_ios<char, std::__1::char_traits<char>>::widen[abi:ne180100](char) const+0x7c>
100008dcc: f94013e0    	ldr	x0, [sp, #0x20]
100008dd0: 940007bc    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100008dd4 <std::__1::ctype<char> const& std::__1::use_facet[abi:ne180100]<std::__1::ctype<char>>(std::__1::locale const&)>:
100008dd4: d10083ff    	sub	sp, sp, #0x20
100008dd8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008ddc: 910043fd    	add	x29, sp, #0x10
100008de0: f90007e0    	str	x0, [sp, #0x8]
100008de4: f94007e0    	ldr	x0, [sp, #0x8]
100008de8: 90000021    	adrp	x1, 0x10000c000 <_strlen+0x10000c000>
100008dec: f940d421    	ldr	x1, [x1, #0x1a8]
100008df0: 940007c6    	bl	0x10000ad08 <_strlen+0x10000ad08>
100008df4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008df8: 910083ff    	add	sp, sp, #0x20
100008dfc: d65f03c0    	ret

0000000100008e00 <std::__1::ctype<char>::widen[abi:ne180100](char) const>:
100008e00: d10083ff    	sub	sp, sp, #0x20
100008e04: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008e08: 910043fd    	add	x29, sp, #0x10
100008e0c: f90007e0    	str	x0, [sp, #0x8]
100008e10: 39001fe1    	strb	w1, [sp, #0x7]
100008e14: f94007e0    	ldr	x0, [sp, #0x8]
100008e18: 39c01fe1    	ldrsb	w1, [sp, #0x7]
100008e1c: f9400008    	ldr	x8, [x0]
100008e20: f9401d08    	ldr	x8, [x8, #0x38]
100008e24: d63f0100    	blr	x8
100008e28: 13001c00    	sxtb	w0, w0
100008e2c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008e30: 910083ff    	add	sp, sp, #0x20
100008e34: d65f03c0    	ret

0000000100008e38 <std::__1::ios_base::setstate[abi:ne180100](unsigned int)>:
100008e38: d10083ff    	sub	sp, sp, #0x20
100008e3c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008e40: 910043fd    	add	x29, sp, #0x10
100008e44: f90007e0    	str	x0, [sp, #0x8]
100008e48: b90007e1    	str	w1, [sp, #0x4]
100008e4c: f94007e0    	ldr	x0, [sp, #0x8]
100008e50: b9402008    	ldr	w8, [x0, #0x20]
100008e54: b94007e9    	ldr	w9, [sp, #0x4]
100008e58: 2a090101    	orr	w1, w8, w9
100008e5c: 9400082c    	bl	0x10000af0c <_strlen+0x10000af0c>
100008e60: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008e64: 910083ff    	add	sp, sp, #0x20
100008e68: d65f03c0    	ret

0000000100008e6c <std::__1::__constexpr_strlen[abi:ne180100](char const*)>:
100008e6c: d10083ff    	sub	sp, sp, #0x20
100008e70: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008e74: 910043fd    	add	x29, sp, #0x10
100008e78: f90007e0    	str	x0, [sp, #0x8]
100008e7c: f94007e0    	ldr	x0, [sp, #0x8]
100008e80: 9400085c    	bl	0x10000aff0 <_strlen+0x10000aff0>
100008e84: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008e88: 910083ff    	add	sp, sp, #0x20
100008e8c: d65f03c0    	ret

0000000100008e90 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<0>(char const*)>:
100008e90: d10103ff    	sub	sp, sp, #0x40
100008e94: a9037bfd    	stp	x29, x30, [sp, #0x30]
100008e98: 9100c3fd    	add	x29, sp, #0x30
100008e9c: f81f83a0    	stur	x0, [x29, #-0x8]
100008ea0: f81f03a1    	stur	x1, [x29, #-0x10]
100008ea4: f85f83a0    	ldur	x0, [x29, #-0x8]
100008ea8: f9000be0    	str	x0, [sp, #0x10]
100008eac: d10047a1    	sub	x1, x29, #0x11
100008eb0: d1004ba2    	sub	x2, x29, #0x12
100008eb4: 97fff9de    	bl	0x10000762c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::__default_init_tag>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)>
100008eb8: f85f03a8    	ldur	x8, [x29, #-0x10]
100008ebc: f90007e8    	str	x8, [sp, #0x8]
100008ec0: f85f03a0    	ldur	x0, [x29, #-0x10]
100008ec4: 97fffe3e    	bl	0x1000087bc <std::__1::char_traits<char>::length[abi:ne180100](char const*)>
100008ec8: f94007e1    	ldr	x1, [sp, #0x8]
100008ecc: aa0003e2    	mov	x2, x0
100008ed0: f9400be0    	ldr	x0, [sp, #0x10]
100008ed4: 940007a5    	bl	0x10000ad68 <_strlen+0x10000ad68>
100008ed8: f9400be0    	ldr	x0, [sp, #0x10]
100008edc: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100008ee0: 910103ff    	add	sp, sp, #0x40
100008ee4: d65f03c0    	ret

0000000100008ee8 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)>:
100008ee8: d10103ff    	sub	sp, sp, #0x40
100008eec: a9037bfd    	stp	x29, x30, [sp, #0x30]
100008ef0: 9100c3fd    	add	x29, sp, #0x30
100008ef4: f81f83a0    	stur	x0, [x29, #-0x8]
100008ef8: f81f03a1    	stur	x1, [x29, #-0x10]
100008efc: 381ef3a2    	sturb	w2, [x29, #-0x11]
100008f00: f85f83a0    	ldur	x0, [x29, #-0x8]
100008f04: f90003e0    	str	x0, [sp]
100008f08: 97fff770    	bl	0x100006cc8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>
100008f0c: f94003e0    	ldr	x0, [sp]
100008f10: f85f03a1    	ldur	x1, [x29, #-0x10]
100008f14: 940007f2    	bl	0x10000aedc <_strlen+0x10000aedc>
100008f18: 14000001    	b	0x100008f1c <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)+0x34>
100008f1c: f94003e0    	ldr	x0, [sp]
100008f20: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100008f24: 910103ff    	add	sp, sp, #0x40
100008f28: d65f03c0    	ret
100008f2c: aa0003e8    	mov	x8, x0
100008f30: f94003e0    	ldr	x0, [sp]
100008f34: f9000be8    	str	x8, [sp, #0x10]
100008f38: aa0103e8    	mov	x8, x1
100008f3c: b9000fe8    	str	w8, [sp, #0xc]
100008f40: 940007a8    	bl	0x10000ade0 <_strlen+0x10000ade0>
100008f44: 14000001    	b	0x100008f48 <std::__1::__fs::filesystem::path::path[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::__fs::filesystem::path::format)+0x60>
100008f48: f9400be0    	ldr	x0, [sp, #0x10]
100008f4c: 9400075d    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100008f50 <void std::__1::__fs::filesystem::_PathCVT<char>::__append_source[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
100008f50: d100c3ff    	sub	sp, sp, #0x30
100008f54: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008f58: 910083fd    	add	x29, sp, #0x20
100008f5c: f81f83a0    	stur	x0, [x29, #-0x8]
100008f60: f9000be1    	str	x1, [sp, #0x10]
100008f64: f85f83a8    	ldur	x8, [x29, #-0x8]
100008f68: f90007e8    	str	x8, [sp, #0x8]
100008f6c: f9400be0    	ldr	x0, [sp, #0x10]
100008f70: 940007cc    	bl	0x10000aea0 <_strlen+0x10000aea0>
100008f74: f90003e0    	str	x0, [sp]
100008f78: f9400be0    	ldr	x0, [sp, #0x10]
100008f7c: 940007c6    	bl	0x10000ae94 <_strlen+0x10000ae94>
100008f80: f94003e1    	ldr	x1, [sp]
100008f84: aa0003e2    	mov	x2, x0
100008f88: f94007e0    	ldr	x0, [sp, #0x8]
100008f8c: 940007ce    	bl	0x10000aec4 <_strlen+0x10000aec4>
100008f90: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008f94: 9100c3ff    	add	sp, sp, #0x30
100008f98: d65f03c0    	ret

0000000100008f9c <void std::__1::__fs::filesystem::_PathCVT<char>::__append_range[abi:ne180100]<char const*, 0>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&, char const*, char const*)>:
100008f9c: d100c3ff    	sub	sp, sp, #0x30
100008fa0: a9027bfd    	stp	x29, x30, [sp, #0x20]
100008fa4: 910083fd    	add	x29, sp, #0x20
100008fa8: f81f83a0    	stur	x0, [x29, #-0x8]
100008fac: f9000be1    	str	x1, [sp, #0x10]
100008fb0: f90007e2    	str	x2, [sp, #0x8]
100008fb4: f85f83a0    	ldur	x0, [x29, #-0x8]
100008fb8: f9400be1    	ldr	x1, [sp, #0x10]
100008fbc: f94007e2    	ldr	x2, [sp, #0x8]
100008fc0: 94000773    	bl	0x10000ad8c <_strlen+0x10000ad8c>
100008fc4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100008fc8: 9100c3ff    	add	sp, sp, #0x30
100008fcc: d65f03c0    	ret

0000000100008fd0 <std::__1::__fs::filesystem::__is_pathable_string<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>::__range_begin[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
100008fd0: d10083ff    	sub	sp, sp, #0x20
100008fd4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008fd8: 910043fd    	add	x29, sp, #0x10
100008fdc: f90007e0    	str	x0, [sp, #0x8]
100008fe0: f94007e0    	ldr	x0, [sp, #0x8]
100008fe4: 9400012b    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
100008fe8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100008fec: 910083ff    	add	sp, sp, #0x20
100008ff0: d65f03c0    	ret

0000000100008ff4 <std::__1::__fs::filesystem::__is_pathable_string<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void>::__range_end[abi:ne180100](std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
100008ff4: d10083ff    	sub	sp, sp, #0x20
100008ff8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100008ffc: 910043fd    	add	x29, sp, #0x10
100009000: f90007e0    	str	x0, [sp, #0x8]
100009004: f94007e0    	ldr	x0, [sp, #0x8]
100009008: 94000122    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
10000900c: f90003e0    	str	x0, [sp]
100009010: f94007e0    	ldr	x0, [sp, #0x8]
100009014: 940003c6    	bl	0x100009f2c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::length[abi:ne180100]() const>
100009018: aa0003e8    	mov	x8, x0
10000901c: f94003e0    	ldr	x0, [sp]
100009020: 8b080000    	add	x0, x0, x8
100009024: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009028: 910083ff    	add	sp, sp, #0x20
10000902c: d65f03c0    	ret

0000000100009030 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)>:
100009030: d10283ff    	sub	sp, sp, #0xa0
100009034: a9097bfd    	stp	x29, x30, [sp, #0x90]
100009038: 910243fd    	add	x29, sp, #0x90
10000903c: f81f83a0    	stur	x0, [x29, #-0x8]
100009040: f81f03a1    	stur	x1, [x29, #-0x10]
100009044: f81e83a2    	stur	x2, [x29, #-0x18]
100009048: f85f83a0    	ldur	x0, [x29, #-0x8]
10000904c: f90013e0    	str	x0, [sp, #0x20]
100009050: 97fffa36    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100009054: aa0003e8    	mov	x8, x0
100009058: f94013e0    	ldr	x0, [sp, #0x20]
10000905c: f81e03a8    	stur	x8, [x29, #-0x20]
100009060: 94000070    	bl	0x100009220 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const>
100009064: f81d83a0    	stur	x0, [x29, #-0x28]
100009068: f85f03a0    	ldur	x0, [x29, #-0x10]
10000906c: f85e83a1    	ldur	x1, [x29, #-0x18]
100009070: 94000081    	bl	0x100009274 <std::__1::iterator_traits<char const*>::difference_type std::__1::distance[abi:ne180100]<char const*>(char const*, char const*)>
100009074: f81d03a0    	stur	x0, [x29, #-0x30]
100009078: f85d03a8    	ldur	x8, [x29, #-0x30]
10000907c: f1000108    	subs	x8, x8, #0x0
100009080: 1a9f17e8    	cset	w8, eq
100009084: 37000c28    	tbnz	w8, #0x0, 0x100009208 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1d8>
100009088: 14000001    	b	0x10000908c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x5c>
10000908c: f94013e0    	ldr	x0, [sp, #0x20]
100009090: f85f03a1    	ldur	x1, [x29, #-0x10]
100009094: 94000711    	bl	0x10000acd8 <_strlen+0x10000acd8>
100009098: 37000760    	tbnz	w0, #0x0, 0x100009184 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x154>
10000909c: 14000001    	b	0x1000090a0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x70>
1000090a0: f85d83a8    	ldur	x8, [x29, #-0x28]
1000090a4: f85e03a9    	ldur	x9, [x29, #-0x20]
1000090a8: eb090108    	subs	x8, x8, x9
1000090ac: f85d03a9    	ldur	x9, [x29, #-0x30]
1000090b0: eb090108    	subs	x8, x8, x9
1000090b4: 1a9f37e8    	cset	w8, hs
1000090b8: 370001e8    	tbnz	w8, #0x0, 0x1000090f4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0xc4>
1000090bc: 14000001    	b	0x1000090c0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x90>
1000090c0: f94013e0    	ldr	x0, [sp, #0x20]
1000090c4: f85d83a1    	ldur	x1, [x29, #-0x28]
1000090c8: f85e03a8    	ldur	x8, [x29, #-0x20]
1000090cc: f85d03a9    	ldur	x9, [x29, #-0x30]
1000090d0: 8b090108    	add	x8, x8, x9
1000090d4: f85d83a9    	ldur	x9, [x29, #-0x28]
1000090d8: eb090102    	subs	x2, x8, x9
1000090dc: f85e03a3    	ldur	x3, [x29, #-0x20]
1000090e0: f85e03a4    	ldur	x4, [x29, #-0x20]
1000090e4: d2800006    	mov	x6, #0x0                ; =0
1000090e8: aa0603e5    	mov	x5, x6
1000090ec: 94000088    	bl	0x10000930c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__grow_by_without_replace[abi:ne180100](unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)>
1000090f0: 14000001    	b	0x1000090f4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0xc4>
1000090f4: f94013e0    	ldr	x0, [sp, #0x20]
1000090f8: f85d03a1    	ldur	x1, [x29, #-0x30]
1000090fc: 940000a8    	bl	0x10000939c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_increase[abi:ne180100](unsigned long) const>
100009100: f94013e0    	ldr	x0, [sp, #0x20]
100009104: 97fffc3d    	bl	0x1000081f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]()>
100009108: f85e03a8    	ldur	x8, [x29, #-0x20]
10000910c: 8b080008    	add	x8, x0, x8
100009110: f81c83a8    	stur	x8, [x29, #-0x38]
100009114: 14000001    	b	0x100009118 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0xe8>
100009118: f85f03a8    	ldur	x8, [x29, #-0x10]
10000911c: f85e83a9    	ldur	x9, [x29, #-0x18]
100009120: eb090108    	subs	x8, x8, x9
100009124: 1a9f17e8    	cset	w8, eq
100009128: 370001a8    	tbnz	w8, #0x0, 0x10000915c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x12c>
10000912c: 14000001    	b	0x100009130 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x100>
100009130: f85c83a0    	ldur	x0, [x29, #-0x38]
100009134: f85f03a1    	ldur	x1, [x29, #-0x10]
100009138: 9400009e    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
10000913c: 14000001    	b	0x100009140 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x110>
100009140: f85c83a8    	ldur	x8, [x29, #-0x38]
100009144: 91000508    	add	x8, x8, #0x1
100009148: f81c83a8    	stur	x8, [x29, #-0x38]
10000914c: f85f03a8    	ldur	x8, [x29, #-0x10]
100009150: 91000508    	add	x8, x8, #0x1
100009154: f81f03a8    	stur	x8, [x29, #-0x10]
100009158: 17fffff0    	b	0x100009118 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0xe8>
10000915c: f85c83a0    	ldur	x0, [x29, #-0x38]
100009160: d100e7a1    	sub	x1, x29, #0x39
100009164: 381c73bf    	sturb	wzr, [x29, #-0x39]
100009168: 94000092    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
10000916c: f94013e0    	ldr	x0, [sp, #0x20]
100009170: f85e03a8    	ldur	x8, [x29, #-0x20]
100009174: f85d03a9    	ldur	x9, [x29, #-0x30]
100009178: 8b090101    	add	x1, x8, x9
10000917c: 94000096    	bl	0x1000093d4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)>
100009180: 14000021    	b	0x100009204 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1d4>
100009184: f94013e0    	ldr	x0, [sp, #0x20]
100009188: f85f03a8    	ldur	x8, [x29, #-0x10]
10000918c: f90003e8    	str	x8, [sp]
100009190: f85e83a8    	ldur	x8, [x29, #-0x18]
100009194: f90007e8    	str	x8, [sp, #0x8]
100009198: 940000a4    	bl	0x100009428 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__alloc[abi:ne180100]()>
10000919c: f94003e1    	ldr	x1, [sp]
1000091a0: f94007e2    	ldr	x2, [sp, #0x8]
1000091a4: aa0003e3    	mov	x3, x0
1000091a8: 9100e3e0    	add	x0, sp, #0x38
1000091ac: f9000be0    	str	x0, [sp, #0x10]
1000091b0: 940000a7    	bl	0x10000944c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<char const*, 0>(char const*, char const*, std::__1::allocator<char> const&)>
1000091b4: f9400be0    	ldr	x0, [sp, #0x10]
1000091b8: 940000b6    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
1000091bc: aa0003e1    	mov	x1, x0
1000091c0: f9400be0    	ldr	x0, [sp, #0x10]
1000091c4: f9000fe1    	str	x1, [sp, #0x18]
1000091c8: 97fff9d8    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
1000091cc: f9400fe1    	ldr	x1, [sp, #0x18]
1000091d0: aa0003e2    	mov	x2, x0
1000091d4: f94013e0    	ldr	x0, [sp, #0x20]
1000091d8: 940006f3    	bl	0x10000ada4 <_strlen+0x10000ada4>
1000091dc: 14000001    	b	0x1000091e0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1b0>
1000091e0: 9100e3e0    	add	x0, sp, #0x38
1000091e4: 940006ff    	bl	0x10000ade0 <_strlen+0x10000ade0>
1000091e8: 14000007    	b	0x100009204 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1d4>
1000091ec: f9001be0    	str	x0, [sp, #0x30]
1000091f0: aa0103e8    	mov	x8, x1
1000091f4: b9002fe8    	str	w8, [sp, #0x2c]
1000091f8: 9100e3e0    	add	x0, sp, #0x38
1000091fc: 940006f9    	bl	0x10000ade0 <_strlen+0x10000ade0>
100009200: 14000006    	b	0x100009218 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1e8>
100009204: 14000001    	b	0x100009208 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>& std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append[abi:ne180100]<char const*, 0>(char const*, char const*)+0x1d8>
100009208: f94013e0    	ldr	x0, [sp, #0x20]
10000920c: a9497bfd    	ldp	x29, x30, [sp, #0x90]
100009210: 910283ff    	add	sp, sp, #0xa0
100009214: d65f03c0    	ret
100009218: f9401be0    	ldr	x0, [sp, #0x30]
10000921c: 940006a9    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100009220 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const>:
100009220: d100c3ff    	sub	sp, sp, #0x30
100009224: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009228: 910083fd    	add	x29, sp, #0x20
10000922c: f81f83a0    	stur	x0, [x29, #-0x8]
100009230: f85f83a0    	ldur	x0, [x29, #-0x8]
100009234: f9000be0    	str	x0, [sp, #0x10]
100009238: 97fff9ae    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
10000923c: 360000c0    	tbz	w0, #0x0, 0x100009254 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const+0x34>
100009240: 14000001    	b	0x100009244 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const+0x24>
100009244: f9400be0    	ldr	x0, [sp, #0x10]
100009248: 9400009c    	bl	0x1000094b8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_cap[abi:ne180100]() const>
10000924c: f90007e0    	str	x0, [sp, #0x8]
100009250: 14000004    	b	0x100009260 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const+0x40>
100009254: d28002e8    	mov	x8, #0x17               ; =23
100009258: f90007e8    	str	x8, [sp, #0x8]
10000925c: 14000001    	b	0x100009260 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::capacity[abi:ne180100]() const+0x40>
100009260: f94007e8    	ldr	x8, [sp, #0x8]
100009264: f1000500    	subs	x0, x8, #0x1
100009268: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000926c: 9100c3ff    	add	sp, sp, #0x30
100009270: d65f03c0    	ret

0000000100009274 <std::__1::iterator_traits<char const*>::difference_type std::__1::distance[abi:ne180100]<char const*>(char const*, char const*)>:
100009274: d100c3ff    	sub	sp, sp, #0x30
100009278: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000927c: 910083fd    	add	x29, sp, #0x20
100009280: f81f83a0    	stur	x0, [x29, #-0x8]
100009284: f9000be1    	str	x1, [sp, #0x10]
100009288: f85f83a0    	ldur	x0, [x29, #-0x8]
10000928c: f9400be1    	ldr	x1, [sp, #0x10]
100009290: 94000096    	bl	0x1000094e8 <std::__1::iterator_traits<char const*>::difference_type std::__1::__distance[abi:ne180100]<char const*>(char const*, char const*, std::__1::random_access_iterator_tag)>
100009294: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009298: 9100c3ff    	add	sp, sp, #0x30
10000929c: d65f03c0    	ret

00000001000092a0 <bool std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__addr_in_range[abi:ne180100]<char>(char const&) const>:
1000092a0: d10103ff    	sub	sp, sp, #0x40
1000092a4: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000092a8: 9100c3fd    	add	x29, sp, #0x30
1000092ac: f81f83a0    	stur	x0, [x29, #-0x8]
1000092b0: f81f03a1    	stur	x1, [x29, #-0x10]
1000092b4: f85f83a0    	ldur	x0, [x29, #-0x8]
1000092b8: f90007e0    	str	x0, [sp, #0x8]
1000092bc: 94000075    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
1000092c0: aa0003e1    	mov	x1, x0
1000092c4: f94007e0    	ldr	x0, [sp, #0x8]
1000092c8: f9000fe1    	str	x1, [sp, #0x18]
1000092cc: 94000071    	bl	0x100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>
1000092d0: aa0003e8    	mov	x8, x0
1000092d4: f94007e0    	ldr	x0, [sp, #0x8]
1000092d8: f9000be8    	str	x8, [sp, #0x10]
1000092dc: 97fff993    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
1000092e0: f9400be8    	ldr	x8, [sp, #0x10]
1000092e4: aa0003e9    	mov	x9, x0
1000092e8: f9400fe0    	ldr	x0, [sp, #0x18]
1000092ec: f85f03a2    	ldur	x2, [x29, #-0x10]
1000092f0: 8b090108    	add	x8, x8, x9
1000092f4: 91000501    	add	x1, x8, #0x1
1000092f8: 94000084    	bl	0x100009508 <bool std::__1::__is_pointer_in_range[abi:ne180100]<char, char, 0>(char const*, char const*, char const*)>
1000092fc: 12000000    	and	w0, w0, #0x1
100009300: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100009304: 910103ff    	add	sp, sp, #0x40
100009308: d65f03c0    	ret

000000010000930c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__grow_by_without_replace[abi:ne180100](unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)>:
10000930c: d10143ff    	sub	sp, sp, #0x50
100009310: a9047bfd    	stp	x29, x30, [sp, #0x40]
100009314: 910103fd    	add	x29, sp, #0x40
100009318: f81f83a0    	stur	x0, [x29, #-0x8]
10000931c: f81f03a1    	stur	x1, [x29, #-0x10]
100009320: f81e83a2    	stur	x2, [x29, #-0x18]
100009324: f90013e3    	str	x3, [sp, #0x20]
100009328: f9000fe4    	str	x4, [sp, #0x18]
10000932c: f9000be5    	str	x5, [sp, #0x10]
100009330: f90007e6    	str	x6, [sp, #0x8]
100009334: f85f83a0    	ldur	x0, [x29, #-0x8]
100009338: f90003e0    	str	x0, [sp]
10000933c: f85f03a1    	ldur	x1, [x29, #-0x10]
100009340: f85e83a2    	ldur	x2, [x29, #-0x18]
100009344: f94013e3    	ldr	x3, [sp, #0x20]
100009348: f9400fe4    	ldr	x4, [sp, #0x18]
10000934c: f9400be5    	ldr	x5, [sp, #0x10]
100009350: f94007e6    	ldr	x6, [sp, #0x8]
100009354: 94000697    	bl	0x10000adb0 <_strlen+0x10000adb0>
100009358: f94003e0    	ldr	x0, [sp]
10000935c: f94013e8    	ldr	x8, [sp, #0x20]
100009360: f9400be9    	ldr	x9, [sp, #0x10]
100009364: eb090108    	subs	x8, x8, x9
100009368: f94007e9    	ldr	x9, [sp, #0x8]
10000936c: 8b090101    	add	x1, x8, x9
100009370: 9400008d    	bl	0x1000095a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_size[abi:ne180100](unsigned long)>
100009374: f94003e0    	ldr	x0, [sp]
100009378: f94013e8    	ldr	x8, [sp, #0x20]
10000937c: f9400be9    	ldr	x9, [sp, #0x10]
100009380: eb090108    	subs	x8, x8, x9
100009384: f94007e9    	ldr	x9, [sp, #0x8]
100009388: 8b090101    	add	x1, x8, x9
10000938c: 97fff954    	bl	0x1000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>
100009390: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100009394: 910143ff    	add	sp, sp, #0x50
100009398: d65f03c0    	ret

000000010000939c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_increase[abi:ne180100](unsigned long) const>:
10000939c: d10043ff    	sub	sp, sp, #0x10
1000093a0: f90007e0    	str	x0, [sp, #0x8]
1000093a4: f90003e1    	str	x1, [sp]
1000093a8: 910043ff    	add	sp, sp, #0x10
1000093ac: d65f03c0    	ret

00000001000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>:
1000093b0: d10043ff    	sub	sp, sp, #0x10
1000093b4: f90007e0    	str	x0, [sp, #0x8]
1000093b8: f90003e1    	str	x1, [sp]
1000093bc: f94003e8    	ldr	x8, [sp]
1000093c0: 39400108    	ldrb	w8, [x8]
1000093c4: f94007e9    	ldr	x9, [sp, #0x8]
1000093c8: 39000128    	strb	w8, [x9]
1000093cc: 910043ff    	add	sp, sp, #0x10
1000093d0: d65f03c0    	ret

00000001000093d4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)>:
1000093d4: d100c3ff    	sub	sp, sp, #0x30
1000093d8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000093dc: 910083fd    	add	x29, sp, #0x20
1000093e0: f81f83a0    	stur	x0, [x29, #-0x8]
1000093e4: f9000be1    	str	x1, [sp, #0x10]
1000093e8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000093ec: f90007e0    	str	x0, [sp, #0x8]
1000093f0: 97fff940    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
1000093f4: 360000c0    	tbz	w0, #0x0, 0x10000940c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)+0x38>
1000093f8: 14000001    	b	0x1000093fc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)+0x28>
1000093fc: f94007e0    	ldr	x0, [sp, #0x8]
100009400: f9400be1    	ldr	x1, [sp, #0x10]
100009404: 94000068    	bl	0x1000095a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_size[abi:ne180100](unsigned long)>
100009408: 14000005    	b	0x10000941c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)+0x48>
10000940c: f94007e0    	ldr	x0, [sp, #0x8]
100009410: f9400be1    	ldr	x1, [sp, #0x10]
100009414: 94000072    	bl	0x1000095dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_short_size[abi:ne180100](unsigned long)>
100009418: 14000001    	b	0x10000941c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_size[abi:ne180100](unsigned long)+0x48>
10000941c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009420: 9100c3ff    	add	sp, sp, #0x30
100009424: d65f03c0    	ret

0000000100009428 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__alloc[abi:ne180100]()>:
100009428: d10083ff    	sub	sp, sp, #0x20
10000942c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009430: 910043fd    	add	x29, sp, #0x10
100009434: f90007e0    	str	x0, [sp, #0x8]
100009438: f94007e0    	ldr	x0, [sp, #0x8]
10000943c: 94000086    	bl	0x100009654 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::second[abi:ne180100]()>
100009440: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009444: 910083ff    	add	sp, sp, #0x20
100009448: d65f03c0    	ret

000000010000944c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<char const*, 0>(char const*, char const*, std::__1::allocator<char> const&)>:
10000944c: d10103ff    	sub	sp, sp, #0x40
100009450: a9037bfd    	stp	x29, x30, [sp, #0x30]
100009454: 9100c3fd    	add	x29, sp, #0x30
100009458: f81f83a0    	stur	x0, [x29, #-0x8]
10000945c: f81f03a1    	stur	x1, [x29, #-0x10]
100009460: f9000fe2    	str	x2, [sp, #0x18]
100009464: f9000be3    	str	x3, [sp, #0x10]
100009468: f85f83a0    	ldur	x0, [x29, #-0x8]
10000946c: f90007e0    	str	x0, [sp, #0x8]
100009470: f85f03a1    	ldur	x1, [x29, #-0x10]
100009474: f9400fe2    	ldr	x2, [sp, #0x18]
100009478: f9400be3    	ldr	x3, [sp, #0x10]
10000947c: 94000084    	bl	0x10000968c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<char const*, 0>(char const*, char const*, std::__1::allocator<char> const&)>
100009480: f94007e0    	ldr	x0, [sp, #0x8]
100009484: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100009488: 910103ff    	add	sp, sp, #0x40
10000948c: d65f03c0    	ret

0000000100009490 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::data[abi:ne180100]() const>:
100009490: d10083ff    	sub	sp, sp, #0x20
100009494: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009498: 910043fd    	add	x29, sp, #0x10
10000949c: f90007e0    	str	x0, [sp, #0x8]
1000094a0: f94007e0    	ldr	x0, [sp, #0x8]
1000094a4: 94000274    	bl	0x100009e74 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const>
1000094a8: 9400026e    	bl	0x100009e60 <char const* std::__1::__to_address[abi:ne180100]<char const>(char const*)>
1000094ac: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000094b0: 910083ff    	add	sp, sp, #0x20
1000094b4: d65f03c0    	ret

00000001000094b8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_cap[abi:ne180100]() const>:
1000094b8: d10083ff    	sub	sp, sp, #0x20
1000094bc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000094c0: 910043fd    	add	x29, sp, #0x10
1000094c4: f90007e0    	str	x0, [sp, #0x8]
1000094c8: f94007e0    	ldr	x0, [sp, #0x8]
1000094cc: 97fff935    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
1000094d0: f9400808    	ldr	x8, [x0, #0x10]
1000094d4: 9240f908    	and	x8, x8, #0x7fffffffffffffff
1000094d8: d340fd00    	lsr	x0, x8, #0
1000094dc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000094e0: 910083ff    	add	sp, sp, #0x20
1000094e4: d65f03c0    	ret

00000001000094e8 <std::__1::iterator_traits<char const*>::difference_type std::__1::__distance[abi:ne180100]<char const*>(char const*, char const*, std::__1::random_access_iterator_tag)>:
1000094e8: d10083ff    	sub	sp, sp, #0x20
1000094ec: f9000be0    	str	x0, [sp, #0x10]
1000094f0: f90007e1    	str	x1, [sp, #0x8]
1000094f4: f94007e8    	ldr	x8, [sp, #0x8]
1000094f8: f9400be9    	ldr	x9, [sp, #0x10]
1000094fc: eb090100    	subs	x0, x8, x9
100009500: 910083ff    	add	sp, sp, #0x20
100009504: d65f03c0    	ret

0000000100009508 <bool std::__1::__is_pointer_in_range[abi:ne180100]<char, char, 0>(char const*, char const*, char const*)>:
100009508: d100c3ff    	sub	sp, sp, #0x30
10000950c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009510: 910083fd    	add	x29, sp, #0x20
100009514: aa0203e8    	mov	x8, x2
100009518: d10023a2    	sub	x2, x29, #0x8
10000951c: f81f83a0    	stur	x0, [x29, #-0x8]
100009520: f9000be1    	str	x1, [sp, #0x10]
100009524: 910023e1    	add	x1, sp, #0x8
100009528: f90007e8    	str	x8, [sp, #0x8]
10000952c: 91001fe0    	add	x0, sp, #0x7
100009530: 94000010    	bl	0x100009570 <bool std::__1::__less<void, void>::operator()[abi:ne180100]<char const*, char const*>(char const* const&, char const* const&) const>
100009534: 52800008    	mov	w8, #0x0                ; =0
100009538: b90003e8    	str	w8, [sp]
10000953c: 37000100    	tbnz	w0, #0x0, 0x10000955c <bool std::__1::__is_pointer_in_range[abi:ne180100]<char, char, 0>(char const*, char const*, char const*)+0x54>
100009540: 14000001    	b	0x100009544 <bool std::__1::__is_pointer_in_range[abi:ne180100]<char, char, 0>(char const*, char const*, char const*)+0x3c>
100009544: 91001be0    	add	x0, sp, #0x6
100009548: 910023e1    	add	x1, sp, #0x8
10000954c: 910043e2    	add	x2, sp, #0x10
100009550: 94000008    	bl	0x100009570 <bool std::__1::__less<void, void>::operator()[abi:ne180100]<char const*, char const*>(char const* const&, char const* const&) const>
100009554: b90003e0    	str	w0, [sp]
100009558: 14000001    	b	0x10000955c <bool std::__1::__is_pointer_in_range[abi:ne180100]<char, char, 0>(char const*, char const*, char const*)+0x54>
10000955c: b94003e8    	ldr	w8, [sp]
100009560: 12000100    	and	w0, w8, #0x1
100009564: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009568: 9100c3ff    	add	sp, sp, #0x30
10000956c: d65f03c0    	ret

0000000100009570 <bool std::__1::__less<void, void>::operator()[abi:ne180100]<char const*, char const*>(char const* const&, char const* const&) const>:
100009570: d10083ff    	sub	sp, sp, #0x20
100009574: f9000fe0    	str	x0, [sp, #0x18]
100009578: f9000be1    	str	x1, [sp, #0x10]
10000957c: f90007e2    	str	x2, [sp, #0x8]
100009580: f9400be8    	ldr	x8, [sp, #0x10]
100009584: f9400108    	ldr	x8, [x8]
100009588: f94007e9    	ldr	x9, [sp, #0x8]
10000958c: f9400129    	ldr	x9, [x9]
100009590: eb090108    	subs	x8, x8, x9
100009594: 1a9f27e8    	cset	w8, lo
100009598: 12000100    	and	w0, w8, #0x1
10000959c: 910083ff    	add	sp, sp, #0x20
1000095a0: d65f03c0    	ret

00000001000095a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_size[abi:ne180100](unsigned long)>:
1000095a4: d100c3ff    	sub	sp, sp, #0x30
1000095a8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000095ac: 910083fd    	add	x29, sp, #0x20
1000095b0: f81f83a0    	stur	x0, [x29, #-0x8]
1000095b4: f9000be1    	str	x1, [sp, #0x10]
1000095b8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000095bc: f9400be8    	ldr	x8, [sp, #0x10]
1000095c0: f90007e8    	str	x8, [sp, #0x8]
1000095c4: 97fff8bd    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
1000095c8: f94007e8    	ldr	x8, [sp, #0x8]
1000095cc: f9000408    	str	x8, [x0, #0x8]
1000095d0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000095d4: 9100c3ff    	add	sp, sp, #0x30
1000095d8: d65f03c0    	ret

00000001000095dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_short_size[abi:ne180100](unsigned long)>:
1000095dc: d10103ff    	sub	sp, sp, #0x40
1000095e0: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000095e4: 9100c3fd    	add	x29, sp, #0x30
1000095e8: f81f83a0    	stur	x0, [x29, #-0x8]
1000095ec: f81f03a1    	stur	x1, [x29, #-0x10]
1000095f0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000095f4: f9000be0    	str	x0, [sp, #0x10]
1000095f8: f85f03a8    	ldur	x8, [x29, #-0x10]
1000095fc: f90007e8    	str	x8, [sp, #0x8]
100009600: 97fff8ae    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100009604: f94007ea    	ldr	x10, [sp, #0x8]
100009608: aa0003e9    	mov	x9, x0
10000960c: f9400be0    	ldr	x0, [sp, #0x10]
100009610: 39405d28    	ldrb	w8, [x9, #0x17]
100009614: 52800feb    	mov	w11, #0x7f              ; =127
100009618: b81ec3ab    	stur	w11, [x29, #-0x14]
10000961c: 1200194a    	and	w10, w10, #0x7f
100009620: 12196108    	and	w8, w8, #0xffffff80
100009624: 2a0a0108    	orr	w8, w8, w10
100009628: 39005d28    	strb	w8, [x9, #0x17]
10000962c: 97fff8a3    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100009630: b85ec3a9    	ldur	w9, [x29, #-0x14]
100009634: 39405c08    	ldrb	w8, [x0, #0x17]
100009638: 0a090108    	and	w8, w8, w9
10000963c: 52800009    	mov	w9, #0x0                ; =0
100009640: 2a090108    	orr	w8, w8, w9
100009644: 39005c08    	strb	w8, [x0, #0x17]
100009648: a9437bfd    	ldp	x29, x30, [sp, #0x30]
10000964c: 910103ff    	add	sp, sp, #0x40
100009650: d65f03c0    	ret

0000000100009654 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::second[abi:ne180100]()>:
100009654: d10083ff    	sub	sp, sp, #0x20
100009658: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000965c: 910043fd    	add	x29, sp, #0x10
100009660: f90007e0    	str	x0, [sp, #0x8]
100009664: f94007e0    	ldr	x0, [sp, #0x8]
100009668: 94000004    	bl	0x100009678 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__get[abi:ne180100]()>
10000966c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009670: 910083ff    	add	sp, sp, #0x20
100009674: d65f03c0    	ret

0000000100009678 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__get[abi:ne180100]()>:
100009678: d10043ff    	sub	sp, sp, #0x10
10000967c: f90007e0    	str	x0, [sp, #0x8]
100009680: f94007e0    	ldr	x0, [sp, #0x8]
100009684: 910043ff    	add	sp, sp, #0x10
100009688: d65f03c0    	ret

000000010000968c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]<char const*, 0>(char const*, char const*, std::__1::allocator<char> const&)>:
10000968c: d10103ff    	sub	sp, sp, #0x40
100009690: a9037bfd    	stp	x29, x30, [sp, #0x30]
100009694: 9100c3fd    	add	x29, sp, #0x30
100009698: f81f83a0    	stur	x0, [x29, #-0x8]
10000969c: f81f03a1    	stur	x1, [x29, #-0x10]
1000096a0: f9000fe2    	str	x2, [sp, #0x18]
1000096a4: f9000be3    	str	x3, [sp, #0x10]
1000096a8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000096ac: f90003e0    	str	x0, [sp]
1000096b0: f9400be2    	ldr	x2, [sp, #0x10]
1000096b4: 91003fe1    	add	x1, sp, #0xf
1000096b8: 94000009    	bl	0x1000096dc <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::allocator<char> const&>(std::__1::__default_init_tag&&, std::__1::allocator<char> const&)>
1000096bc: f94003e0    	ldr	x0, [sp]
1000096c0: f85f03a1    	ldur	x1, [x29, #-0x10]
1000096c4: f9400fe2    	ldr	x2, [sp, #0x18]
1000096c8: 940005ae    	bl	0x10000ad80 <_strlen+0x10000ad80>
1000096cc: f94003e0    	ldr	x0, [sp]
1000096d0: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000096d4: 910103ff    	add	sp, sp, #0x40
1000096d8: d65f03c0    	ret

00000001000096dc <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::allocator<char> const&>(std::__1::__default_init_tag&&, std::__1::allocator<char> const&)>:
1000096dc: d100c3ff    	sub	sp, sp, #0x30
1000096e0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000096e4: 910083fd    	add	x29, sp, #0x20
1000096e8: f81f83a0    	stur	x0, [x29, #-0x8]
1000096ec: f9000be1    	str	x1, [sp, #0x10]
1000096f0: f90007e2    	str	x2, [sp, #0x8]
1000096f4: f85f83a0    	ldur	x0, [x29, #-0x8]
1000096f8: f90003e0    	str	x0, [sp]
1000096fc: f9400be1    	ldr	x1, [sp, #0x10]
100009700: f94007e2    	ldr	x2, [sp, #0x8]
100009704: 9400001a    	bl	0x10000976c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::allocator<char> const&>(std::__1::__default_init_tag&&, std::__1::allocator<char> const&)>
100009708: f94003e0    	ldr	x0, [sp]
10000970c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009710: 9100c3ff    	add	sp, sp, #0x30
100009714: d65f03c0    	ret

0000000100009718 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init<char const*, 0>(char const*, char const*)>:
100009718: d10103ff    	sub	sp, sp, #0x40
10000971c: a9037bfd    	stp	x29, x30, [sp, #0x30]
100009720: 9100c3fd    	add	x29, sp, #0x30
100009724: f81f83a0    	stur	x0, [x29, #-0x8]
100009728: f81f03a1    	stur	x1, [x29, #-0x10]
10000972c: f9000fe2    	str	x2, [sp, #0x18]
100009730: f85f83a8    	ldur	x8, [x29, #-0x8]
100009734: f90007e8    	str	x8, [sp, #0x8]
100009738: f85f03a0    	ldur	x0, [x29, #-0x10]
10000973c: f9400fe1    	ldr	x1, [sp, #0x18]
100009740: 97fffecd    	bl	0x100009274 <std::__1::iterator_traits<char const*>::difference_type std::__1::distance[abi:ne180100]<char const*>(char const*, char const*)>
100009744: aa0003e8    	mov	x8, x0
100009748: f94007e0    	ldr	x0, [sp, #0x8]
10000974c: f9000be8    	str	x8, [sp, #0x10]
100009750: f85f03a1    	ldur	x1, [x29, #-0x10]
100009754: f9400fe2    	ldr	x2, [sp, #0x18]
100009758: f9400be3    	ldr	x3, [sp, #0x10]
10000975c: 94000580    	bl	0x10000ad5c <_strlen+0x10000ad5c>
100009760: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100009764: 910103ff    	add	sp, sp, #0x40
100009768: d65f03c0    	ret

000000010000976c <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::__compressed_pair[abi:ne180100]<std::__1::__default_init_tag, std::__1::allocator<char> const&>(std::__1::__default_init_tag&&, std::__1::allocator<char> const&)>:
10000976c: d10103ff    	sub	sp, sp, #0x40
100009770: a9037bfd    	stp	x29, x30, [sp, #0x30]
100009774: 9100c3fd    	add	x29, sp, #0x30
100009778: f81f83a0    	stur	x0, [x29, #-0x8]
10000977c: f81f03a1    	stur	x1, [x29, #-0x10]
100009780: f9000fe2    	str	x2, [sp, #0x18]
100009784: f85f83a0    	ldur	x0, [x29, #-0x8]
100009788: f90007e0    	str	x0, [sp, #0x8]
10000978c: 97fff7d2    	bl	0x1000076d4 <std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, 0, false>::__compressed_pair_elem[abi:ne180100](std::__1::__default_init_tag)>
100009790: f94007e0    	ldr	x0, [sp, #0x8]
100009794: f9400fe1    	ldr	x1, [sp, #0x18]
100009798: 94000005    	bl	0x1000097ac <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem[abi:ne180100]<std::__1::allocator<char> const&, void>(std::__1::allocator<char> const&)>
10000979c: f94007e0    	ldr	x0, [sp, #0x8]
1000097a0: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000097a4: 910103ff    	add	sp, sp, #0x40
1000097a8: d65f03c0    	ret

00000001000097ac <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem[abi:ne180100]<std::__1::allocator<char> const&, void>(std::__1::allocator<char> const&)>:
1000097ac: d10043ff    	sub	sp, sp, #0x10
1000097b0: f90007e0    	str	x0, [sp, #0x8]
1000097b4: f90003e1    	str	x1, [sp]
1000097b8: f94007e0    	ldr	x0, [sp, #0x8]
1000097bc: 910043ff    	add	sp, sp, #0x10
1000097c0: d65f03c0    	ret

00000001000097c4 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)>:
1000097c4: d101c3ff    	sub	sp, sp, #0x70
1000097c8: a9067bfd    	stp	x29, x30, [sp, #0x60]
1000097cc: 910183fd    	add	x29, sp, #0x60
1000097d0: f81f83a0    	stur	x0, [x29, #-0x8]
1000097d4: f81f03a1    	stur	x1, [x29, #-0x10]
1000097d8: f81e83a2    	stur	x2, [x29, #-0x18]
1000097dc: f81e03a3    	stur	x3, [x29, #-0x20]
1000097e0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000097e4: f9000be0    	str	x0, [sp, #0x10]
1000097e8: f85e03a8    	ldur	x8, [x29, #-0x20]
1000097ec: f9000fe8    	str	x8, [sp, #0x18]
1000097f0: 94000049    	bl	0x100009914 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const>
1000097f4: f9400fe8    	ldr	x8, [sp, #0x18]
1000097f8: eb000108    	subs	x8, x8, x0
1000097fc: 1a9f87e8    	cset	w8, ls
100009800: 37000088    	tbnz	w8, #0x0, 0x100009810 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x4c>
100009804: 14000001    	b	0x100009808 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x44>
100009808: f9400be0    	ldr	x0, [sp, #0x10]
10000980c: 9400006d    	bl	0x1000099c0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__throw_length_error[abi:ne180100]() const>
100009810: f85e03a0    	ldur	x0, [x29, #-0x20]
100009814: 94000072    	bl	0x1000099dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__fits_in_sso[abi:ne180100](unsigned long)>
100009818: 36000120    	tbz	w0, #0x0, 0x10000983c <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x78>
10000981c: 14000001    	b	0x100009820 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x5c>
100009820: f9400be0    	ldr	x0, [sp, #0x10]
100009824: f85e03a1    	ldur	x1, [x29, #-0x20]
100009828: 97ffff6d    	bl	0x1000095dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_short_size[abi:ne180100](unsigned long)>
10000982c: f9400be0    	ldr	x0, [sp, #0x10]
100009830: 97fffaa6    	bl	0x1000082c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]()>
100009834: f81d83a0    	stur	x0, [x29, #-0x28]
100009838: 1400001b    	b	0x1000098a4 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0xe0>
10000983c: f9400be0    	ldr	x0, [sp, #0x10]
100009840: 97fffefa    	bl	0x100009428 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__alloc[abi:ne180100]()>
100009844: f90007e0    	str	x0, [sp, #0x8]
100009848: f85e03a0    	ldur	x0, [x29, #-0x20]
10000984c: 9400007c    	bl	0x100009a3c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)>
100009850: aa0003e8    	mov	x8, x0
100009854: f94007e0    	ldr	x0, [sp, #0x8]
100009858: 91000501    	add	x1, x8, #0x1
10000985c: 94000068    	bl	0x1000099fc <std::__1::__allocation_result<std::__1::allocator_traits<std::__1::allocator<char>>::pointer> std::__1::__allocate_at_least[abi:ne180100]<std::__1::allocator<char>>(std::__1::allocator<char>&, unsigned long)>
100009860: f90017e0    	str	x0, [sp, #0x28]
100009864: f9001be1    	str	x1, [sp, #0x30]
100009868: f94017e8    	ldr	x8, [sp, #0x28]
10000986c: f81d83a8    	stur	x8, [x29, #-0x28]
100009870: f85d83a0    	ldur	x0, [x29, #-0x28]
100009874: f9401be1    	ldr	x1, [sp, #0x30]
100009878: 94000092    	bl	0x100009ac0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__begin_lifetime[abi:ne180100](char*, unsigned long)>
10000987c: f9400be0    	ldr	x0, [sp, #0x10]
100009880: f85d83a1    	ldur	x1, [x29, #-0x28]
100009884: 94000094    	bl	0x100009ad4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_pointer[abi:ne180100](char*)>
100009888: f9400be0    	ldr	x0, [sp, #0x10]
10000988c: f9401be1    	ldr	x1, [sp, #0x30]
100009890: 9400009f    	bl	0x100009b0c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_cap[abi:ne180100](unsigned long)>
100009894: f9400be0    	ldr	x0, [sp, #0x10]
100009898: f85e03a1    	ldur	x1, [x29, #-0x20]
10000989c: 97ffff42    	bl	0x1000095a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_size[abi:ne180100](unsigned long)>
1000098a0: 14000001    	b	0x1000098a4 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0xe0>
1000098a4: 14000001    	b	0x1000098a8 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0xe4>
1000098a8: f85f03a8    	ldur	x8, [x29, #-0x10]
1000098ac: f85e83a9    	ldur	x9, [x29, #-0x18]
1000098b0: eb090108    	subs	x8, x8, x9
1000098b4: 1a9f17e8    	cset	w8, eq
1000098b8: 370001a8    	tbnz	w8, #0x0, 0x1000098ec <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x128>
1000098bc: 14000001    	b	0x1000098c0 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0xfc>
1000098c0: f85d83a0    	ldur	x0, [x29, #-0x28]
1000098c4: f85f03a1    	ldur	x1, [x29, #-0x10]
1000098c8: 97fffeba    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
1000098cc: 14000001    	b	0x1000098d0 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0x10c>
1000098d0: f85f03a8    	ldur	x8, [x29, #-0x10]
1000098d4: 91000508    	add	x8, x8, #0x1
1000098d8: f81f03a8    	stur	x8, [x29, #-0x10]
1000098dc: f85d83a8    	ldur	x8, [x29, #-0x28]
1000098e0: 91000508    	add	x8, x8, #0x1
1000098e4: f81d83a8    	stur	x8, [x29, #-0x28]
1000098e8: 17fffff0    	b	0x1000098a8 <void std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__init_with_size[abi:ne180100]<char const*, char const*>(char const*, char const*, unsigned long)+0xe4>
1000098ec: f85d83a0    	ldur	x0, [x29, #-0x28]
1000098f0: 91009fe1    	add	x1, sp, #0x27
1000098f4: 39009fff    	strb	wzr, [sp, #0x27]
1000098f8: 97fffeae    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
1000098fc: f9400be0    	ldr	x0, [sp, #0x10]
100009900: f85e03a1    	ldur	x1, [x29, #-0x20]
100009904: 97fff7f6    	bl	0x1000078dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_new[abi:ne180100](unsigned long) const>
100009908: a9467bfd    	ldp	x29, x30, [sp, #0x60]
10000990c: 9101c3ff    	add	sp, sp, #0x70
100009910: d65f03c0    	ret

0000000100009914 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const>:
100009914: d10103ff    	sub	sp, sp, #0x40
100009918: a9037bfd    	stp	x29, x30, [sp, #0x30]
10000991c: 9100c3fd    	add	x29, sp, #0x30
100009920: f81f03a0    	stur	x0, [x29, #-0x10]
100009924: f85f03a0    	ldur	x0, [x29, #-0x10]
100009928: 9400009e    	bl	0x100009ba0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__alloc[abi:ne180100]() const>
10000992c: 9400054e    	bl	0x10000ae64 <_strlen+0x10000ae64>
100009930: f9000fe0    	str	x0, [sp, #0x18]
100009934: f9400fe8    	ldr	x8, [sp, #0x18]
100009938: f90007e8    	str	x8, [sp, #0x8]
10000993c: 940000a2    	bl	0x100009bc4 <std::__1::numeric_limits<unsigned long>::max[abi:ne180100]()>
100009940: f94007e8    	ldr	x8, [sp, #0x8]
100009944: d2800049    	mov	x9, #0x2                ; =2
100009948: 9ac90809    	udiv	x9, x0, x9
10000994c: eb090108    	subs	x8, x8, x9
100009950: 1a9f97e8    	cset	w8, hi
100009954: 370000c8    	tbnz	w8, #0x0, 0x10000996c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x58>
100009958: 14000001    	b	0x10000995c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x48>
10000995c: f9400fe8    	ldr	x8, [sp, #0x18]
100009960: f1002108    	subs	x8, x8, #0x8
100009964: f81f83a8    	stur	x8, [x29, #-0x8]
100009968: 14000012    	b	0x1000099b0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x9c>
10000996c: 39005fff    	strb	wzr, [sp, #0x17]
100009970: 39405fe8    	ldrb	w8, [sp, #0x17]
100009974: 360000c8    	tbz	w8, #0x0, 0x10000998c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x78>
100009978: 14000001    	b	0x10000997c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x68>
10000997c: f9400fe8    	ldr	x8, [sp, #0x18]
100009980: f1002108    	subs	x8, x8, #0x8
100009984: f90003e8    	str	x8, [sp]
100009988: 14000007    	b	0x1000099a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x90>
10000998c: f9400fe8    	ldr	x8, [sp, #0x18]
100009990: d2800049    	mov	x9, #0x2                ; =2
100009994: 9ac90908    	udiv	x8, x8, x9
100009998: f1002108    	subs	x8, x8, #0x8
10000999c: f90003e8    	str	x8, [sp]
1000099a0: 14000001    	b	0x1000099a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x90>
1000099a4: f94003e8    	ldr	x8, [sp]
1000099a8: f81f83a8    	stur	x8, [x29, #-0x8]
1000099ac: 14000001    	b	0x1000099b0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::max_size[abi:ne180100]() const+0x9c>
1000099b0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000099b4: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000099b8: 910103ff    	add	sp, sp, #0x40
1000099bc: d65f03c0    	ret

00000001000099c0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__throw_length_error[abi:ne180100]() const>:
1000099c0: d10083ff    	sub	sp, sp, #0x20
1000099c4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000099c8: 910043fd    	add	x29, sp, #0x10
1000099cc: f90007e0    	str	x0, [sp, #0x8]
1000099d0: d0000000    	adrp	x0, 0x10000b000 <GCC_except_table0+0x4>
1000099d4: 912ee400    	add	x0, x0, #0xbb9
1000099d8: 94000095    	bl	0x100009c2c <std::__1::__throw_length_error[abi:ne180100](char const*)>

00000001000099dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__fits_in_sso[abi:ne180100](unsigned long)>:
1000099dc: d10043ff    	sub	sp, sp, #0x10
1000099e0: f90007e0    	str	x0, [sp, #0x8]
1000099e4: f94007e8    	ldr	x8, [sp, #0x8]
1000099e8: f1005d08    	subs	x8, x8, #0x17
1000099ec: 1a9f27e8    	cset	w8, lo
1000099f0: 12000100    	and	w0, w8, #0x1
1000099f4: 910043ff    	add	sp, sp, #0x10
1000099f8: d65f03c0    	ret

00000001000099fc <std::__1::__allocation_result<std::__1::allocator_traits<std::__1::allocator<char>>::pointer> std::__1::__allocate_at_least[abi:ne180100]<std::__1::allocator<char>>(std::__1::allocator<char>&, unsigned long)>:
1000099fc: d100c3ff    	sub	sp, sp, #0x30
100009a00: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009a04: 910083fd    	add	x29, sp, #0x20
100009a08: f90007e0    	str	x0, [sp, #0x8]
100009a0c: f90003e1    	str	x1, [sp]
100009a10: f94007e0    	ldr	x0, [sp, #0x8]
100009a14: f94003e1    	ldr	x1, [sp]
100009a18: 940000bc    	bl	0x100009d08 <std::__1::allocator<char>::allocate[abi:ne180100](unsigned long)>
100009a1c: f9000be0    	str	x0, [sp, #0x10]
100009a20: f94003e8    	ldr	x8, [sp]
100009a24: f9000fe8    	str	x8, [sp, #0x18]
100009a28: f9400be0    	ldr	x0, [sp, #0x10]
100009a2c: f9400fe1    	ldr	x1, [sp, #0x18]
100009a30: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009a34: 9100c3ff    	add	sp, sp, #0x30
100009a38: d65f03c0    	ret

0000000100009a3c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)>:
100009a3c: d100c3ff    	sub	sp, sp, #0x30
100009a40: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009a44: 910083fd    	add	x29, sp, #0x20
100009a48: f9000be0    	str	x0, [sp, #0x10]
100009a4c: f9400be8    	ldr	x8, [sp, #0x10]
100009a50: f1005d08    	subs	x8, x8, #0x17
100009a54: 1a9f37e8    	cset	w8, hs
100009a58: 370000a8    	tbnz	w8, #0x0, 0x100009a6c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x30>
100009a5c: 14000001    	b	0x100009a60 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x24>
100009a60: d28002c8    	mov	x8, #0x16               ; =22
100009a64: f81f83a8    	stur	x8, [x29, #-0x8]
100009a68: 14000012    	b	0x100009ab0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x74>
100009a6c: f9400be8    	ldr	x8, [sp, #0x10]
100009a70: 91000500    	add	x0, x8, #0x1
100009a74: 940004b7    	bl	0x10000ad50 <_strlen+0x10000ad50>
100009a78: f1000408    	subs	x8, x0, #0x1
100009a7c: f90007e8    	str	x8, [sp, #0x8]
100009a80: f94007e8    	ldr	x8, [sp, #0x8]
100009a84: f1005d08    	subs	x8, x8, #0x17
100009a88: 1a9f07e8    	cset	w8, ne
100009a8c: 370000c8    	tbnz	w8, #0x0, 0x100009aa4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x68>
100009a90: 14000001    	b	0x100009a94 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x58>
100009a94: f94007e8    	ldr	x8, [sp, #0x8]
100009a98: 91000508    	add	x8, x8, #0x1
100009a9c: f90007e8    	str	x8, [sp, #0x8]
100009aa0: 14000001    	b	0x100009aa4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x68>
100009aa4: f94007e8    	ldr	x8, [sp, #0x8]
100009aa8: f81f83a8    	stur	x8, [x29, #-0x8]
100009aac: 14000001    	b	0x100009ab0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__recommend[abi:ne180100](unsigned long)+0x74>
100009ab0: f85f83a0    	ldur	x0, [x29, #-0x8]
100009ab4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009ab8: 9100c3ff    	add	sp, sp, #0x30
100009abc: d65f03c0    	ret

0000000100009ac0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__begin_lifetime[abi:ne180100](char*, unsigned long)>:
100009ac0: d10043ff    	sub	sp, sp, #0x10
100009ac4: f90007e0    	str	x0, [sp, #0x8]
100009ac8: f90003e1    	str	x1, [sp]
100009acc: 910043ff    	add	sp, sp, #0x10
100009ad0: d65f03c0    	ret

0000000100009ad4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_pointer[abi:ne180100](char*)>:
100009ad4: d100c3ff    	sub	sp, sp, #0x30
100009ad8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009adc: 910083fd    	add	x29, sp, #0x20
100009ae0: f81f83a0    	stur	x0, [x29, #-0x8]
100009ae4: f9000be1    	str	x1, [sp, #0x10]
100009ae8: f85f83a0    	ldur	x0, [x29, #-0x8]
100009aec: f9400be8    	ldr	x8, [sp, #0x10]
100009af0: f90007e8    	str	x8, [sp, #0x8]
100009af4: 97fff771    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100009af8: f94007e8    	ldr	x8, [sp, #0x8]
100009afc: f9000008    	str	x8, [x0]
100009b00: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009b04: 9100c3ff    	add	sp, sp, #0x30
100009b08: d65f03c0    	ret

0000000100009b0c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_cap[abi:ne180100](unsigned long)>:
100009b0c: d100c3ff    	sub	sp, sp, #0x30
100009b10: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009b14: 910083fd    	add	x29, sp, #0x20
100009b18: f81f83a0    	stur	x0, [x29, #-0x8]
100009b1c: f9000be1    	str	x1, [sp, #0x10]
100009b20: f85f83a0    	ldur	x0, [x29, #-0x8]
100009b24: f90007e0    	str	x0, [sp, #0x8]
100009b28: f9400be8    	ldr	x8, [sp, #0x10]
100009b2c: d2800029    	mov	x9, #0x1                ; =1
100009b30: 9ac90908    	udiv	x8, x8, x9
100009b34: f90003e8    	str	x8, [sp]
100009b38: 97fff760    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100009b3c: f94003ea    	ldr	x10, [sp]
100009b40: aa0003e9    	mov	x9, x0
100009b44: f94007e0    	ldr	x0, [sp, #0x8]
100009b48: f9400928    	ldr	x8, [x9, #0x10]
100009b4c: 9240f94a    	and	x10, x10, #0x7fffffffffffffff
100009b50: 92410108    	and	x8, x8, #0x8000000000000000
100009b54: aa0a0108    	orr	x8, x8, x10
100009b58: f9000928    	str	x8, [x9, #0x10]
100009b5c: 97fff757    	bl	0x1000078b8 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]()>
100009b60: f9400808    	ldr	x8, [x0, #0x10]
100009b64: 9240f908    	and	x8, x8, #0x7fffffffffffffff
100009b68: b2410108    	orr	x8, x8, #0x8000000000000000
100009b6c: f9000808    	str	x8, [x0, #0x10]
100009b70: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009b74: 9100c3ff    	add	sp, sp, #0x30
100009b78: d65f03c0    	ret

0000000100009b7c <unsigned long std::__1::allocator_traits<std::__1::allocator<char>>::max_size[abi:ne180100]<std::__1::allocator<char>, void>(std::__1::allocator<char> const&)>:
100009b7c: d10083ff    	sub	sp, sp, #0x20
100009b80: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009b84: 910043fd    	add	x29, sp, #0x10
100009b88: f90007e0    	str	x0, [sp, #0x8]
100009b8c: f94007e0    	ldr	x0, [sp, #0x8]
100009b90: 94000012    	bl	0x100009bd8 <std::__1::allocator<char>::max_size[abi:ne180100]() const>
100009b94: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009b98: 910083ff    	add	sp, sp, #0x20
100009b9c: d65f03c0    	ret

0000000100009ba0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__alloc[abi:ne180100]() const>:
100009ba0: d10083ff    	sub	sp, sp, #0x20
100009ba4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009ba8: 910043fd    	add	x29, sp, #0x10
100009bac: f90007e0    	str	x0, [sp, #0x8]
100009bb0: f94007e0    	ldr	x0, [sp, #0x8]
100009bb4: 9400000e    	bl	0x100009bec <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::second[abi:ne180100]() const>
100009bb8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009bbc: 910083ff    	add	sp, sp, #0x20
100009bc0: d65f03c0    	ret

0000000100009bc4 <std::__1::numeric_limits<unsigned long>::max[abi:ne180100]()>:
100009bc4: a9bf7bfd    	stp	x29, x30, [sp, #-0x10]!
100009bc8: 910003fd    	mov	x29, sp
100009bcc: 94000016    	bl	0x100009c24 <std::__1::__libcpp_numeric_limits<unsigned long, true>::max[abi:ne180100]()>
100009bd0: a8c17bfd    	ldp	x29, x30, [sp], #0x10
100009bd4: d65f03c0    	ret

0000000100009bd8 <std::__1::allocator<char>::max_size[abi:ne180100]() const>:
100009bd8: d10043ff    	sub	sp, sp, #0x10
100009bdc: f90007e0    	str	x0, [sp, #0x8]
100009be0: 92800000    	mov	x0, #-0x1               ; =-1
100009be4: 910043ff    	add	sp, sp, #0x10
100009be8: d65f03c0    	ret

0000000100009bec <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::second[abi:ne180100]() const>:
100009bec: d10083ff    	sub	sp, sp, #0x20
100009bf0: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009bf4: 910043fd    	add	x29, sp, #0x10
100009bf8: f90007e0    	str	x0, [sp, #0x8]
100009bfc: f94007e0    	ldr	x0, [sp, #0x8]
100009c00: 94000004    	bl	0x100009c10 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__get[abi:ne180100]() const>
100009c04: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009c08: 910083ff    	add	sp, sp, #0x20
100009c0c: d65f03c0    	ret

0000000100009c10 <std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__get[abi:ne180100]() const>:
100009c10: d10043ff    	sub	sp, sp, #0x10
100009c14: f90007e0    	str	x0, [sp, #0x8]
100009c18: f94007e0    	ldr	x0, [sp, #0x8]
100009c1c: 910043ff    	add	sp, sp, #0x10
100009c20: d65f03c0    	ret

0000000100009c24 <std::__1::__libcpp_numeric_limits<unsigned long, true>::max[abi:ne180100]()>:
100009c24: 92800000    	mov	x0, #-0x1               ; =-1
100009c28: d65f03c0    	ret

0000000100009c2c <std::__1::__throw_length_error[abi:ne180100](char const*)>:
100009c2c: d100c3ff    	sub	sp, sp, #0x30
100009c30: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009c34: 910083fd    	add	x29, sp, #0x20
100009c38: f81f83a0    	stur	x0, [x29, #-0x8]
100009c3c: d2800200    	mov	x0, #0x10               ; =16
100009c40: 940004c8    	bl	0x10000af60 <_strlen+0x10000af60>
100009c44: f90003e0    	str	x0, [sp]
100009c48: f85f83a1    	ldur	x1, [x29, #-0x8]
100009c4c: 94000011    	bl	0x100009c90 <std::length_error::length_error[abi:ne180100](char const*)>
100009c50: 14000001    	b	0x100009c54 <std::__1::__throw_length_error[abi:ne180100](char const*)+0x28>
100009c54: f94003e0    	ldr	x0, [sp]
100009c58: f0000001    	adrp	x1, 0x10000c000 <_strlen+0x10000c000>
100009c5c: f940f021    	ldr	x1, [x1, #0x1e0]
100009c60: f0000002    	adrp	x2, 0x10000c000 <_strlen+0x10000c000>
100009c64: f9402842    	ldr	x2, [x2, #0x50]
100009c68: 940004cd    	bl	0x10000af9c <_strlen+0x10000af9c>
100009c6c: aa0003e8    	mov	x8, x0
100009c70: f94003e0    	ldr	x0, [sp]
100009c74: f9000be8    	str	x8, [sp, #0x10]
100009c78: aa0103e8    	mov	x8, x1
100009c7c: b9000fe8    	str	w8, [sp, #0xc]
100009c80: 940004c1    	bl	0x10000af84 <_strlen+0x10000af84>
100009c84: 14000001    	b	0x100009c88 <std::__1::__throw_length_error[abi:ne180100](char const*)+0x5c>
100009c88: f9400be0    	ldr	x0, [sp, #0x10]
100009c8c: 9400040d    	bl	0x10000acc0 <_strlen+0x10000acc0>

0000000100009c90 <std::length_error::length_error[abi:ne180100](char const*)>:
100009c90: d100c3ff    	sub	sp, sp, #0x30
100009c94: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009c98: 910083fd    	add	x29, sp, #0x20
100009c9c: f81f83a0    	stur	x0, [x29, #-0x8]
100009ca0: f9000be1    	str	x1, [sp, #0x10]
100009ca4: f85f83a0    	ldur	x0, [x29, #-0x8]
100009ca8: f90007e0    	str	x0, [sp, #0x8]
100009cac: f9400be1    	ldr	x1, [sp, #0x10]
100009cb0: 94000005    	bl	0x100009cc4 <std::length_error::length_error[abi:ne180100](char const*)>
100009cb4: f94007e0    	ldr	x0, [sp, #0x8]
100009cb8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009cbc: 9100c3ff    	add	sp, sp, #0x30
100009cc0: d65f03c0    	ret

0000000100009cc4 <std::length_error::length_error[abi:ne180100](char const*)>:
100009cc4: d100c3ff    	sub	sp, sp, #0x30
100009cc8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009ccc: 910083fd    	add	x29, sp, #0x20
100009cd0: f81f83a0    	stur	x0, [x29, #-0x8]
100009cd4: f9000be1    	str	x1, [sp, #0x10]
100009cd8: f85f83a0    	ldur	x0, [x29, #-0x8]
100009cdc: f90007e0    	str	x0, [sp, #0x8]
100009ce0: f9400be1    	ldr	x1, [sp, #0x10]
100009ce4: 9400040f    	bl	0x10000ad20 <_strlen+0x10000ad20>
100009ce8: f94007e0    	ldr	x0, [sp, #0x8]
100009cec: f0000008    	adrp	x8, 0x10000c000 <_strlen+0x10000c000>
100009cf0: f940f908    	ldr	x8, [x8, #0x1f0]
100009cf4: 91004108    	add	x8, x8, #0x10
100009cf8: f9000008    	str	x8, [x0]
100009cfc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009d00: 9100c3ff    	add	sp, sp, #0x30
100009d04: d65f03c0    	ret

0000000100009d08 <std::__1::allocator<char>::allocate[abi:ne180100](unsigned long)>:
100009d08: d100c3ff    	sub	sp, sp, #0x30
100009d0c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009d10: 910083fd    	add	x29, sp, #0x20
100009d14: f81f83a0    	stur	x0, [x29, #-0x8]
100009d18: f9000be1    	str	x1, [sp, #0x10]
100009d1c: f85f83a0    	ldur	x0, [x29, #-0x8]
100009d20: f9400be8    	ldr	x8, [sp, #0x10]
100009d24: f90007e8    	str	x8, [sp, #0x8]
100009d28: 9400044f    	bl	0x10000ae64 <_strlen+0x10000ae64>
100009d2c: f94007e8    	ldr	x8, [sp, #0x8]
100009d30: eb000108    	subs	x8, x8, x0
100009d34: 1a9f87e8    	cset	w8, ls
100009d38: 37000068    	tbnz	w8, #0x0, 0x100009d44 <std::__1::allocator<char>::allocate[abi:ne180100](unsigned long)+0x3c>
100009d3c: 14000001    	b	0x100009d40 <std::__1::allocator<char>::allocate[abi:ne180100](unsigned long)+0x38>
100009d40: 94000008    	bl	0x100009d60 <std::__throw_bad_array_new_length[abi:ne180100]()>
100009d44: f9400be8    	ldr	x8, [sp, #0x10]
100009d48: d340fd00    	lsr	x0, x8, #0
100009d4c: d2800021    	mov	x1, #0x1                ; =1
100009d50: 94000011    	bl	0x100009d94 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)>
100009d54: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009d58: 9100c3ff    	add	sp, sp, #0x30
100009d5c: d65f03c0    	ret

0000000100009d60 <std::__throw_bad_array_new_length[abi:ne180100]()>:
100009d60: d10083ff    	sub	sp, sp, #0x20
100009d64: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009d68: 910043fd    	add	x29, sp, #0x10
100009d6c: d2800100    	mov	x0, #0x8                ; =8
100009d70: 9400047c    	bl	0x10000af60 <_strlen+0x10000af60>
100009d74: f90007e0    	str	x0, [sp, #0x8]
100009d78: 940003ed    	bl	0x10000ad2c <_strlen+0x10000ad2c>
100009d7c: f94007e0    	ldr	x0, [sp, #0x8]
100009d80: f0000001    	adrp	x1, 0x10000c000 <_strlen+0x10000c000>
100009d84: f940f421    	ldr	x1, [x1, #0x1e8]
100009d88: f0000002    	adrp	x2, 0x10000c000 <_strlen+0x10000c000>
100009d8c: f9403042    	ldr	x2, [x2, #0x60]
100009d90: 94000483    	bl	0x10000af9c <_strlen+0x10000af9c>

0000000100009d94 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)>:
100009d94: d100c3ff    	sub	sp, sp, #0x30
100009d98: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009d9c: 910083fd    	add	x29, sp, #0x20
100009da0: f9000be0    	str	x0, [sp, #0x10]
100009da4: f90007e1    	str	x1, [sp, #0x8]
100009da8: f94007e0    	ldr	x0, [sp, #0x8]
100009dac: 97fff89b    	bl	0x100008018 <std::__1::__is_overaligned_for_new[abi:ne180100](unsigned long)>
100009db0: 36000120    	tbz	w0, #0x0, 0x100009dd4 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)+0x40>
100009db4: 14000001    	b	0x100009db8 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)+0x24>
100009db8: f94007e8    	ldr	x8, [sp, #0x8]
100009dbc: f90003e8    	str	x8, [sp]
100009dc0: f9400be0    	ldr	x0, [sp, #0x10]
100009dc4: f94003e1    	ldr	x1, [sp]
100009dc8: 9400000b    	bl	0x100009df4 <void* std::__1::__libcpp_operator_new[abi:ne180100]<unsigned long, std::align_val_t>(unsigned long, std::align_val_t)>
100009dcc: f81f83a0    	stur	x0, [x29, #-0x8]
100009dd0: 14000005    	b	0x100009de4 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)+0x50>
100009dd4: f9400be0    	ldr	x0, [sp, #0x10]
100009dd8: 94000012    	bl	0x100009e20 <void* std::__1::__libcpp_operator_new[abi:ne180100]<unsigned long>(unsigned long)>
100009ddc: f81f83a0    	stur	x0, [x29, #-0x8]
100009de0: 14000001    	b	0x100009de4 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)+0x50>
100009de4: f85f83a0    	ldur	x0, [x29, #-0x8]
100009de8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009dec: 9100c3ff    	add	sp, sp, #0x30
100009df0: d65f03c0    	ret

0000000100009df4 <void* std::__1::__libcpp_operator_new[abi:ne180100]<unsigned long, std::align_val_t>(unsigned long, std::align_val_t)>:
100009df4: d10083ff    	sub	sp, sp, #0x20
100009df8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009dfc: 910043fd    	add	x29, sp, #0x10
100009e00: f90007e0    	str	x0, [sp, #0x8]
100009e04: f90003e1    	str	x1, [sp]
100009e08: f94007e0    	ldr	x0, [sp, #0x8]
100009e0c: f94003e1    	ldr	x1, [sp]
100009e10: 94000451    	bl	0x10000af54 <_strlen+0x10000af54>
100009e14: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009e18: 910083ff    	add	sp, sp, #0x20
100009e1c: d65f03c0    	ret

0000000100009e20 <void* std::__1::__libcpp_operator_new[abi:ne180100]<unsigned long>(unsigned long)>:
100009e20: d10083ff    	sub	sp, sp, #0x20
100009e24: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009e28: 910043fd    	add	x29, sp, #0x10
100009e2c: f90007e0    	str	x0, [sp, #0x8]
100009e30: f94007e0    	ldr	x0, [sp, #0x8]
100009e34: 94000445    	bl	0x10000af48 <_strlen+0x10000af48>
100009e38: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009e3c: 910083ff    	add	sp, sp, #0x20
100009e40: d65f03c0    	ret

0000000100009e44 <unsigned long std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__align_it[abi:ne180100]<8ul>(unsigned long)>:
100009e44: d10043ff    	sub	sp, sp, #0x10
100009e48: f90007e0    	str	x0, [sp, #0x8]
100009e4c: f94007e8    	ldr	x8, [sp, #0x8]
100009e50: 91001d08    	add	x8, x8, #0x7
100009e54: 927df100    	and	x0, x8, #0xfffffffffffffff8
100009e58: 910043ff    	add	sp, sp, #0x10
100009e5c: d65f03c0    	ret

0000000100009e60 <char const* std::__1::__to_address[abi:ne180100]<char const>(char const*)>:
100009e60: d10043ff    	sub	sp, sp, #0x10
100009e64: f90007e0    	str	x0, [sp, #0x8]
100009e68: f94007e0    	ldr	x0, [sp, #0x8]
100009e6c: 910043ff    	add	sp, sp, #0x10
100009e70: d65f03c0    	ret

0000000100009e74 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const>:
100009e74: d100c3ff    	sub	sp, sp, #0x30
100009e78: a9027bfd    	stp	x29, x30, [sp, #0x20]
100009e7c: 910083fd    	add	x29, sp, #0x20
100009e80: f81f83a0    	stur	x0, [x29, #-0x8]
100009e84: f85f83a0    	ldur	x0, [x29, #-0x8]
100009e88: f9000be0    	str	x0, [sp, #0x10]
100009e8c: 97fff699    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
100009e90: 360000c0    	tbz	w0, #0x0, 0x100009ea8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const+0x34>
100009e94: 14000001    	b	0x100009e98 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const+0x24>
100009e98: f9400be0    	ldr	x0, [sp, #0x10]
100009e9c: 9400000b    	bl	0x100009ec8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_pointer[abi:ne180100]() const>
100009ea0: f90007e0    	str	x0, [sp, #0x8]
100009ea4: 14000005    	b	0x100009eb8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const+0x44>
100009ea8: f9400be0    	ldr	x0, [sp, #0x10]
100009eac: 94000011    	bl	0x100009ef0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]() const>
100009eb0: f90007e0    	str	x0, [sp, #0x8]
100009eb4: 14000001    	b	0x100009eb8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_pointer[abi:ne180100]() const+0x44>
100009eb8: f94007e0    	ldr	x0, [sp, #0x8]
100009ebc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100009ec0: 9100c3ff    	add	sp, sp, #0x30
100009ec4: d65f03c0    	ret

0000000100009ec8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_pointer[abi:ne180100]() const>:
100009ec8: d10083ff    	sub	sp, sp, #0x20
100009ecc: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009ed0: 910043fd    	add	x29, sp, #0x10
100009ed4: f90007e0    	str	x0, [sp, #0x8]
100009ed8: f94007e0    	ldr	x0, [sp, #0x8]
100009edc: 97fff6b1    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
100009ee0: f9400000    	ldr	x0, [x0]
100009ee4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009ee8: 910083ff    	add	sp, sp, #0x20
100009eec: d65f03c0    	ret

0000000100009ef0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]() const>:
100009ef0: d10083ff    	sub	sp, sp, #0x20
100009ef4: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009ef8: 910043fd    	add	x29, sp, #0x10
100009efc: f90007e0    	str	x0, [sp, #0x8]
100009f00: f94007e0    	ldr	x0, [sp, #0x8]
100009f04: 97fff6a7    	bl	0x1000079a0 <std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__rep, std::__1::allocator<char>>::first[abi:ne180100]() const>
100009f08: 94000004    	bl	0x100009f18 <std::__1::pointer_traits<char const*>::pointer_to[abi:ne180100](char const&)>
100009f0c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009f10: 910083ff    	add	sp, sp, #0x20
100009f14: d65f03c0    	ret

0000000100009f18 <std::__1::pointer_traits<char const*>::pointer_to[abi:ne180100](char const&)>:
100009f18: d10043ff    	sub	sp, sp, #0x10
100009f1c: f90007e0    	str	x0, [sp, #0x8]
100009f20: f94007e0    	ldr	x0, [sp, #0x8]
100009f24: 910043ff    	add	sp, sp, #0x10
100009f28: d65f03c0    	ret

0000000100009f2c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::length[abi:ne180100]() const>:
100009f2c: d10083ff    	sub	sp, sp, #0x20
100009f30: a9017bfd    	stp	x29, x30, [sp, #0x10]
100009f34: 910043fd    	add	x29, sp, #0x10
100009f38: f90007e0    	str	x0, [sp, #0x8]
100009f3c: f94007e0    	ldr	x0, [sp, #0x8]
100009f40: 97fff67a    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
100009f44: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100009f48: 910083ff    	add	sp, sp, #0x20
100009f4c: d65f03c0    	ret

0000000100009f50 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__create_node[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&>(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
100009f50: d10283ff    	sub	sp, sp, #0xa0
100009f54: a9097bfd    	stp	x29, x30, [sp, #0x90]
100009f58: 910243fd    	add	x29, sp, #0x90
100009f5c: f81f83a0    	stur	x0, [x29, #-0x8]
100009f60: d10043a8    	sub	x8, x29, #0x10
100009f64: f90017e8    	str	x8, [sp, #0x28]
100009f68: f81f03a1    	stur	x1, [x29, #-0x10]
100009f6c: d10063a8    	sub	x8, x29, #0x18
100009f70: f9001be8    	str	x8, [sp, #0x30]
100009f74: f81e83a2    	stur	x2, [x29, #-0x18]
100009f78: f81e03a3    	stur	x3, [x29, #-0x20]
100009f7c: f85f83a0    	ldur	x0, [x29, #-0x8]
100009f80: 97fff7a6    	bl	0x100007e18 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__node_alloc[abi:ne180100]()>
100009f84: f81d83a0    	stur	x0, [x29, #-0x28]
100009f88: d10103a0    	sub	x0, x29, #0x40
100009f8c: f90013e0    	str	x0, [sp, #0x20]
100009f90: d2800021    	mov	x1, #0x1                ; =1
100009f94: 94000045    	bl	0x10000a0a8 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__allocation_guard[abi:ne180100]<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, unsigned long)>
100009f98: f94013e0    	ldr	x0, [sp, #0x20]
100009f9c: 94000061    	bl	0x10000a120 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__get[abi:ne180100]() const>
100009fa0: f94017e1    	ldr	x1, [sp, #0x28]
100009fa4: f9401be2    	ldr	x2, [sp, #0x30]
100009fa8: 9400004d    	bl	0x10000a0dc <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__construct_at[abi:ne180100]<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*>(std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&)>
100009fac: 14000001    	b	0x100009fb0 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__create_node[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&>(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x60>
100009fb0: f85d83a8    	ldur	x8, [x29, #-0x28]
100009fb4: f9000fe8    	str	x8, [sp, #0x18]
100009fb8: d10103a0    	sub	x0, x29, #0x40
100009fbc: 94000059    	bl	0x10000a120 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__get[abi:ne180100]() const>
100009fc0: 97fff7aa    	bl	0x100007e68 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__get_value[abi:ne180100]()>
100009fc4: aa0003e1    	mov	x1, x0
100009fc8: f9400fe0    	ldr	x0, [sp, #0x18]
100009fcc: f85e03a2    	ldur	x2, [x29, #-0x20]
100009fd0: 940003a2    	bl	0x10000ae58 <_strlen+0x10000ae58>
100009fd4: 14000001    	b	0x100009fd8 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__create_node[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&>(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0x88>
100009fd8: d10103a0    	sub	x0, x29, #0x40
100009fdc: f90007e0    	str	x0, [sp, #0x8]
100009fe0: 94000063    	bl	0x10000a16c <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__release_ptr[abi:ne180100]()>
100009fe4: aa0003e1    	mov	x1, x0
100009fe8: f94007e0    	ldr	x0, [sp, #0x8]
100009fec: f9000be1    	str	x1, [sp, #0x10]
100009ff0: 94000068    	bl	0x10000a190 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::~__allocation_guard[abi:ne180100]()>
100009ff4: f9400be0    	ldr	x0, [sp, #0x10]
100009ff8: a9497bfd    	ldp	x29, x30, [sp, #0x90]
100009ffc: 910283ff    	add	sp, sp, #0xa0
10000a000: d65f03c0    	ret
10000a004: f90023e0    	str	x0, [sp, #0x40]
10000a008: aa0103e8    	mov	x8, x1
10000a00c: b9003fe8    	str	w8, [sp, #0x3c]
10000a010: d10103a0    	sub	x0, x29, #0x40
10000a014: 9400005f    	bl	0x10000a190 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::~__allocation_guard[abi:ne180100]()>
10000a018: 14000001    	b	0x10000a01c <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__create_node[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&>(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)+0xcc>
10000a01c: f94023e0    	ldr	x0, [sp, #0x40]
10000a020: 94000328    	bl	0x10000acc0 <_strlen+0x10000acc0>

000000010000a024 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__as_link[abi:ne180100]()>:
10000a024: d10083ff    	sub	sp, sp, #0x20
10000a028: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a02c: 910043fd    	add	x29, sp, #0x10
10000a030: f90007e0    	str	x0, [sp, #0x8]
10000a034: f94007e0    	ldr	x0, [sp, #0x8]
10000a038: 97fff75c    	bl	0x100007da8 <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__self[abi:ne180100]()>
10000a03c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a040: 910083ff    	add	sp, sp, #0x20
10000a044: d65f03c0    	ret

000000010000a048 <std::__1::list<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__link_nodes_at_back(std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a048: d100c3ff    	sub	sp, sp, #0x30
10000a04c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a050: 910083fd    	add	x29, sp, #0x20
10000a054: f81f83a0    	stur	x0, [x29, #-0x8]
10000a058: f9000be1    	str	x1, [sp, #0x10]
10000a05c: f90007e2    	str	x2, [sp, #0x8]
10000a060: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a064: f90003e0    	str	x0, [sp]
10000a068: 97fff6e8    	bl	0x100007c08 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const>
10000a06c: f94003e9    	ldr	x9, [sp]
10000a070: f94007e8    	ldr	x8, [sp, #0x8]
10000a074: f9000500    	str	x0, [x8, #0x8]
10000a078: f9400128    	ldr	x8, [x9]
10000a07c: f9400bea    	ldr	x10, [sp, #0x10]
10000a080: f9000148    	str	x8, [x10]
10000a084: f9400be8    	ldr	x8, [sp, #0x10]
10000a088: f9400bea    	ldr	x10, [sp, #0x10]
10000a08c: f940014a    	ldr	x10, [x10]
10000a090: f9000548    	str	x8, [x10, #0x8]
10000a094: f94007e8    	ldr	x8, [sp, #0x8]
10000a098: f9000128    	str	x8, [x9]
10000a09c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a0a0: 9100c3ff    	add	sp, sp, #0x30
10000a0a4: d65f03c0    	ret

000000010000a0a8 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__allocation_guard[abi:ne180100]<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, unsigned long)>:
10000a0a8: d100c3ff    	sub	sp, sp, #0x30
10000a0ac: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a0b0: 910083fd    	add	x29, sp, #0x20
10000a0b4: f9000be0    	str	x0, [sp, #0x10]
10000a0b8: f90007e1    	str	x1, [sp, #0x8]
10000a0bc: f9400be0    	ldr	x0, [sp, #0x10]
10000a0c0: f90003e0    	str	x0, [sp]
10000a0c4: f94007e1    	ldr	x1, [sp, #0x8]
10000a0c8: 9400003d    	bl	0x10000a1bc <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__allocation_guard[abi:ne180100]<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, unsigned long)>
10000a0cc: f94003e0    	ldr	x0, [sp]
10000a0d0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a0d4: 9100c3ff    	add	sp, sp, #0x30
10000a0d8: d65f03c0    	ret

000000010000a0dc <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>* std::__1::__construct_at[abi:ne180100]<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*>(std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*&)>:
10000a0dc: d100c3ff    	sub	sp, sp, #0x30
10000a0e0: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a0e4: 910083fd    	add	x29, sp, #0x20
10000a0e8: f81f83a0    	stur	x0, [x29, #-0x8]
10000a0ec: f9000be1    	str	x1, [sp, #0x10]
10000a0f0: f90007e2    	str		x2, [sp, #0x8]
10000a0f4: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a0f8: f90003e0    	str	x0, [sp]
10000a0fc: f9400be8    	ldr	x8, [sp, #0x10]
10000a100: f9400101    	ldr	x1, [x8]
10000a104: f94007e8    	ldr	x8, [sp, #0x8]
10000a108: f9400102    	ldr	x2, [x8]
10000a10c: 9400006e    	bl	0x10000a2c4 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a110: f94003e0    	ldr	x0, [sp]
10000a114: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a118: 9100c3ff    	add	sp, sp, #0x30
10000a11c: d65f03c0    	ret

000000010000a120 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__get[abi:ne180100]() const>:
10000a120: d10043ff    	sub	sp, sp, #0x10
10000a124: f90007e0    	str	x0, [sp, #0x8]
10000a128: f94007e8    	ldr	x8, [sp, #0x8]
10000a12c: f9400900    	ldr	x0, [x8, #0x10]
10000a130: 910043ff    	add	sp, sp, #0x10
10000a134: d65f03c0    	ret

000000010000a138 <void std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::construct[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, void>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
10000a138: d100c3ff    	sub	sp, sp, #0x30
10000a13c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a140: 910083fd    	add	x29, sp, #0x20
10000a144: f81f83a0    	stur	x0, [x29, #-0x8]
10000a148: f9000be1    	str	x1, [sp, #0x10]
10000a14c: f90007e2    	str	x2, [sp, #0x8]
10000a150: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a154: f9400be1    	ldr	x1, [sp, #0x10]
10000a158: f94007e2    	ldr	x2, [sp, #0x8]
10000a15c: 9400036f    	bl	0x10000af18 <_strlen+0x10000af18>
10000a160: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a164: 9100c3ff    	add	sp, sp, #0x30
10000a168: d65f03c0    	ret

000000010000a16c <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__release_ptr[abi:ne180100]()>:
10000a16c: d10043ff    	sub	sp, sp, #0x10
10000a170: f90007e0    	str	x0, [sp, #0x8]
10000a174: f94007e8    	ldr	x8, [sp, #0x8]
10000a178: f9400909    	ldr	x9, [x8, #0x10]
10000a17c: f90003e9    	str	x9, [sp]
10000a180: f900091f    	str	xzr, [x8, #0x10]
10000a184: f94003e0    	ldr	x0, [sp]
10000a188: 910043ff    	add	sp, sp, #0x10
10000a18c: d65f03c0    	ret

000000010000a190 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::~__allocation_guard[abi:ne180100]()>:
10000a190: d10083ff    	sub	sp, sp, #0x20
10000a194: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a198: 910043fd    	add	x29, sp, #0x10
10000a19c: f90007e0    	str	x0, [sp, #0x8]
10000a1a0: f94007e0    	ldr	x0, [sp, #0x8]
10000a1a4: f90003e0    	str	x0, [sp]
10000a1a8: 9400007c    	bl	0x10000a398 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::~__allocation_guard[abi:ne180100]()>
10000a1ac: f94003e0    	ldr	x0, [sp]
10000a1b0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a1b4: 910083ff    	add	sp, sp, #0x20
10000a1b8: d65f03c0    	ret

000000010000a1bc <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__allocation_guard[abi:ne180100]<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, unsigned long)>:
10000a1bc: d100c3ff    	sub	sp, sp, #0x30
10000a1c0: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a1c4: 910083fd    	add	x29, sp, #0x20
10000a1c8: f9000be0    	str	x0, [sp, #0x10]
10000a1cc: f90007e1    	str	x1, [sp, #0x8]
10000a1d0: f9400be0    	ldr	x0, [sp, #0x10]
10000a1d4: f90003e0    	str	x0, [sp]
10000a1d8: f94007e8    	ldr	x8, [sp, #0x8]
10000a1dc: f9000408    	str	x8, [x0, #0x8]
10000a1e0: f9400401    	ldr	x1, [x0, #0x8]
10000a1e4: 94000007    	bl	0x10000a200 <std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::allocate[abi:ne180100](std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, unsigned long)>
10000a1e8: aa0003e8    	mov	x8, x0
10000a1ec: f94003e0    	ldr	x0, [sp]
10000a1f0: f9000808    	str	x8, [x0, #0x10]
10000a1f4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a1f8: 9100c3ff    	add	sp, sp, #0x30
10000a1fc: d65f03c0    	ret

000000010000a200 <std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::allocate[abi:ne180100](std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, unsigned long)>:
10000a200: d10083ff    	sub	sp, sp, #0x20
10000a204: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a208: 910043fd    	add	x29, sp, #0x10
10000a20c: f90007e0    	str	x0, [sp, #0x8]
10000a210: f90003e1    	str	x1, [sp]
10000a214: f94007e0    	ldr	x0, [sp, #0x8]
10000a218: f94003e1    	ldr	x1, [sp]
10000a21c: 94000004    	bl	0x10000a22c <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocate[abi:ne180100](unsigned long)>
10000a220: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a224: 910083ff    	add	sp, sp, #0x20
10000a228: d65f03c0    	ret

000000010000a22c <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocate[abi:ne180100](unsigned long)>:
10000a22c: d100c3ff    	sub	sp, sp, #0x30
10000a230: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a234: 910083fd    	add	x29, sp, #0x20
10000a238: f81f83a0    	stur	x0, [x29, #-0x8]
10000a23c: f9000be1    	str	x1, [sp, #0x10]
10000a240: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a244: f9400be8    	ldr	x8, [sp, #0x10]
10000a248: f90007e8    	str	x8, [sp, #0x8]
10000a24c: 94000300    	bl	0x10000ae4c <_strlen+0x10000ae4c>
10000a250: f94007e8    	ldr	x8, [sp, #0x8]
10000a254: eb000108    	subs	x8, x8, x0
10000a258: 1a9f87e8    	cset	w8, ls
10000a25c: 37000068    	tbnz	w8, #0x0, 0x10000a268 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocate[abi:ne180100](unsigned long)+0x3c>
10000a260: 14000001    	b	0x10000a264 <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::allocate[abi:ne180100](unsigned long)+0x38>
10000a264: 97fffebf    	bl	0x100009d60 <std::__throw_bad_array_new_length[abi:ne180100]()>
10000a268: f9400be8    	ldr	x8, [sp, #0x10]
10000a26c: d2800509    	mov	x9, #0x28               ; =40
10000a270: 9b097d00    	mul	x0, x8, x9
10000a274: d2800101    	mov	x1, #0x8                ; =8
10000a278: 97fffec7    	bl	0x100009d94 <std::__1::__libcpp_allocate[abi:ne180100](unsigned long, unsigned long)>
10000a27c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a280: 9100c3ff    	add	sp, sp, #0x30
10000a284: d65f03c0    	ret

000000010000a288 <unsigned long std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::max_size[abi:ne180100]<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>, void>(std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>> const&)>:
10000a288: d10083ff    	sub	sp, sp, #0x20
10000a28c: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a290: 910043fd    	add	x29, sp, #0x10
10000a294: f90007e0    	str	x0, [sp, #0x8]
10000a298: f94007e0    	ldr	x0, [sp, #0x8]
10000a29c: 94000004    	bl	0x10000a2ac <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::max_size[abi:ne180100]() const>
10000a2a0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a2a4: 910083ff    	add	sp, sp, #0x20
10000a2a8: d65f03c0    	ret

000000010000a2ac <std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::max_size[abi:ne180100]() const>:
10000a2ac: d10043ff    	sub	sp, sp, #0x10
10000a2b0: f90007e0    	str	x0, [sp, #0x8]
10000a2b4: b203e7e0    	mov	x0, #0x6666666666666666 ; =7378697629483820646
10000a2b8: f2e0ccc0    	movk	x0, #0x666, lsl #48
10000a2bc: 910043ff    	add	sp, sp, #0x10
10000a2c0: d65f03c0    	ret

000000010000a2c4 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a2c4: d100c3ff    	sub	sp, sp, #0x30
10000a2c8: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a2cc: 910083fd    	add	x29, sp, #0x20
10000a2d0: f81f83a0    	stur	x0, [x29, #-0x8]
10000a2d4: f9000be1    	str	x1, [sp, #0x10]
10000a2d8: f90007e2    	str	x2, [sp, #0x8]
10000a2dc: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a2e0: f90003e0    	str	x0, [sp]
10000a2e4: f9400be1    	ldr	x1, [sp, #0x10]
10000a2e8: f94007e2    	ldr	x2, [sp, #0x8]
10000a2ec: 94000005    	bl	0x10000a300 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a2f0: f94003e0    	ldr	x0, [sp]
10000a2f4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a2f8: 9100c3ff    	add	sp, sp, #0x30
10000a2fc: d65f03c0    	ret

000000010000a300 <std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a300: d100c3ff    	sub	sp, sp, #0x30
10000a304: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a308: 910083fd    	add	x29, sp, #0x20
10000a30c: f81f83a0    	stur	x0, [x29, #-0x8]
10000a310: f9000be1    	str	x1, [sp, #0x10]
10000a314: f90007e2    	str	x2, [sp, #0x8]
10000a318: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a31c: f90003e0    	str	x0, [sp]
10000a320: f9400be1    	ldr	x1, [sp, #0x10]
10000a324: f94007e2    	ldr	x2, [sp, #0x8]
10000a328: 94000005    	bl	0x10000a33c <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a32c: f94003e0    	ldr	x0, [sp]
10000a330: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a334: 9100c3ff    	add	sp, sp, #0x30
10000a338: d65f03c0    	ret

000000010000a33c <std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_node_base[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a33c: d10083ff    	sub	sp, sp, #0x20
10000a340: f9000fe0    	str	x0, [sp, #0x18]
10000a344: f9000be1    	str	x1, [sp, #0x10]
10000a348: f90007e2    	str	x2, [sp, #0x8]
10000a34c: f9400fe0    	ldr	x0, [sp, #0x18]
10000a350: f9400be8    	ldr	x8, [sp, #0x10]
10000a354: f9000008    	str	x8, [x0]
10000a358: f94007e8    	ldr	x8, [sp, #0x8]
10000a35c: f9000408    	str	x8, [x0, #0x8]
10000a360: 910083ff    	add	sp, sp, #0x20
10000a364: d65f03c0    	ret

000000010000a368 <void std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>::construct[abi:ne180100]<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>*, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)>:
10000a368: d100c3ff    	sub	sp, sp, #0x30
10000a36c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a370: 910083fd    	add	x29, sp, #0x20
10000a374: f81f83a0    	stur	x0, [x29, #-0x8]
10000a378: f9000be1    	str	x1, [sp, #0x10]
10000a37c: f90007e2    	str	x2, [sp, #0x8]
10000a380: f9400be0    	ldr	x0, [sp, #0x10]
10000a384: f94007e1    	ldr	x1, [sp, #0x8]
10000a388: 94000290    	bl	0x10000adc8 <_strlen+0x10000adc8>
10000a38c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a390: 9100c3ff    	add	sp, sp, #0x30
10000a394: d65f03c0    	ret

000000010000a398 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::~__allocation_guard[abi:ne180100]()>:
10000a398: d10083ff    	sub	sp, sp, #0x20
10000a39c: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a3a0: 910043fd    	add	x29, sp, #0x10
10000a3a4: f90007e0    	str	x0, [sp, #0x8]
10000a3a8: f94007e0    	ldr	x0, [sp, #0x8]
10000a3ac: f90003e0    	str	x0, [sp]
10000a3b0: 94000005    	bl	0x10000a3c4 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__destroy[abi:ne180100]()>
10000a3b4: f94003e0    	ldr	x0, [sp]
10000a3b8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a3bc: 910083ff    	add	sp, sp, #0x20
10000a3c0: d65f03c0    	ret

000000010000a3c4 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__destroy[abi:ne180100]()>:
10000a3c4: d10083ff    	sub	sp, sp, #0x20
10000a3c8: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a3cc: 910043fd    	add	x29, sp, #0x10
10000a3d0: f90007e0    	str	x0, [sp, #0x8]
10000a3d4: f94007e8    	ldr	x8, [sp, #0x8]
10000a3d8: f90003e8    	str	x8, [sp]
10000a3dc: f9400908    	ldr	x8, [x8, #0x10]
10000a3e0: f1000108    	subs	x8, x8, #0x0
10000a3e4: 1a9f17e8    	cset	w8, eq
10000a3e8: 370000e8    	tbnz	w8, #0x0, 0x10000a404 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__destroy[abi:ne180100]()+0x40>
10000a3ec: 14000001    	b	0x10000a3f0 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__destroy[abi:ne180100]()+0x2c>
10000a3f0: f94003e0    	ldr	x0, [sp]
10000a3f4: f9400801    	ldr	x1, [x0, #0x10]
10000a3f8: f9400402    	ldr	x2, [x0, #0x8]
10000a3fc: 97fff6aa    	bl	0x100007ea4 <std::__1::allocator_traits<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::deallocate[abi:ne180100](std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>&, std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*, unsigned long)>
10000a400: 14000001    	b	0x10000a404 <std::__1::__allocation_guard<std::__1::allocator<std::__1::__list_node<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>>>::__destroy[abi:ne180100]()+0x40>
10000a404: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a408: 910083ff    	add	sp, sp, #0x20
10000a40c: d65f03c0    	ret

000000010000a410 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)>:
10000a410: d10103ff    	sub	sp, sp, #0x40
10000a414: a9037bfd    	stp	x29, x30, [sp, #0x30]
10000a418: 9100c3fd    	add	x29, sp, #0x30
10000a41c: f81f83a0    	stur	x0, [x29, #-0x8]
10000a420: f81f03a1    	stur	x1, [x29, #-0x10]
10000a424: 381ef3a2    	sturb	w2, [x29, #-0x11]
10000a428: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a42c: f90003e0    	str	x0, [sp]
10000a430: 97fff226    	bl	0x100006cc8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::basic_string[abi:ne180100]()>
10000a434: f94003e0    	ldr	x0, [sp]
10000a438: f85f03a1    	ldur	x1, [x29, #-0x10]
10000a43c: 940002a5    	bl	0x10000aed0 <_strlen+0x10000aed0>
10000a440: 14000001    	b	0x10000a444 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)+0x34>
10000a444: f94003e0    	ldr	x0, [sp]
10000a448: a9437bfd    	ldp	x29, x30, [sp, #0x30]
10000a44c: 910103ff    	add	sp, sp, #0x40
10000a450: d65f03c0    	ret
10000a454: aa0003e8    	mov	x8, x0
10000a458: f94003e0    	ldr	x0, [sp]
10000a45c: f9000be8    	str	x8, [sp, #0x10]
10000a460: aa0103e8    	mov	x8, x1
10000a464: b9000fe8    	str	w8, [sp, #0xc]
10000a468: 9400025e    	bl	0x10000ade0 <_strlen+0x10000ade0>
10000a46c: 14000001    	b	0x10000a470 <std::__1::__fs::filesystem::path::path[abi:ne180100]<char [7], void>(char const (&) [7], std::__1::__fs::filesystem::path::format)+0x60>
10000a470: f9400be0    	ldr	x0, [sp, #0x10]
10000a474: 94000213    	bl	0x10000acc0 <_strlen+0x10000acc0>

000000010000a478 <void std::__1::__fs::filesystem::_PathCVT<char>::__append_source[abi:ne180100]<char [7]>(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>&, char const (&) [7])>:
10000a478: d100c3ff    	sub	sp, sp, #0x30
10000a47c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a480: 910083fd    	add	x29, sp, #0x20
10000a484: f81f83a0    	stur	x0, [x29, #-0x8]
10000a488: f9000be1    	str	x1, [sp, #0x10]
10000a48c: f85f83a8    	ldur	x8, [x29, #-0x8]
10000a490: f90007e8    	str	x8, [sp, #0x8]
10000a494: f9400be0    	ldr	x0, [sp, #0x10]
10000a498: 94000288    	bl	0x10000aeb8 <_strlen+0x10000aeb8>
10000a49c: f90003e0    	str	x0, [sp]
10000a4a0: f9400be0    	ldr	x0, [sp, #0x10]
10000a4a4: 94000282    	bl	0x10000aeac <_strlen+0x10000aeac>
10000a4a8: f94003e1    	ldr	x1, [sp]
10000a4ac: aa0003e2    	mov	x2, x0
10000a4b0: f94007e0    	ldr	x0, [sp, #0x8]
10000a4b4: 94000284    	bl	0x10000aec4 <_strlen+0x10000aec4>
10000a4b8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a4bc: 9100c3ff    	add	sp, sp, #0x30
10000a4c0: d65f03c0    	ret

000000010000a4c4 <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_begin[abi:ne180100](char const*)>:
10000a4c4: d10043ff    	sub	sp, sp, #0x10
10000a4c8: f90007e0    	str	x0, [sp, #0x8]
10000a4cc: f94007e0    	ldr	x0, [sp, #0x8]
10000a4d0: 910043ff    	add	sp, sp, #0x10
10000a4d4: d65f03c0    	ret

000000010000a4d8 <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)>:
10000a4d8: d10083ff    	sub	sp, sp, #0x20
10000a4dc: f9000fe0    	str	x0, [sp, #0x18]
10000a4e0: 39005fff    	strb	wzr, [sp, #0x17]
10000a4e4: f9400fe8    	ldr	x8, [sp, #0x18]
10000a4e8: f90007e8    	str	x8, [sp, #0x8]
10000a4ec: 14000001    	b	0x10000a4f0 <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)+0x18>
10000a4f0: f94007e8    	ldr	x8, [sp, #0x8]
10000a4f4: 39c00108    	ldrsb	w8, [x8]
10000a4f8: 71000108    	subs	w8, w8, #0x0
10000a4fc: 1a9f17e8    	cset	w8, eq
10000a500: 370000e8    	tbnz	w8, #0x0, 0x10000a51c <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)+0x44>
10000a504: 14000001    	b	0x10000a508 <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)+0x30>
10000a508: 14000001    	b	0x10000a50c <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)+0x34>
10000a50c: f94007e8    	ldr	x8, [sp, #0x8]
10000a510: 91000508    	add	x8, x8, #0x1
10000a514: f90007e8    	str	x8, [sp, #0x8]
10000a518: 17fffff6    	b	0x10000a4f0 <std::__1::__fs::filesystem::__is_pathable_char_array<char [7], char*, char, true>::__range_end[abi:ne180100](char const*)+0x18>
10000a51c: f94007e0    	ldr	x0, [sp, #0x8]
10000a520: 910083ff    	add	sp, sp, #0x20
10000a524: d65f03c0    	ret

000000010000a528 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::begin[abi:ne180100]()>:
10000a528: d10083ff    	sub	sp, sp, #0x20
10000a52c: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a530: 910043fd    	add	x29, sp, #0x10
10000a534: f90003e0    	str	x0, [sp]
10000a538: f94003e8    	ldr	x8, [sp]
10000a53c: f9400501    	ldr	x1, [x8, #0x8]
10000a540: 910023e0    	add	x0, sp, #0x8
10000a544: 94000005    	bl	0x10000a558 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_iterator[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a548: f94007e0    	ldr	x0, [sp, #0x8]
10000a54c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a550: 910083ff    	add	sp, sp, #0x20
10000a554: d65f03c0    	ret

000000010000a558 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_iterator[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a558: d100c3ff    	sub	sp, sp, #0x30
10000a55c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a560: 910083fd    	add	x29, sp, #0x20
10000a564: f81f83a0    	stur	x0, [x29, #-0x8]
10000a568: f9000be1    	str	x1, [sp, #0x10]
10000a56c: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a570: f90007e0    	str	x0, [sp, #0x8]
10000a574: f9400be1    	ldr	x1, [sp, #0x10]
10000a578: 94000005    	bl	0x10000a58c <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_iterator[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a57c: f94007e0    	ldr	x0, [sp, #0x8]
10000a580: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a584: 9100c3ff    	add	sp, sp, #0x30
10000a588: d65f03c0    	ret

000000010000a58c <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_iterator[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>:
10000a58c: d10043ff    	sub	sp, sp, #0x10
10000a590: f90007e0    	str	x0, [sp, #0x8]
10000a594: f90003e1    	str	x1, [sp]
10000a598: f94007e0    	ldr	x0, [sp, #0x8]
10000a59c: f94003e8    	ldr	x8, [sp]
10000a5a0: f9000008    	str	x8, [x0]
10000a5a4: 910043ff    	add	sp, sp, #0x10
10000a5a8: d65f03c0    	ret

000000010000a5ac <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::end[abi:ne180100]()>:
10000a5ac: d10083ff    	sub	sp, sp, #0x20
10000a5b0: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a5b4: 910043fd    	add	x29, sp, #0x10
10000a5b8: f90003e0    	str	x0, [sp]
10000a5bc: f94003e0    	ldr	x0, [sp]
10000a5c0: 97fff592    	bl	0x100007c08 <std::__1::__list_imp<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>::__end_as_link[abi:ne180100]() const>
10000a5c4: aa0003e1    	mov	x1, x0
10000a5c8: 910023e0    	add	x0, sp, #0x8
10000a5cc: 97ffffe3    	bl	0x10000a558 <std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>::__list_iterator[abi:ne180100](std::__1::__list_node_base<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*>*)>
10000a5d0: f94007e0    	ldr	x0, [sp, #0x8]
10000a5d4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a5d8: 910083ff    	add	sp, sp, #0x20
10000a5dc: d65f03c0    	ret

000000010000a5e0 <std::__1::operator==[abi:ne180100](std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&, std::__1::__list_iterator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, void*> const&)>:
10000a5e0: d10043ff    	sub	sp, sp, #0x10
10000a5e4: f90007e0    	str	x0, [sp, #0x8]
10000a5e8: f90003e1    	str	x1, [sp]
10000a5ec: f94007e8    	ldr	x8, [sp, #0x8]
10000a5f0: f9400108    	ldr	x8, [x8]
10000a5f4: f94003e9    	ldr	x9, [sp]
10000a5f8: f9400129    	ldr	x9, [x9]
10000a5fc: eb090108    	subs	x8, x8, x9
10000a600: 1a9f17e8    	cset	w8, eq
10000a604: 12000100    	and	w0, w8, #0x1
10000a608: 910043ff    	add	sp, sp, #0x10
10000a60c: d65f03c0    	ret

000000010000a610 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)>:
10000a610: d10143ff    	sub	sp, sp, #0x50
10000a614: a9047bfd    	stp	x29, x30, [sp, #0x40]
10000a618: 910103fd    	add	x29, sp, #0x40
10000a61c: f81f03a0    	stur	x0, [x29, #-0x10]
10000a620: f81e83a1    	stur	x1, [x29, #-0x18]
10000a624: f90013e2    	str	x2, [sp, #0x20]
10000a628: f9000fe3    	str	x3, [sp, #0x18]
10000a62c: f9000be4    	str	x4, [sp, #0x10]
10000a630: f9400fe8    	ldr	x8, [sp, #0x18]
10000a634: f85e83a9    	ldur	x9, [x29, #-0x18]
10000a638: eb090108    	subs	x8, x8, x9
10000a63c: 1a9f87e8    	cset	w8, ls
10000a640: 370000a8    	tbnz	w8, #0x0, 0x10000a654 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0x44>
10000a644: 14000001    	b	0x10000a648 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0x38>
10000a648: 92800008    	mov	x8, #-0x1               ; =-1
10000a64c: f81f83a8    	stur	x8, [x29, #-0x8]
10000a650: 14000025    	b	0x10000a6e4 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xd4>
10000a654: f9400be8    	ldr	x8, [sp, #0x10]
10000a658: f1000108    	subs	x8, x8, #0x0
10000a65c: 1a9f07e8    	cset	w8, ne
10000a660: 370000a8    	tbnz	w8, #0x0, 0x10000a674 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0x64>
10000a664: 14000001    	b	0x10000a668 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0x58>
10000a668: f9400fe8    	ldr	x8, [sp, #0x18]
10000a66c: f81f83a8    	stur	x8, [x29, #-0x8]
10000a670: 1400001d    	b	0x10000a6e4 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xd4>
10000a674: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a678: f9400fe9    	ldr	x9, [sp, #0x18]
10000a67c: 8b090100    	add	x0, x8, x9
10000a680: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a684: f85e83a9    	ldur	x9, [x29, #-0x18]
10000a688: 8b090101    	add	x1, x8, x9
10000a68c: f94013e2    	ldr	x2, [sp, #0x20]
10000a690: f94013e8    	ldr	x8, [sp, #0x20]
10000a694: f9400be9    	ldr	x9, [sp, #0x10]
10000a698: 8b090103    	add	x3, x8, x9
10000a69c: 94000016    	bl	0x10000a6f4 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)>
10000a6a0: f90007e0    	str	x0, [sp, #0x8]
10000a6a4: f94007e8    	ldr	x8, [sp, #0x8]
10000a6a8: f85f03a9    	ldur	x9, [x29, #-0x10]
10000a6ac: f85e83aa    	ldur	x10, [x29, #-0x18]
10000a6b0: 8b0a0129    	add	x9, x9, x10
10000a6b4: eb090108    	subs	x8, x8, x9
10000a6b8: 1a9f07e8    	cset	w8, ne
10000a6bc: 370000a8    	tbnz	w8, #0x0, 0x10000a6d0 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xc0>
10000a6c0: 14000001    	b	0x10000a6c4 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xb4>
10000a6c4: 92800008    	mov	x8, #-0x1               ; =-1
10000a6c8: f81f83a8    	stur	x8, [x29, #-0x8]
10000a6cc: 14000006    	b	0x10000a6e4 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xd4>
10000a6d0: f94007e8    	ldr	x8, [sp, #0x8]
10000a6d4: f85f03a9    	ldur	x9, [x29, #-0x10]
10000a6d8: eb090108    	subs	x8, x8, x9
10000a6dc: f81f83a8    	stur	x8, [x29, #-0x8]
10000a6e0: 14000001    	b	0x10000a6e4 <unsigned long std::__1::__str_find[abi:ne180100]<char, unsigned long, std::__1::char_traits<char>, 18446744073709551615ul>(char const*, unsigned long, char const*, unsigned long, unsigned long)+0xd4>
10000a6e4: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a6e8: a9447bfd    	ldp	x29, x30, [sp, #0x40]
10000a6ec: 910143ff    	add	sp, sp, #0x50
10000a6f0: d65f03c0    	ret

000000010000a6f4 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)>:
10000a6f4: d10143ff    	sub	sp, sp, #0x50
10000a6f8: a9047bfd    	stp	x29, x30, [sp, #0x40]
10000a6fc: 910103fd    	add	x29, sp, #0x40
10000a700: f81f03a0    	stur	x0, [x29, #-0x10]
10000a704: f81e83a1    	stur	x1, [x29, #-0x18]
10000a708: f90013e2    	str	x2, [sp, #0x20]
10000a70c: f9000fe3    	str	x3, [sp, #0x18]
10000a710: f9400fe8    	ldr	x8, [sp, #0x18]
10000a714: f94013e9    	ldr	x9, [sp, #0x20]
10000a718: eb090108    	subs	x8, x8, x9
10000a71c: f9000be8    	str	x8, [sp, #0x10]
10000a720: f9400be8    	ldr	x8, [sp, #0x10]
10000a724: f1000108    	subs	x8, x8, #0x0
10000a728: 1a9f07e8    	cset	w8, ne
10000a72c: 370000a8    	tbnz	w8, #0x0, 0x10000a740 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x4c>
10000a730: 14000001    	b	0x10000a734 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x40>
10000a734: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a738: f81f83a8    	stur	x8, [x29, #-0x8]
10000a73c: 1400003f    	b	0x10000a838 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x144>
10000a740: f85e83a8    	ldur	x8, [x29, #-0x18]
10000a744: f85f03a9    	ldur	x9, [x29, #-0x10]
10000a748: eb090108    	subs	x8, x8, x9
10000a74c: f90007e8    	str	x8, [sp, #0x8]
10000a750: f94007e8    	ldr	x8, [sp, #0x8]
10000a754: f9400be9    	ldr	x9, [sp, #0x10]
10000a758: eb090108    	subs	x8, x8, x9
10000a75c: 1a9fb7e8    	cset	w8, ge
10000a760: 370000a8    	tbnz	w8, #0x0, 0x10000a774 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x80>
10000a764: 14000001    	b	0x10000a768 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x74>
10000a768: f85e83a8    	ldur	x8, [x29, #-0x18]
10000a76c: f81f83a8    	stur	x8, [x29, #-0x8]
10000a770: 14000032    	b	0x10000a838 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x144>
10000a774: f94013e8    	ldr	x8, [sp, #0x20]
10000a778: 39400108    	ldrb	w8, [x8]
10000a77c: 39001fe8    	strb	w8, [sp, #0x7]
10000a780: 14000001    	b	0x10000a784 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x90>
10000a784: 14000001    	b	0x10000a788 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x94>
10000a788: f85e83a8    	ldur	x8, [x29, #-0x18]
10000a78c: f85f03a9    	ldur	x9, [x29, #-0x10]
10000a790: eb090108    	subs	x8, x8, x9
10000a794: f90007e8    	str	x8, [sp, #0x8]
10000a798: f94007e8    	ldr	x8, [sp, #0x8]
10000a79c: f9400be9    	ldr	x9, [sp, #0x10]
10000a7a0: eb090108    	subs	x8, x8, x9
10000a7a4: 1a9fb7e8    	cset	w8, ge
10000a7a8: 370000a8    	tbnz	w8, #0x0, 0x10000a7bc <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0xc8>
10000a7ac: 14000001    	b	0x10000a7b0 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0xbc>
10000a7b0: f85e83a8    	ldur	x8, [x29, #-0x18]
10000a7b4: f81f83a8    	stur	x8, [x29, #-0x8]
10000a7b8: 14000020    	b	0x10000a838 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x144>
10000a7bc: f85f03a0    	ldur	x0, [x29, #-0x10]
10000a7c0: f94007e8    	ldr	x8, [sp, #0x8]
10000a7c4: f9400be9    	ldr	x9, [sp, #0x10]
10000a7c8: eb090108    	subs	x8, x8, x9
10000a7cc: 91000501    	add	x1, x8, #0x1
10000a7d0: 91001fe2    	add	x2, sp, #0x7
10000a7d4: 9400001d    	bl	0x10000a848 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)>
10000a7d8: f81f03a0    	stur	x0, [x29, #-0x10]
10000a7dc: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a7e0: f1000108    	subs	x8, x8, #0x0
10000a7e4: 1a9f07e8    	cset	w8, ne
10000a7e8: 370000a8    	tbnz	w8, #0x0, 0x10000a7fc <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x108>
10000a7ec: 14000001    	b	0x10000a7f0 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0xfc>
10000a7f0: f85e83a8    	ldur	x8, [x29, #-0x18]
10000a7f4: f81f83a8    	stur	x8, [x29, #-0x8]
10000a7f8: 14000010    	b	0x10000a838 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x144>
10000a7fc: f85f03a0    	ldur	x0, [x29, #-0x10]
10000a800: f94013e1    	ldr	x1, [sp, #0x20]
10000a804: f9400be2    	ldr	x2, [sp, #0x10]
10000a808: 9400002c    	bl	0x10000a8b8 <std::__1::char_traits<char>::compare[abi:ne180100](char const*, char const*, unsigned long)>
10000a80c: 71000008    	subs	w8, w0, #0x0
10000a810: 1a9f07e8    	cset	w8, ne
10000a814: 370000a8    	tbnz	w8, #0x0, 0x10000a828 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x134>
10000a818: 14000001    	b	0x10000a81c <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x128>
10000a81c: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a820: f81f83a8    	stur	x8, [x29, #-0x8]
10000a824: 14000005    	b	0x10000a838 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x144>
10000a828: f85f03a8    	ldur	x8, [x29, #-0x10]
10000a82c: 91000508    	add	x8, x8, #0x1
10000a830: f81f03a8    	stur	x8, [x29, #-0x10]
10000a834: 17ffffd4    	b	0x10000a784 <char const* std::__1::__search_substring[abi:ne180100]<char, std::__1::char_traits<char>>(char const*, char const*, char const*, char const*)+0x90>
10000a838: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a83c: a9447bfd    	ldp	x29, x30, [sp, #0x40]
10000a840: 910143ff    	add	sp, sp, #0x50
10000a844: d65f03c0    	ret

000000010000a848 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)>:
10000a848: d10103ff    	sub	sp, sp, #0x40
10000a84c: a9037bfd    	stp	x29, x30, [sp, #0x30]
10000a850: 9100c3fd    	add	x29, sp, #0x30
10000a854: f81f03a0    	stur	x0, [x29, #-0x10]
10000a858: f9000fe1    	str	x1, [sp, #0x18]
10000a85c: f9000be2    	str	x2, [sp, #0x10]
10000a860: f9400fe8    	ldr	x8, [sp, #0x18]
10000a864: f1000108    	subs	x8, x8, #0x0
10000a868: 1a9f07e8    	cset	w8, ne
10000a86c: 37000088    	tbnz	w8, #0x0, 0x10000a87c <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)+0x34>
10000a870: 14000001    	b	0x10000a874 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)+0x2c>
10000a874: f81f83bf    	stur	xzr, [x29, #-0x8]
10000a878: 1400000b    	b	0x10000a8a4 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)+0x5c>
10000a87c: f85f03a0    	ldur	x0, [x29, #-0x10]
10000a880: f9400be8    	ldr	x8, [sp, #0x10]
10000a884: 39c00101    	ldrsb	w1, [x8]
10000a888: f9400fe2    	ldr	x2, [sp, #0x18]
10000a88c: 94000018    	bl	0x10000a8ec <char const* std::__1::__constexpr_memchr[abi:ne180100]<char const, char>(char const*, char, unsigned long)>
10000a890: f90007e0    	str	x0, [sp, #0x8]
10000a894: 14000001    	b	0x10000a898 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)+0x50>
10000a898: f94007e8    	ldr	x8, [sp, #0x8]
10000a89c: f81f83a8    	stur	x8, [x29, #-0x8]
10000a8a0: 14000001    	b	0x10000a8a4 <std::__1::char_traits<char>::find[abi:ne180100](char const*, unsigned long, char const&)+0x5c>
10000a8a4: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a8a8: a9437bfd    	ldp	x29, x30, [sp, #0x30]
10000a8ac: 910103ff    	add	sp, sp, #0x40
10000a8b0: d65f03c0    	ret
10000a8b4: 97ffdfb5    	bl	0x100002788 <___clang_call_terminate>

000000010000a8b8 <std::__1::char_traits<char>::compare[abi:ne180100](char const*, char const*, unsigned long)>:
10000a8b8: d100c3ff    	sub	sp, sp, #0x30
10000a8bc: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a8c0: 910083fd    	add	x29, sp, #0x20
10000a8c4: f81f83a0    	stur	x0, [x29, #-0x8]
10000a8c8: f9000be1    	str	x1, [sp, #0x10]
10000a8cc: f90007e2    	str	x2, [sp, #0x8]
10000a8d0: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a8d4: f9400be1    	ldr	x1, [sp, #0x10]
10000a8d8: f94007e2    	ldr	x2, [sp, #0x8]
10000a8dc: 940001bf    	bl	0x10000afd8 <_strlen+0x10000afd8>
10000a8e0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a8e4: 9100c3ff    	add	sp, sp, #0x30
10000a8e8: d65f03c0    	ret

000000010000a8ec <char const* std::__1::__constexpr_memchr[abi:ne180100]<char const, char>(char const*, char, unsigned long)>:
10000a8ec: d100c3ff    	sub	sp, sp, #0x30
10000a8f0: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a8f4: 910083fd    	add	x29, sp, #0x20
10000a8f8: f81f83a0    	stur	x0, [x29, #-0x8]
10000a8fc: 381f73a1    	sturb	w1, [x29, #-0x9]
10000a900: f90007e2    	str	x2, [sp, #0x8]
10000a904: 39001fff    	strb	wzr, [sp, #0x7]
10000a908: 385f73a8    	ldurb	w8, [x29, #-0x9]
10000a90c: 39001fe8    	strb	w8, [sp, #0x7]
10000a910: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a914: 39c01fe1    	ldrsb	w1, [sp, #0x7]
10000a918: f94007e2    	ldr	x2, [sp, #0x8]
10000a91c: 940001ac    	bl	0x10000afcc <_strlen+0x10000afcc>
10000a920: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000a924: 9100c3ff    	add	sp, sp, #0x30
10000a928: d65f03c0    	ret

000000010000a92c <std::__1::allocator<char>::allocator[abi:ne180100]()>:
10000a92c: d10083ff    	sub	sp, sp, #0x20
10000a930: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a934: 910043fd    	add	x29, sp, #0x10
10000a938: f90007e0    	str	x0, [sp, #0x8]
10000a93c: f94007e0    	ldr	x0, [sp, #0x8]
10000a940: f90003e0    	str	x0, [sp]
10000a944: 97fff374    	bl	0x100007714 <std::__1::allocator<char>::allocator[abi:ne180100]()>
10000a948: f94003e0    	ldr	x0, [sp]
10000a94c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a950: 910083ff    	add	sp, sp, #0x20
10000a954: d65f03c0    	ret

000000010000a958 <std::__1::basic_ios<char, std::__1::char_traits<char>>::fail[abi:ne180100]() const>:
10000a958: d10083ff    	sub	sp, sp, #0x20
10000a95c: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000a960: 910043fd    	add	x29, sp, #0x10
10000a964: f90007e0    	str	x0, [sp, #0x8]
10000a968: f94007e0    	ldr	x0, [sp, #0x8]
10000a96c: 94000005    	bl	0x10000a980 <std::__1::ios_base::fail[abi:ne180100]() const>
10000a970: 12000000    	and	w0, w0, #0x1
10000a974: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000a978: 910083ff    	add	sp, sp, #0x20
10000a97c: d65f03c0    	ret

000000010000a980 <std::__1::ios_base::fail[abi:ne180100]() const>:
10000a980: d10043ff    	sub	sp, sp, #0x10
10000a984: f90007e0    	str	x0, [sp, #0x8]
10000a988: f94007e8    	ldr	x8, [sp, #0x8]
10000a98c: b9402108    	ldr	w8, [x8, #0x20]
10000a990: 528000a9    	mov	w9, #0x5                ; =5
10000a994: 6a090108    	ands	w8, w8, w9
10000a998: 1a9f07e8    	cset	w8, ne
10000a99c: 12000100    	and	w0, w8, #0x1
10000a9a0: 910043ff    	add	sp, sp, #0x10
10000a9a4: d65f03c0    	ret

000000010000a9a8 <std::__1::basic_istream<char, std::__1::char_traits<char>>::sentry::operator bool[abi:ne180100]() const>:
10000a9a8: d10043ff    	sub	sp, sp, #0x10
10000a9ac: f90007e0    	str	x0, [sp, #0x8]
10000a9b0: f94007e8    	ldr	x8, [sp, #0x8]
10000a9b4: 39400108    	ldrb	w8, [x8]
10000a9b8: 12000100    	and	w0, w8, #0x1
10000a9bc: 910043ff    	add	sp, sp, #0x10
10000a9c0: d65f03c0    	ret

000000010000a9c4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()>:
10000a9c4: d100c3ff    	sub	sp, sp, #0x30
10000a9c8: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000a9cc: 910083fd    	add	x29, sp, #0x20
10000a9d0: f81f83a0    	stur	x0, [x29, #-0x8]
10000a9d4: f85f83a0    	ldur	x0, [x29, #-0x8]
10000a9d8: f90003e0    	str	x0, [sp]
10000a9dc: 97fff3d3    	bl	0x100007928 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::size[abi:ne180100]() const>
10000a9e0: aa0003e8    	mov	x8, x0
10000a9e4: f94003e0    	ldr	x0, [sp]
10000a9e8: f9000be8    	str	x8, [sp, #0x10]
10000a9ec: 97fff3c1    	bl	0x1000078f0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__is_long[abi:ne180100]() const>
10000a9f0: 36000160    	tbz	w0, #0x0, 0x10000aa1c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()+0x58>
10000a9f4: 14000001    	b	0x10000a9f8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()+0x34>
10000a9f8: f94003e0    	ldr	x0, [sp]
10000a9fc: 97fff629    	bl	0x1000082a0 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_long_pointer[abi:ne180100]()>
10000aa00: 91003fe1    	add	x1, sp, #0xf
10000aa04: 39003fff    	strb	wzr, [sp, #0xf]
10000aa08: 97fffa6a    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
10000aa0c: f94003e0    	ldr	x0, [sp]
10000aa10: d2800001    	mov	x1, #0x0                ; =0
10000aa14: 97fffae4    	bl	0x1000095a4 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_long_size[abi:ne180100](unsigned long)>
10000aa18: 1400000a    	b	0x10000aa40 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()+0x7c>
10000aa1c: f94003e0    	ldr	x0, [sp]
10000aa20: 97fff62a    	bl	0x1000082c8 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__get_short_pointer[abi:ne180100]()>
10000aa24: 91003be1    	add	x1, sp, #0xe
10000aa28: 39003bff    	strb	wzr, [sp, #0xe]
10000aa2c: 97fffa61    	bl	0x1000093b0 <std::__1::char_traits<char>::assign[abi:ne180100](char&, char const&)>
10000aa30: f94003e0    	ldr	x0, [sp]
10000aa34: d2800001    	mov	x1, #0x0                ; =0
10000aa38: 97fffae9    	bl	0x1000095dc <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__set_short_size[abi:ne180100](unsigned long)>
10000aa3c: 14000001    	b	0x10000aa40 <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::clear[abi:ne180100]()+0x7c>
10000aa40: f94003e0    	ldr	x0, [sp]
10000aa44: f9400be1    	ldr	x1, [sp, #0x10]
10000aa48: 94000085    	bl	0x10000ac5c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_shrink[abi:ne180100](unsigned long) const>
10000aa4c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000aa50: 9100c3ff    	add	sp, sp, #0x30
10000aa54: d65f03c0    	ret

000000010000aa58 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()>:
10000aa58: d100c3ff    	sub	sp, sp, #0x30
10000aa5c: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000aa60: 910083fd    	add	x29, sp, #0x20
10000aa64: f9000be0    	str	x0, [sp, #0x10]
10000aa68: f9400be9    	ldr	x9, [sp, #0x10]
10000aa6c: f90007e9    	str	x9, [sp, #0x8]
10000aa70: f9400d28    	ldr	x8, [x9, #0x18]
10000aa74: f9401129    	ldr	x9, [x9, #0x20]
10000aa78: eb090108    	subs	x8, x8, x9
10000aa7c: 1a9f07e8    	cset	w8, ne
10000aa80: 37000108    	tbnz	w8, #0x0, 0x10000aaa0 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()+0x48>
10000aa84: 14000001    	b	0x10000aa88 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()+0x30>
10000aa88: f94007e0    	ldr	x0, [sp, #0x8]
10000aa8c: f9400008    	ldr	x8, [x0]
10000aa90: f9402508    	ldr	x8, [x8, #0x48]
10000aa94: d63f0100    	blr	x8
10000aa98: b81fc3a0    	stur	w0, [x29, #-0x4]
10000aa9c: 14000007    	b	0x10000aab8 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()+0x60>
10000aaa0: f94007e8    	ldr	x8, [sp, #0x8]
10000aaa4: f9400d08    	ldr	x8, [x8, #0x18]
10000aaa8: 39c00100    	ldrsb	w0, [x8]
10000aaac: 94000071    	bl	0x10000ac70 <std::__1::char_traits<char>::to_int_type[abi:ne180100](char)>
10000aab0: b81fc3a0    	stur	w0, [x29, #-0x4]
10000aab4: 14000001    	b	0x10000aab8 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sgetc[abi:ne180100]()+0x60>
10000aab8: b85fc3a0    	ldur	w0, [x29, #-0x4]
10000aabc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000aac0: 9100c3ff    	add	sp, sp, #0x30
10000aac4: d65f03c0    	ret

000000010000aac8 <std::__1::char_traits<char>::to_char_type[abi:ne180100](int)>:
10000aac8: d10043ff    	sub	sp, sp, #0x10
10000aacc: b9000fe0    	str	w0, [sp, #0xc]
10000aad0: b9400fe8    	ldr	w8, [sp, #0xc]
10000aad4: 13001d00    	sxtb	w0, w8
10000aad8: 910043ff    	add	sp, sp, #0x10
10000aadc: d65f03c0    	ret

000000010000aae0 <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const>:
10000aae0: d100c3ff    	sub	sp, sp, #0x30
10000aae4: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000aae8: 910083fd    	add	x29, sp, #0x20
10000aaec: f81f83a0    	stur	x0, [x29, #-0x8]
10000aaf0: b81f43a1    	stur	w1, [x29, #-0xc]
10000aaf4: 381f33a2    	sturb	w2, [x29, #-0xd]
10000aaf8: f85f83a8    	ldur	x8, [x29, #-0x8]
10000aafc: f90007e8    	str	x8, [sp, #0x8]
10000ab00: 38df33a0    	ldursb	w0, [x29, #-0xd]
10000ab04: 94000072    	bl	0x10000accc <_strlen+0x10000accc>
10000ab08: 71000008    	subs	w8, w0, #0x0
10000ab0c: 1a9f17e8    	cset	w8, eq
10000ab10: 37000168    	tbnz	w8, #0x0, 0x10000ab3c <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const+0x5c>
10000ab14: 14000001    	b	0x10000ab18 <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const+0x38>
10000ab18: f94007e8    	ldr	x8, [sp, #0x8]
10000ab1c: f9400908    	ldr	x8, [x8, #0x10]
10000ab20: 389f33a9    	ldursb	x9, [x29, #-0xd]
10000ab24: b8697908    	ldr	w8, [x8, x9, lsl #2]
10000ab28: b85f43a9    	ldur	w9, [x29, #-0xc]
10000ab2c: 6a090108    	ands	w8, w8, w9
10000ab30: 1a9f07e8    	cset	w8, ne
10000ab34: b90007e8    	str	w8, [sp, #0x4]
10000ab38: 14000004    	b	0x10000ab48 <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const+0x68>
10000ab3c: 52800008    	mov	w8, #0x0                ; =0
10000ab40: b90007e8    	str	w8, [sp, #0x4]
10000ab44: 14000001    	b	0x10000ab48 <std::__1::ctype<char>::is[abi:ne180100](unsigned int, char) const+0x68>
10000ab48: b94007e8    	ldr	w8, [sp, #0x4]
10000ab4c: 12000100    	and	w0, w8, #0x1
10000ab50: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000ab54: 9100c3ff    	add	sp, sp, #0x30
10000ab58: d65f03c0    	ret

000000010000ab5c <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()>:
10000ab5c: d100c3ff    	sub	sp, sp, #0x30
10000ab60: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000ab64: 910083fd    	add	x29, sp, #0x20
10000ab68: f9000be0    	str	x0, [sp, #0x10]
10000ab6c: f9400be9    	ldr	x9, [sp, #0x10]
10000ab70: f90007e9    	str	x9, [sp, #0x8]
10000ab74: f9400d28    	ldr	x8, [x9, #0x18]
10000ab78: f9401129    	ldr	x9, [x9, #0x20]
10000ab7c: eb090108    	subs	x8, x8, x9
10000ab80: 1a9f07e8    	cset	w8, ne
10000ab84: 37000108    	tbnz	w8, #0x0, 0x10000aba4 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()+0x48>
10000ab88: 14000001    	b	0x10000ab8c <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()+0x30>
10000ab8c: f94007e0    	ldr	x0, [sp, #0x8]
10000ab90: f9400008    	ldr	x8, [x0]
10000ab94: f9402908    	ldr	x8, [x8, #0x50]
10000ab98: d63f0100    	blr	x8
10000ab9c: b81fc3a0    	stur	w0, [x29, #-0x4]
10000aba0: 14000009    	b	0x10000abc4 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()+0x68>
10000aba4: f94007ea    	ldr	x10, [sp, #0x8]
10000aba8: f9400d48    	ldr	x8, [x10, #0x18]
10000abac: 91000509    	add	x9, x8, #0x1
10000abb0: f9000d49    	str	x9, [x10, #0x18]
10000abb4: 39c00100    	ldrsb	w0, [x8]
10000abb8: 9400002e    	bl	0x10000ac70 <std::__1::char_traits<char>::to_int_type[abi:ne180100](char)>
10000abbc: b81fc3a0    	stur	w0, [x29, #-0x4]
10000abc0: 14000001    	b	0x10000abc4 <std::__1::basic_streambuf<char, std::__1::char_traits<char>>::sbumpc[abi:ne180100]()+0x68>
10000abc4: b85fc3a0    	ldur	w0, [x29, #-0x4]
10000abc8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000abcc: 9100c3ff    	add	sp, sp, #0x30
10000abd0: d65f03c0    	ret

000000010000abd4 <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)>:
10000abd4: d10083ff    	sub	sp, sp, #0x20
10000abd8: f9000fe0    	str	x0, [sp, #0x18]
10000abdc: b90017e1    	str	w1, [sp, #0x14]
10000abe0: f9400fe8    	ldr	x8, [sp, #0x18]
10000abe4: f90007e8    	str	x8, [sp, #0x8]
10000abe8: f9401508    	ldr	x8, [x8, #0x28]
10000abec: f1000108    	subs	x8, x8, #0x0
10000abf0: 1a9f17e8    	cset	w8, eq
10000abf4: 37000108    	tbnz	w8, #0x0, 0x10000ac14 <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)+0x40>
10000abf8: 14000001    	b	0x10000abfc <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)+0x28>
10000abfc: f94007e9    	ldr	x9, [sp, #0x8]
10000ac00: b94017ea    	ldr	w10, [sp, #0x14]
10000ac04: b9402128    	ldr	w8, [x9, #0x20]
10000ac08: 2a0a0108    	orr	w8, w8, w10
10000ac0c: b9002128    	str	w8, [x9, #0x20]
10000ac10: 14000008    	b	0x10000ac30 <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)+0x5c>
10000ac14: f94007e9    	ldr	x9, [sp, #0x8]
10000ac18: b94017e8    	ldr	w8, [sp, #0x14]
10000ac1c: 3200010a    	orr	w10, w8, #0x1
10000ac20: b9402128    	ldr	w8, [x9, #0x20]
10000ac24: 2a0a0108    	orr	w8, w8, w10
10000ac28: b9002128    	str	w8, [x9, #0x20]
10000ac2c: 14000001    	b	0x10000ac30 <std::__1::ios_base::__setstate_nothrow[abi:ne180100](unsigned int)+0x5c>
10000ac30: 910083ff    	add	sp, sp, #0x20
10000ac34: d65f03c0    	ret

000000010000ac38 <std::__1::basic_ios<char, std::__1::char_traits<char>>::exceptions[abi:ne180100]() const>:
10000ac38: d10083ff    	sub	sp, sp, #0x20
10000ac3c: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000ac40: 910043fd    	add	x29, sp, #0x10
10000ac44: f90007e0    	str	x0, [sp, #0x8]
10000ac48: f94007e0    	ldr	x0, [sp, #0x8]
10000ac4c: 94000017    	bl	0x10000aca8 <std::__1::ios_base::exceptions[abi:ne180100]() const>
10000ac50: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000ac54: 910083ff    	add	sp, sp, #0x20
10000ac58: d65f03c0    	ret

000000010000ac5c <std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::__annotate_shrink[abi:ne180100](unsigned long) const>:
10000ac5c: d10043ff    	sub	sp, sp, #0x10
10000ac60: f90007e0    	str	x0, [sp, #0x8]
10000ac64: f90003e1    	str	x1, [sp]
10000ac68: 910043ff    	add	sp, sp, #0x10
10000ac6c: d65f03c0    	ret

000000010000ac70 <std::__1::char_traits<char>::to_int_type[abi:ne180100](char)>:
10000ac70: d10043ff    	sub	sp, sp, #0x10
10000ac74: 39003fe0    	strb	w0, [sp, #0xf]
10000ac78: 39403fe0    	ldrb	w0, [sp, #0xf]
10000ac7c: 910043ff    	add	sp, sp, #0x10
10000ac80: d65f03c0    	ret

000000010000ac84 <isascii(int)>:
10000ac84: d10043ff    	sub	sp, sp, #0x10
10000ac88: b9000fe0    	str	w0, [sp, #0xc]
10000ac8c: b9400fe8    	ldr	w8, [sp, #0xc]
10000ac90: 12800fe9    	mov	w9, #-0x80              ; =-128
10000ac94: 6a090108    	ands	w8, w8, w9
10000ac98: 1a9f17e8    	cset	w8, eq
10000ac9c: 12000100    	and	w0, w8, #0x1
10000aca0: 910043ff    	add	sp, sp, #0x10
10000aca4: d65f03c0    	ret

000000010000aca8 <std::__1::ios_base::exceptions[abi:ne180100]() const>:
10000aca8: d10043ff    	sub	sp, sp, #0x10
10000acac: f90007e0    	str	x0, [sp, #0x8]
10000acb0: f94007e8    	ldr	x8, [sp, #0x8]
10000acb4: b9402500    	ldr	w0, [x8, #0x24]
10000acb8: 910043ff    	add	sp, sp, #0x10
10000acbc: d65f03c0    	ret

Disassembly of section __TEXT,__stubs:
000000010000acc0 <__stubs>:
10000acc0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000acc4: f9400210    	ldr	x16, [x16]
10000acc8: d61f0200    	br	x16
10000accc: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000acd0: f9400610    	ldr	x16, [x16, #0x8]
10000acd4: d61f0200    	br	x16
10000acd8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000acdc: f9400e10    	ldr	x16, [x16, #0x18]
10000ace0: d61f0200    	br	x16
10000ace4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ace8: f9401210    	ldr	x16, [x16, #0x20]
10000acec: d61f0200    	br	x16
10000acf0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000acf4: f9401610    	ldr	x16, [x16, #0x28]
10000acf8: d61f0200    	br	x16
10000acfc: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad00: f9401a10    	ldr	x16, [x16, #0x30]
10000ad04: d61f0200    	br	x16
10000ad08: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad0c: f9401e10    	ldr	x16, [x16, #0x38]
10000ad10: d61f0200    	br	x16
10000ad14: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad18: f9402210    	ldr	x16, [x16, #0x40]
10000ad1c: d61f0200    	br	x16
10000ad20: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad24: f9402610    	ldr	x16, [x16, #0x48]
10000ad28: d61f0200    	br	x16
10000ad2c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad30: f9402e10    	ldr	x16, [x16, #0x58]
10000ad34: d61f0200    	br	x16
10000ad38: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad3c: f9403610    	ldr	x16, [x16, #0x68]
10000ad40: d61f0200    	br	x16
10000ad44: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad48: f9403a10    	ldr	x16, [x16, #0x70]
10000ad4c: d61f0200    	br	x16
10000ad50: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad54: f9403e10    	ldr	x16, [x16, #0x78]
10000ad58: d61f0200    	br	x16
10000ad5c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad60: f9404210    	ldr	x16, [x16, #0x80]
10000ad64: d61f0200    	br	x16
10000ad68: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad6c: f9404610    	ldr	x16, [x16, #0x88]
10000ad70: d61f0200    	br	x16
10000ad74: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad78: f9404a10    	ldr	x16, [x16, #0x90]
10000ad7c: d61f0200    	br	x16
10000ad80: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad84: f9404e10    	ldr	x16, [x16, #0x98]
10000ad88: d61f0200    	br	x16
10000ad8c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad90: f9405210    	ldr	x16, [x16, #0xa0]
10000ad94: d61f0200    	br	x16
10000ad98: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ad9c: f9405610    	ldr	x16, [x16, #0xa8]
10000ada0: d61f0200    	br	x16
10000ada4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ada8: f9405a10    	ldr	x16, [x16, #0xb0]
10000adac: d61f0200    	br	x16
10000adb0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000adb4: f9405e10    	ldr	x16, [x16, #0xb8]
10000adb8: d61f0200    	br	x16
10000adbc: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000adc0: f9406210    	ldr	x16, [x16, #0xc0]
10000adc4: d61f0200    	br	x16
10000adc8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000adcc: f9406610    	ldr	x16, [x16, #0xc8]
10000add0: d61f0200    	br	x16
10000add4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000add8: f9406a10    	ldr	x16, [x16, #0xd0]
10000addc: d61f0200    	br	x16
10000ade0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ade4: f9406e10    	ldr	x16, [x16, #0xd8]
10000ade8: d61f0200    	br	x16
10000adec: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000adf0: f9407210    	ldr	x16, [x16, #0xe0]
10000adf4: d61f0200    	br	x16
10000adf8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000adfc: f9407610    	ldr	x16, [x16, #0xe8]
10000ae00: d61f0200    	br	x16
10000ae04: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae08: f9407a10    	ldr	x16, [x16, #0xf0]
10000ae0c: d61f0200    	br	x16
10000ae10: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae14: f9407e10    	ldr	x16, [x16, #0xf8]
10000ae18: d61f0200    	br	x16
10000ae1c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae20: f9408210    	ldr	x16, [x16, #0x100]
10000ae24: d61f0200    	br	x16
10000ae28: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae2c: f9408610    	ldr	x16, [x16, #0x108]
10000ae30: d61f0200    	br	x16
10000ae34: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae38: f9408a10    	ldr	x16, [x16, #0x110]
10000ae3c: d61f0200    	br	x16
10000ae40: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae44: f9408e10    	ldr	x16, [x16, #0x118]
10000ae48: d61f0200    	br	x16
10000ae4c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae50: f9409210    	ldr	x16, [x16, #0x120]
10000ae54: d61f0200    	br	x16
10000ae58: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae5c: f9409610    	ldr	x16, [x16, #0x128]
10000ae60: d61f0200    	br	x16
10000ae64: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae68: f9409a10    	ldr	x16, [x16, #0x130]
10000ae6c: d61f0200    	br	x16
10000ae70: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae74: f9409e10    	ldr	x16, [x16, #0x138]
10000ae78: d61f0200    	br	x16
10000ae7c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae80: f940a610    	ldr	x16, [x16, #0x148]
10000ae84: d61f0200    	br	x16
10000ae88: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae8c: f940aa10    	ldr	x16, [x16, #0x150]
10000ae90: d61f0200    	br	x16
10000ae94: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000ae98: f940ae10    	ldr	x16, [x16, #0x158]
10000ae9c: d61f0200    	br	x16
10000aea0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aea4: f940b210    	ldr	x16, [x16, #0x160]
10000aea8: d61f0200    	br	x16
10000aeac: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aeb0: f940b610    	ldr	x16, [x16, #0x168]
10000aeb4: d61f0200    	br	x16
10000aeb8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aebc: f940ba10    	ldr	x16, [x16, #0x170]
10000aec0: d61f0200    	br	x16
10000aec4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aec8: f940be10    	ldr	x16, [x16, #0x178]
10000aecc: d61f0200    	br	x16
10000aed0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aed4: f940c210    	ldr	x16, [x16, #0x180]
10000aed8: d61f0200    	br	x16
10000aedc: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aee0: f940c610    	ldr	x16, [x16, #0x188]
10000aee4: d61f0200    	br	x16
10000aee8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aeec: f940ca10    	ldr	x16, [x16, #0x190]
10000aef0: d61f0200    	br	x16
10000aef4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aef8: f940da10    	ldr	x16, [x16, #0x1b0]
10000aefc: d61f0200    	br	x16
10000af00: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af04: f940de10    	ldr	x16, [x16, #0x1b8]
10000af08: d61f0200    	br	x16
10000af0c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af10: f940e210    	ldr	x16, [x16, #0x1c0]
10000af14: d61f0200    	br	x16
10000af18: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af1c: f940e610    	ldr	x16, [x16, #0x1c8]
10000af20: d61f0200    	br	x16
10000af24: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af28: f940ea10    	ldr	x16, [x16, #0x1d0]
10000af2c: d61f0200    	br	x16
10000af30: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af34: f940fe10    	ldr	x16, [x16, #0x1f8]
10000af38: d61f0200    	br	x16
10000af3c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af40: f9410210    	ldr	x16, [x16, #0x200]
10000af44: d61f0200    	br	x16
10000af48: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af4c: f9410610    	ldr	x16, [x16, #0x208]
10000af50: d61f0200    	br	x16
10000af54: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af58: f9410a10    	ldr	x16, [x16, #0x210]
10000af5c: d61f0200    	br	x16
10000af60: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af64: f9410e10    	ldr	x16, [x16, #0x218]
10000af68: d61f0200    	br	x16
10000af6c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af70: f9411210    	ldr	x16, [x16, #0x220]
10000af74: d61f0200    	br	x16
10000af78: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af7c: f9411610    	ldr	x16, [x16, #0x228]
10000af80: d61f0200    	br	x16
10000af84: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af88: f9411a10    	ldr	x16, [x16, #0x230]
10000af8c: d61f0200    	br	x16
10000af90: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000af94: f9411e10    	ldr	x16, [x16, #0x238]
10000af98: d61f0200    	br	x16
10000af9c: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afa0: f9412210    	ldr	x16, [x16, #0x240]
10000afa4: d61f0200    	br	x16
10000afa8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afac: f9412a10    	ldr	x16, [x16, #0x250]
10000afb0: d61f0200    	br	x16
10000afb4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afb8: f9412e10    	ldr	x16, [x16, #0x258]
10000afbc: d61f0200    	br	x16
10000afc0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afc4: f9413210    	ldr	x16, [x16, #0x260]
10000afc8: d61f0200    	br	x16
10000afcc: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afd0: f9413610    	ldr	x16, [x16, #0x268]
10000afd4: d61f0200    	br	x16
10000afd8: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afdc: f9413a10    	ldr	x16, [x16, #0x270]
10000afe0: d61f0200    	br	x16
10000afe4: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000afe8: f9413e10    	ldr	x16, [x16, #0x278]
10000afec: d61f0200    	br	x16
10000aff0: d0000010    	adrp	x16, 0x10000c000 <_strlen+0x10000c000>
10000aff4: f9414210    	ldr	x16, [x16, #0x280]
10000aff8: d61f0200    	br	x16

Disassembly of section __TEXT,__gcc_except_tab:
000000010000affc <GCC_except_table0>:
10000affc: 0e01ffff    	fdot.2s	v31, v31, v1
10000b000: 00007400    	udf	#0x7400
10000b004: 01ac1074    	<unknown>
10000b008: 64018400    	<unknown>
10000b00c: 00000000    	udf	#0x0

000000010000b010 <GCC_except_table2>:
10000b010: 010d9bff    	<unknown>
10000b014: 48082404    	stxrh	w8, w4, [x0]
10000b018: 00000101    	udf	#0x101
10000b01c: 00000000    	udf	#0x0

000000010000b020 <GCC_except_table5>:
10000b020: 01599bff    	<unknown>
10000b024: 8c743445    	<unknown>
10000b028: 01ac0001    	<unknown>
10000b02c: 0002fc14    	<unknown>
10000b030: 941001cc    	bl	0x10040b760 <_strlen+0x10040b760>
10000b034: 01e00503    	<unknown>
10000b038: 0503a40c    	orr	z12.d, z12.d, #0x1ffffffff000
10000b03c: b42803bc    	cbz	x28, 0x10005b0b0 <_strlen+0x10005b0b0>
10000b040: 03e80504    	<unknown>
10000b044: 0504c40c    	<unknown>
10000b048: dc240488    	<unknown>
10000b04c: 05800504    	and	z4.h, z4.h, #0x1ff
10000b050: 0504b408    	<unknown>
10000b054: 00440588    	<unknown>
10000b058: 2005cc00    	<unknown>
10000b05c: 840005f8    	ld1sb	{ z24.s }, p1/z, [x15, z0.s, uxtw]
10000b060: 06f00406    	<unknown>
10000b064: 6c068807    	stnp	d7, d2, [x0, #0x68]
10000b068: 00000000    	udf	#0x0
10000b06c: 7d017d00    	str	h0, [x8, #0xbe]
10000b070: 00000002    	udf	#0x2
10000b074: 00000000    	udf	#0x0
10000b078: 00001160    	udf	#0x1160

000000010000b07c <GCC_except_table28>:
10000b07c: 01599bff    	<unknown>
10000b080: 8c743445    	<unknown>
10000b084: 01ac0001    	<unknown>
10000b088: 0002fc14    	<unknown>
10000b08c: 941001cc    	bl	0x10040b7bc <_strlen+0x10040b7bc>
10000b090: 01e00503    	<unknown>
10000b094: 0503a40c    	orr	z12.d, z12.d, #0x1ffffffff000
10000b098: b42803bc    	cbz	x28, 0x10005b10c <_strlen+0x10005b10c>
10000b09c: 03e80504    	<unknown>
10000b0a0: 0504c40c    	<unknown>
10000b0a4: dc240488    	<unknown>
10000b0a8: 05800504    	and	z4.h, z4.h, #0x1ff
10000b0ac: 0504b408    	<unknown>
10000b0b0: 00440588    	<unknown>
10000b0b4: 2005cc00    	<unknown>
10000b0b8: a4000698    	ld1rqb	{ z24.b }, p1/z, [x20, x0]
10000b0bc: 06ec0406    	<unknown>
10000b0c0: 4806a807    	stlxrh	w6, w7, [x0]
10000b0c4: 00000000    	udf	#0x0
10000b0c8: 7d017d00    	str	h0, [x8, #0xbe]
10000b0cc: 00000002    	udf	#0x2
10000b0d0: 00000000    	udf	#0x0
10000b0d4: 00001104    	udf	#0x1104

000000010000b0d8 <GCC_except_table29>:
10000b0d8: 4701ffff    	<unknown>
10000b0dc: 01c01044    	<unknown>
10000b0e0: d4085800    	<unknown>
10000b0e4: 01940001    	<unknown>
10000b0e8: 01e80194    	<unknown>
10000b0ec: 0c02ac00    	<unknown>
10000b0f0: f40007e8    	<unknown>
10000b0f4: 07fc0c03    	<unknown>
10000b0f8: 0c04d400    	<unknown>
10000b0fc: b0000890    	adrp	x16, 0x10011c000 <_strlen+0x10011c000>
10000b100: 08a40c05    	<unknown>
10000b104: 0c069800    	<unknown>
10000b108: dc0008b8    	<unknown>
10000b10c: 07fc0407    	<unknown>
10000b110: 0809b000    	stlxrb	w9, w0, [x0]
10000b114: e40001e8    	<unknown>
10000b118: d4018409    	<unknown>
10000b11c: 0ae80001    	bic	w1, w0, w8, ror #0
10000b120: 00000068    	udf	#0x68

000000010000b124 <GCC_except_table39>:
10000b124: 010d9bff    	<unknown>
10000b128: a8106405    	stnp	x5, x25, [x0, #0x100]
10000b12c: 00010101    	<unknown>
10000b130: 00000000    	udf	#0x0

000000010000b134 <GCC_except_table42>:
10000b134: 3401ffff    	cbz	wzr, 0x10000f130 <_strlen+0x10000f130>
10000b138: 01a0083c    	<unknown>
10000b13c: b47c7400    	cbz	x0, 0x100103fbc <_strlen+0x100103fbc>
10000b140: 01f40001    	<unknown>
10000b144: 0004ec0c    	<unknown>
10000b148: 800c02f4    	<unknown>
10000b14c: 03d40005    	<unknown>
10000b150: 0005940c    	<unknown>
10000b154: 800404e0    	<unknown>
10000b158: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b15c: 0001b408    	<unknown>
10000b160: 01840688    	<unknown>
10000b164: 8c0001a0    	<unknown>
10000b168: 00005407    	udf	#0x5407

000000010000b16c <GCC_except_table43>:
10000b16c: 3401ffff    	cbz	wzr, 0x10000f168 <_strlen+0x10000f168>
10000b170: 01a0083c    	<unknown>
10000b174: b47c7400    	cbz	x0, 0x100103ff4 <_strlen+0x100103ff4>
10000b178: 01f40001    	<unknown>
10000b17c: 0004ec0c    	<unknown>
10000b180: 800c02f4    	<unknown>
10000b184: 03d40005    	<unknown>
10000b188: 0005940c    	<unknown>
10000b18c: 800404e0    	<unknown>
10000b190: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b194: 0001b408    	<unknown>
10000b198: 01840688    	<unknown>
10000b19c: 8c0001a0    	<unknown>
10000b1a0: 00005407    	udf	#0x5407

000000010000b1a4 <GCC_except_table44>:
10000b1a4: 3401ffff    	cbz	wzr, 0x10000f1a0 <_strlen+0x10000f1a0>
10000b1a8: 01a0083c    	<unknown>
10000b1ac: b47c7400    	cbz	x0, 0x10010402c <_strlen+0x10010402c>
10000b1b0: 01f40001    	<unknown>
10000b1b4: 0004ec0c    	<unknown>
10000b1b8: 800c02f4    	<unknown>
10000b1bc: 03d40005    	<unknown>
10000b1c0: 0005940c    	<unknown>
10000b1c4: 800404e0    	<unknown>
10000b1c8: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b1cc: 0001b408    	<unknown>
10000b1d0: 01840688    	<unknown>
10000b1d4: 8c0001a0    	<unknown>
10000b1d8: 00005407    	udf	#0x5407

000000010000b1dc <GCC_except_table45>:
10000b1dc: 3401ffff    	cbz	wzr, 0x10000f1d8 <_strlen+0x10000f1d8>
10000b1e0: 01a0083c    	<unknown>
10000b1e4: b47c7400    	cbz	x0, 0x100104064 <_strlen+0x100104064>
10000b1e8: 01f40001    	<unknown>
10000b1ec: 0004ec0c    	<unknown>
10000b1f0: 800c02f4    	<unknown>
10000b1f4: 03d40005    	<unknown>
10000b1f8: 0005940c    	<unknown>
10000b1fc: 800404e0    	<unknown>
10000b200: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b204: 0001b408    	<unknown>
10000b208: 01840688    	<unknown>
10000b20c: 8c0001a0    	<unknown>
10000b210: 00005407    	udf	#0x5407

000000010000b214 <GCC_except_table46>:
10000b214: 4d01ffff    	<unknown>
10000b218: 01a4083c    	<unknown>
10000b21c: 01807800    	<unknown>
10000b220: fc0001b8    	stur	d24, [x13]
10000b224: 07ec1001    	<unknown>
10000b228: 0c029000    	<unknown>
10000b22c: a0000880    	ld1b	{ z0.b, z1.b }, pn10/z, [x4, x0]
10000b230: 08940c02    	stllrb	w2, [x0]
10000b234: 0c048000    	<unknown>
10000b238: e00008a8    	ld1b	{za0h.b[w12, 8]}, p2/z, [x5, x0]
10000b23c: 08bc0c04    	<unknown>
10000b240: 0c05bc00    	<unknown>
10000b244: a00008d0    	ld1b	{ z16.b, z17.b }, pn10/z, [x6, x0]
10000b248: 08e40c06    	<unknown>
10000b24c: 0407e000    	msb	z0.b, p0/m, z7.b, z0.b
10000b250: ec0008a8    	<unknown>
10000b254: 01b80809    	<unknown>
10000b258: 840ab800    	ldnt1b	{ z0.s }, p6/z, [z0.s, x10]
10000b25c: 0001a401    	<unknown>
10000b260: 00540bbc    	<unknown>
10000b264: 00000000    	udf	#0x0

000000010000b268 <GCC_except_table47>:
10000b268: 3401ffff    	cbz	wzr, 0x10000f264 <_strlen+0x10000f264>
10000b26c: 01a0083c    	<unknown>
10000b270: b47c7400    	cbz	x0, 0x1001040f0 <_strlen+0x1001040f0>
10000b274: 01f40001    	<unknown>
10000b278: 0004ec0c    	<unknown>
10000b27c: 800c02f4    	<unknown>
10000b280: 03d40005    	<unknown>
10000b284: 0005940c    	<unknown>
10000b288: 800404e0    	<unknown>
10000b28c: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b290: 0001b408    	<unknown>
10000b294: 01840688    	<unknown>
10000b298: 8c0001a0    	<unknown>
10000b29c: 00005407    	udf	#0x5407

000000010000b2a0 <GCC_except_table48>:
10000b2a0: 3401ffff    	cbz	wzr, 0x10000f29c <_strlen+0x10000f29c>
10000b2a4: 01a0083c    	<unknown>
10000b2a8: b47c7400    	cbz	x0, 0x100104128 <_strlen+0x100104128>
10000b2ac: 01f40001    	<unknown>
10000b2b0: 0004ec0c    	<unknown>
10000b2b4: 800c02f4    	<unknown>
10000b2b8: 03d40005    	<unknown>
10000b2bc: 0005940c    	<unknown>
10000b2c0: 800404e0    	<unknown>
10000b2c4: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b2c8: 0001b408    	<unknown>
10000b2cc: 01840688    	<unknown>
10000b2d0: 8c0001a0    	<unknown>
10000b2d4: 00005407    	udf	#0x5407

000000010000b2d8 <GCC_except_table49>:
10000b2d8: 3401ffff    	cbz	wzr, 0x10000f2d4 <_strlen+0x10000f2d4>
10000b2dc: 01a0083c    	<unknown>
10000b2e0: b47c7400    	cbz	x0, 0x100104160 <_strlen+0x100104160>
10000b2e4: 01f40001    	<unknown>
10000b2e8: 0004ec0c    	<unknown>
10000b2ec: 800c02f4    	<unknown>
10000b2f0: 03d40005    	<unknown>
10000b2f4: 0005940c    	<unknown>
10000b2f8: 800404e0    	<unknown>
10000b2fc: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b300: 0001b408    	<unknown>
10000b304: 01840688    	<unknown>
10000b308: 8c0001a0    	<unknown>
10000b30c: 00005407    	udf	#0x5407

000000010000b310 <GCC_except_table50>:
10000b310: 3401ffff    	cbz	wzr, 0x10000f30c <_strlen+0x10000f30c>
10000b314: 01a0083c    	<unknown>
10000b318: b47c7400    	cbz	x0, 0x100104198 <_strlen+0x100104198>
10000b31c: 01f40001    	<unknown>
10000b320: 0004ec0c    	<unknown>
10000b324: 800c02f4    	<unknown>
10000b328: 03d40005    	<unknown>
10000b32c: 0005940c    	<unknown>
10000b330: 800404e0    	<unknown>
10000b334: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b338: 0001b408    	<unknown>
10000b33c: 01840688    	<unknown>
10000b340: 8c0001a0    	<unknown>
10000b344: 00005407    	udf	#0x5407

000000010000b348 <GCC_except_table51>:
10000b348: 3401ffff    	cbz	wzr, 0x10000f344 <_strlen+0x10000f344>
10000b34c: 01a0083c    	<unknown>
10000b350: b47c7400    	cbz	x0, 0x1001041d0 <_strlen+0x1001041d0>
10000b354: 01f40001    	<unknown>
10000b358: 0004ec0c    	<unknown>
10000b35c: 800c02f4    	<unknown>
10000b360: 03d40005    	<unknown>
10000b364: 0005940c    	<unknown>
10000b368: 800404e0    	<unknown>
10000b36c: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b370: 0001b408    	<unknown>
10000b374: 01840688    	<unknown>
10000b378: 8c0001a0    	<unknown>
10000b37c: 00005407    	udf	#0x5407

000000010000b380 <GCC_except_table52>:
10000b380: 3401ffff    	cbz	wzr, 0x10000f37c <_strlen+0x10000f37c>
10000b384: 01a0083c    	<unknown>
10000b388: b47c7400    	cbz	x0, 0x100104208 <_strlen+0x100104208>
10000b38c: 01f40001    	<unknown>
10000b390: 0004ec0c    	<unknown>
10000b394: 800c02f4    	<unknown>
10000b398: 03d40005    	<unknown>
10000b39c: 0005940c    	<unknown>
10000b3a0: 800404e0    	<unknown>
10000b3a4: 05d40005    	mov	z5.d, p4/z, #0x0        ; =0
10000b3a8: 0001b408    	<unknown>
10000b3ac: 01840688    	<unknown>
10000b3b0: 8c0001a0    	<unknown>
10000b3b4: 00005407    	udf	#0x5407

000000010000b3b8 <GCC_except_table54>:
10000b3b8: 6b01ffff    	<unknown>
10000b3bc: 0003a400    	<unknown>
10000b3c0: ac03a400    	stnp	q0, q9, [x0, #0x70]
10000b3c4: 000e9001    	<unknown>
10000b3c8: 018404f0    	<unknown>
10000b3cc: 84000ea4    	ld1sb	{ z4.s }, p3/z, [x21, z0.s, uxtw]
10000b3d0: 0eb80806    	<unknown>
10000b3d4: 0806a400    	stlxrb	w6, w0, [x0]
10000b3d8: c4000ecc    	ld1sb	{ z12.d }, p3/z, [x22, z0.d, uxtw]
10000b3dc: 0ee00806    	<unknown>
10000b3e0: 0806e400    	stlxrb	w6, w0, [x0]
10000b3e4: c0000ef4    	<unknown>
10000b3e8: a4019007    	<unknown>
10000b3ec: 08e0000e    	<unknown>
10000b3f0: 000fb408    	<unknown>
10000b3f4: c8080980    	stxr	w8, x0, [x12]
10000b3f8: 09cc000f    	<unknown>
10000b3fc: 0ea40190    	saddl.2d	v16, v12, v4
10000b400: 080aec00    	stlxrb	w10, w0, [x0]
10000b404: b0000ff0    	adrp	x16, 0x100208000 <_strlen+0x100208000>
10000b408: a401900b    	<unknown>
10000b40c: 0cd0000e    	ld4.8b	{ v14, v15, v16, v17 }, [x0], x16
10000b410: 00108c08    	<unknown>
10000b414: 03e40d94    	<unknown>
10000b418: bc000ea4    	str	s4, [x21, #0x0]!
10000b41c: 0e905011    	<unknown>
10000b420: 9c128c00    	ldr	q0, 0x1000305a0 <_strlen+0x1000305a0>
10000b424: 00000001    	udf	#0x1

000000010000b428 <GCC_except_table59>:
10000b428: 013d9bff    	<unknown>
10000b42c: 01b80034    	<unknown>
10000b430: 01b80000    	<unknown>
10000b434: 0102e408    	<unknown>
10000b438: f40c01c4    	<unknown>
10000b43c: 02900102    	<unknown>
10000b440: 0102e418    	<unknown>
10000b444: 018c02a8    	<unknown>
10000b448: 03b40000    	<unknown>
10000b44c: 0005b03c    	<unknown>
10000b450: e4600488    	st2q	{ z8.q, z9.q }, p1, [x4, x0, lsl #4]
10000b454: 05bc0102    	zip1	z2.q, z8.q, z28.q
10000b458: 01068404    	<unknown>
10000b45c: 004c05c0    	<unknown>
10000b460: 00000100    	udf	#0x100
10000b464: 00000000    	udf	#0x0

000000010000b468 <GCC_except_table98>:
10000b468: 010d9bff    	<unknown>
10000b46c: b40c2405    	cbz	x5, 0x1000238ec <_strlen+0x1000238ec>
10000b470: 00010101    	<unknown>
10000b474: 00000000    	udf	#0x0

000000010000b478 <GCC_except_table116>:
10000b478: 010d9bff    	<unknown>
10000b47c: b82c7405    	<unknown>
10000b480: 00010101    	<unknown>
10000b484: 00000000    	udf	#0x0

000000010000b488 <GCC_except_table118>:
10000b488: 010d9bff    	<unknown>
10000b48c: 40181404    	<unknown>
10000b490: 00000101    	udf	#0x101
10000b494: 00000000    	udf	#0x0

000000010000b498 <GCC_except_table141>:
10000b498: 010d9bff    	<unknown>
10000b49c: 40082804    	<unknown>
10000b4a0: 00000101    	udf	#0x101
10000b4a4: 00000000    	udf	#0x0

000000010000b4a8 <GCC_except_table149>:
10000b4a8: 010d9bff    	<unknown>
10000b4ac: 440c1804    	<unknown>
10000b4b0: 00000101    	udf	#0x101
10000b4b4: 00000000    	udf	#0x0

000000010000b4b8 <GCC_except_table166>:
10000b4b8: 010d9bff    	<unknown>
10000b4bc: 4c201804    	<unknown>
10000b4c0: 00000101    	udf	#0x101
10000b4c4: 00000000    	udf	#0x0

000000010000b4c8 <GCC_except_table175>:
10000b4c8: 01319bff    	<unknown>
10000b4cc: d8081c26    	prfm	pldslckeep, 0x10001b850 <_strlen+0x10001b850>
10000b4d0: a8280102    	stnp	x2, x0, [x8, #-0x180]
10000b4d4: 0102e802    	<unknown>
10000b4d8: 004802d0    	<unknown>
10000b4dc: 04039800    	<unknown>
10000b4e0: 9c0003c8    	ldr	q8, 0x10000b558 <GCC_except_table207+0x8>
10000b4e4: 00003803    	udf	#0x3803
10000b4e8: e80403d4    	<unknown>
10000b4ec: 03d80103    	<unknown>
10000b4f0: 01000014    	<unknown>
		...

000000010000b4fc <GCC_except_table176>:
10000b4fc: 010d9bff    	<unknown>
10000b500: 30081404    	adr	x4, 0x10001b781 <_strlen+0x10001b781>
10000b504: 00000101    	udf	#0x101
10000b508: 00000000    	udf	#0x0

000000010000b50c <GCC_except_table178>:
10000b50c: 1101ffff    	add	wsp, wsp, #0x7f
10000b510: 0002b400    	<unknown>
10000b514: 0802b400    	stlxrb	w2, w0, [x0]
10000b518: bc0002f0    	stur	s16, [x23]
10000b51c: 00028402    	<unknown>
10000b520: 00000000    	udf	#0x0

000000010000b524 <GCC_except_table191>:
10000b524: 010d9bff    	<unknown>
10000b528: 500c2804    	adr	x4, 0x100023a2a <_strlen+0x100023a2a>
10000b52c: 00000101    	udf	#0x101
10000b530: 00000000    	udf	#0x0

000000010000b534 <GCC_except_table196>:
10000b534: 0c01ffff    	<unknown>
10000b538: 00002800    	udf	#0x2800
10000b53c: 00641c28    	<unknown>
10000b540: 00004044    	udf	#0x4044

000000010000b544 <GCC_except_table202>:
10000b544: 0801ffff    	stlxrb	w1, wzr, [sp]
10000b548: 0044042c    	<unknown>
10000b54c: 00003830    	udf	#0x3830

000000010000b550 <GCC_except_table207>:
10000b550: 1001ffff    	adr	xzr, 0x10000f54c <_strlen+0x10000f54c>
10000b554: 0003a800    	<unknown>
10000b558: 0403a800    	<unknown>
10000b55c: ac0003bc    	stnp	q28, q0, [x29]
10000b560: 00004403    	udf	#0x4403

000000010000b564 <GCC_except_table247>:
10000b564: 0c01ffff    	<unknown>
10000b568: 00002000    	udf	#0x2000
10000b56c: 00400420    	<unknown>
10000b570: 00004024    	udf	#0x4024

000000010000b574 <GCC_except_table262>:
10000b574: 0e01ffff    	fdot.2s	v31, v31, v1
10000b578: 00005800    	udf	#0x5800
10000b57c: 01b42c58    	<unknown>
10000b580: 50018400    	adr	x0, 0x10000e602 <_strlen+0x10000e602>
10000b584: 00000000    	udf	#0x0

000000010000b588 <GCC_except_table282>:
10000b588: 0801ffff    	stlxrb	w1, wzr, [sp]
10000b58c: 0044042c    	<unknown>
10000b590: 00003830    	udf	#0x3830

000000010000b594 <GCC_except_table293>:
10000b594: 010d9bff    	<unknown>
10000b598: 6c084404    	stnp	d4, d17, [x0, #0x80]
10000b59c: 00000101    	udf	#0x101
10000b5a0: 00000000    	udf	#0x0

Disassembly of section __TEXT,__cstring:
000000010000b5a4 <__cstring>:
10000b5a4: 454d4f48    	uaddwt	z8.h, z26.h, z13.b
10000b5a8: 756f4300    	<unknown>
10000b5ac: 6e20646c    	umax.16b	v12, v3, v0
10000b5b0: 6620746f    	<unknown>
10000b5b4: 20646e69    	<unknown>
10000b5b8: 656d6f68    	fnmls	z8.h, p3/m, z27.h, z13.h
10000b5bc: 72696420    	<unknown>
10000b5c0: 6f746365    	umlsl2.4s	v5, v27, v4[3]
10000b5c4: 002e7972    	<unknown>
10000b5c8: 776f642f    	<unknown>
10000b5cc: 616f6c6e    	<unknown>
10000b5d0: 45007364    	<unknown>
10000b5d4: 726f7272    	<unknown>
10000b5d8: 74656720    	<unknown>
10000b5dc: 676e6974    	<unknown>
10000b5e0: 74617020    	<unknown>
10000b5e4: 6f662068    	umlal2.4s	v8, v3, v6[2]
10000b5e8: 68742072    	<unknown>
10000b5ec: 69662065    	ldpsw	x5, x8, [x3, #-0xd0]
10000b5f0: 2e73656c    	umax.4h	v12, v11, v19
10000b5f4: 6f685000    	fcmla.8h	v0, v0, v8[1], #180
10000b5f8: 00736f74    	<unknown>
10000b5fc: 47504a2e    	<unknown>
10000b600: 706a2e00    	adr	x0, 0x1000dfbc3 <_strlen+0x1000dfbc3>
10000b604: 2e006765    	<unknown>
10000b608: 4745504a    	<unknown>
10000b60c: 61655200    	<unknown>
10000b610: 676e6964    	<unknown>
10000b614: 002e2e2e    	<unknown>
10000b618: 6620000a    	<unknown>
10000b61c: 73656c69    	<unknown>
10000b620: 756f6620    	<unknown>
10000b624: 6520646e    	<unknown>
10000b628: 6e69646e    	umax.8h	v14, v3, v9
10000b62c: 69772067    	ldpsw	x7, x8, [x3, #-0x48]
10000b630: 2e206874    	uadalp.4h	v20, v3
10000b634: 2047504a    	<unknown>
10000b638: 2e20726f    	uabdl.8h	v15, v19, v0
10000b63c: 4745504a    	<unknown>
10000b640: 206e6920    	<unknown>
10000b644: 20656874    	<unknown>
10000b648: 646c6f66    	<unknown>
10000b64c: 2e007265    	<unknown>
10000b650: 00474e50    	<unknown>
10000b654: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000b658: 66207365    	<unknown>
10000b65c: 646e756f    	<unknown>
10000b660: 646e6520    	<unknown>
10000b664: 20676e69    	<unknown>
10000b668: 68746977    	<unknown>
10000b66c: 4e502e20    	<unknown>
10000b670: 6e692047    	usubl2.4s	v7, v2, v9
10000b674: 65687420    	fnmls	z0.h, p5/m, z1.h, z8.h
10000b678: 6c6f6620    	ldnp	d0, d25, [x17, #-0x110]
10000b67c: 00726564    	<unknown>
10000b680: 4245572e    	<unknown>
10000b684: 66200050    	<unknown>
10000b688: 73656c69    	<unknown>
10000b68c: 756f6620    	<unknown>
10000b690: 6520646e    	<unknown>
10000b694: 6e69646e    	umax.8h	v14, v3, v9
10000b698: 69772067    	ldpsw	x7, x8, [x3, #-0x48]
10000b69c: 2e206874    	uadalp.4h	v20, v3
10000b6a0: 50424557    	adr	x23, 0x10008ff4a <_strlen+0x10008ff4a>
10000b6a4: 206e6920    	<unknown>
10000b6a8: 20656874    	<unknown>
10000b6ac: 646c6f66    	<unknown>
10000b6b0: 2e007265    	<unknown>
10000b6b4: 43494548    	<unknown>
10000b6b8: 69662000    	ldpsw	x0, x8, [x0, #-0xd0]
10000b6bc: 2073656c    	<unknown>
10000b6c0: 6e756f66    	umin.8h	v6, v27, v21
10000b6c4: 6e652064    	usubl2.4s	v4, v3, v5
10000b6c8: 676e6964    	<unknown>
10000b6cc: 74697720    	<unknown>
10000b6d0: 482e2068    	<unknown>
10000b6d4: 20434945    	<unknown>
10000b6d8: 74206e69    	<unknown>
10000b6dc: 66206568    	<unknown>
10000b6e0: 65646c6f    	fnmls	z15.h, p3/m, z3.h, z4.h
10000b6e4: 532e0072    	<unknown>
10000b6e8: 20004756    	<unknown>
10000b6ec: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000b6f0: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000b6f4: 20646e75    	<unknown>
10000b6f8: 69646e65    	ldpsw	x5, x27, [x19, #-0xe0]
10000b6fc: 7720676e    	<unknown>
10000b700: 20687469    	<unknown>
10000b704: 4756532e    	<unknown>
10000b708: 206e6920    	<unknown>
10000b70c: 20656874    	<unknown>
10000b710: 646c6f66    	<unknown>
10000b714: 2e007265    	<unknown>
10000b718: 00434f44    	<unknown>
10000b71c: 434f442e    	<unknown>
10000b720: 66200058    	<unknown>
10000b724: 73656c69    	<unknown>
10000b728: 646e6520    	<unknown>
10000b72c: 20676e69    	<unknown>
10000b730: 68746977    	<unknown>
10000b734: 6f642e20    	<unknown>
10000b738: 6e612063    	usubl2.4s	v3, v3, v1
10000b73c: 642e2064    	fmul	z4.h, z3.h, z6.h[1]
10000b740: 2078636f    	<unknown>
10000b744: 65726577    	fnmls	z23.h, p1/m, z11.h, z18.h
10000b748: 756f6620    	<unknown>
10000b74c: 6920646e    	stgp	x14, x25, [x3, #-0x400]
10000b750: 6874206e    	<unknown>
10000b754: 6f662065    	umlal2.4s	v5, v3, v6[2]
10000b758: 7265646c    	<unknown>
10000b75c: 44502e00    	cmla	z0.h, z16.h, z16.h, #270
10000b760: 66200046    	<unknown>
10000b764: 73656c69    	<unknown>
10000b768: 756f6620    	<unknown>
10000b76c: 6520646e    	<unknown>
10000b770: 6e69646e    	umax.8h	v14, v3, v9
10000b774: 69772067    	ldpsw	x7, x8, [x3, #-0x48]
10000b778: 70206874    	adr	x20, 0x10004c487 <_strlen+0x10004c487>
10000b77c: 66206664    	<unknown>
10000b780: 646e756f    	<unknown>
10000b784: 206e6920    	<unknown>
10000b788: 20656874    	<unknown>
10000b78c: 65726964    	fnmls	z4.h, p2/m, z11.h, z18.h
10000b790: 726f7463    	<unknown>
10000b794: 542e0079    	bc.ls	0x1000677a0 <_strlen+0x1000677a0>
10000b798: 20005458    	<unknown>
10000b79c: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000b7a0: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000b7a4: 20646e75    	<unknown>
10000b7a8: 69646e65    	ldpsw	x5, x27, [x19, #-0xe0]
10000b7ac: 7720676e    	<unknown>
10000b7b0: 20687469    	<unknown>
10000b7b4: 20747874    	<unknown>
10000b7b8: 6e756f66    	umin.8h	v6, v27, v21
10000b7bc: 6e692064    	usubl2.4s	v4, v3, v9
10000b7c0: 65687420    	fnmls	z0.h, p5/m, z1.h, z8.h
10000b7c4: 72696420    	<unknown>
10000b7c8: 6f746365    	umlsl2.4s	v5, v27, v4[3]
10000b7cc: 2e007972    	<unknown>
10000b7d0: 0034504d    	<unknown>
10000b7d4: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000b7d8: 66207365    	<unknown>
10000b7dc: 646e756f    	<unknown>
10000b7e0: 646e6520    	<unknown>
10000b7e4: 20676e69    	<unknown>
10000b7e8: 68746977    	<unknown>
10000b7ec: 34504d20    	cbz	w0, 0x1000ac190 <_strlen+0x1000ac190>
10000b7f0: 206e6920    	<unknown>
10000b7f4: 20656874    	<unknown>
10000b7f8: 65726964    	fnmls	z4.h, p2/m, z11.h, z18.h
10000b7fc: 726f7463    	<unknown>
10000b800: 2e002e79    	<unknown>
10000b804: 00564f4d    	<unknown>
10000b808: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000b80c: 66207365    	<unknown>
10000b810: 646e756f    	<unknown>
10000b814: 646e6520    	<unknown>
10000b818: 20676e69    	<unknown>
10000b81c: 68746977    	<unknown>
10000b820: 564f4d20    	<unknown>
10000b824: 206e6920    	<unknown>
10000b828: 20656874    	<unknown>
10000b82c: 65726964    	fnmls	z4.h, p2/m, z11.h, z18.h
10000b830: 726f7463    	<unknown>
10000b834: 2e002e79    	<unknown>
10000b838: 0033504d    	<unknown>
10000b83c: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000b840: 66207365    	<unknown>
10000b844: 646e756f    	<unknown>
10000b848: 646e6520    	<unknown>
10000b84c: 20676e69    	<unknown>
10000b850: 68746977    	<unknown>
10000b854: 33504d20    	<unknown>
10000b858: 206e6920    	<unknown>
10000b85c: 20656874    	<unknown>
10000b860: 65726964    	fnmls	z4.h, p2/m, z11.h, z18.h
10000b864: 726f7463    	<unknown>
10000b868: 2e002e79    	<unknown>
10000b86c: 00564157    	<unknown>
10000b870: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000b874: 66207365    	<unknown>
10000b878: 646e756f    	<unknown>
10000b87c: 646e6520    	<unknown>
10000b880: 20676e69    	<unknown>
10000b884: 68746977    	<unknown>
10000b888: 56415720    	<unknown>
10000b88c: 206e6920    	<unknown>
10000b890: 20656874    	<unknown>
10000b894: 65726964    	fnmls	z4.h, p2/m, z11.h, z18.h
10000b898: 726f7463    	<unknown>
10000b89c: 5b002e79    	<unknown>
10000b8a0: 4f205d31    	<unknown>
10000b8a4: 6e616772    	umax.8h	v18, v27, v1
10000b8a8: 20657a69    	<unknown>
10000b8ac: 656c6946    	fnmls	z6.h, p2/m, z10.h, z12.h
10000b8b0: 000a2073    	<unknown>
10000b8b4: 205d325b    	<unknown>
10000b8b8: 656c6544    	fnmls	z4.h, p1/m, z10.h, z12.h
10000b8bc: 46206574    	<unknown>
10000b8c0: 73656c69    	<unknown>
10000b8c4: 5b000a20    	<unknown>
10000b8c8: 53205d33    	<unknown>
10000b8cc: 2074726f    	<unknown>
10000b8d0: 646c6f46    	<unknown>
10000b8d4: 0a207265    	bic	w5, w19, w0, lsl #28
10000b8d8: 5d345b00    	<unknown>
10000b8dc: 69784520    	ldpsw	x0, x17, [x9, #-0x40]
10000b8e0: 000a2074    	<unknown>
10000b8e4: 2a2a2a2a    	orn	w10, w17, w10, lsl #10
10000b8e8: 636c6557    	<unknown>
10000b8ec: 20656d6f    	<unknown>
10000b8f0: 74206f54    	<unknown>
10000b8f4: 46206568    	<unknown>
10000b8f8: 20656c69    	<unknown>
10000b8fc: 696e614d    	ldpsw	x13, x24, [x10, #-0x90]
10000b900: 616c7570    	<unknown>
10000b904: 2a726f74    	orn	w20, w27, w18, lsr #27
10000b908: 002a2a2a    	<unknown>
10000b90c: 20202020    	<unknown>
10000b910: 20202020    	<unknown>
10000b914: 45532020    	<unknown>
10000b918: 5443454c    	b.gt	0x1000921c0 <_strlen+0x1000921c0>
10000b91c: 4f524620    	<unknown>
10000b920: 4843204d    	ldxrh	w13, [x2]
10000b924: 4543494f    	uaddwb	z15.h, z10.h, z3.b
10000b928: 20202053    	<unknown>
10000b92c: 20202020    	<unknown>
10000b930: 00202020    	<unknown>
10000b934: 61766e49    	<unknown>
10000b938: 2064696c    	<unknown>
10000b93c: 75706e69    	<unknown>
10000b940: 50202e74    	adr	x20, 0x10004bf0e <_strlen+0x10004bf0e>
10000b944: 7361656c    	<unknown>
10000b948: 6e652065    	usubl2.4s	v5, v3, v5
10000b94c: 20726574    	<unknown>
10000b950: 69206e61    	stgp	x1, x27, [x19, #-0x400]
10000b954: 6765746e    	<unknown>
10000b958: 203a7265    	<unknown>
10000b95c: 206f4e00    	<unknown>
10000b960: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000b964: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000b968: 2e646e75    	umin.4h	v21, v19, v4
10000b96c: 69784500    	ldpsw	x0, x17, [x8, #-0x40]
10000b970: 676e6974    	<unknown>
10000b974: 002e2e2e    	<unknown>
10000b978: 656c6946    	fnmls	z6.h, p2/m, z10.h, z12.h
10000b97c: 69772073    	ldpsw	x19, x8, [x3, #-0x48]
10000b980: 6e696874    	<unknown>
10000b984: 65687420    	fnmls	z0.h, p5/m, z1.h, z8.h
10000b988: 776f6420    	<unknown>
10000b98c: 616f6c6e    	<unknown>
10000b990: 64207364    	<unknown>
10000b994: 63657269    	<unknown>
10000b998: 79726f74    	ldrh	w20, [x27, #0x1936]
10000b99c: 6c697720    	ldnp	d0, d29, [x25, #-0x170]
10000b9a0: 6562206c    	fmls	z12.h, p0/m, z3.h, z2.h
10000b9a4: 67726f20    	<unknown>
10000b9a8: 7a696e61    	<unknown>
10000b9ac: 002e6465    	<unknown>
10000b9b0: 20657241    	<unknown>
10000b9b4: 20756f79    	<unknown>
10000b9b8: 65727573    	fnmls	z19.h, p5/m, z11.h, z18.h
10000b9bc: 756f7920    	<unknown>
10000b9c0: 6e617720    	uabd.8h	v0, v25, v1
10000b9c4: 6f742074    	umlal2.4s	v20, v3, v4[3]
10000b9c8: 6e6f6320    	rsubhn2.8h	v0, v25, v15
10000b9cc: 756e6974    	<unknown>
10000b9d0: 5b203f65    	<unknown>
10000b9d4: 73655d59    	<unknown>
10000b9d8: 20726f20    	<unknown>
10000b9dc: 6f5d4e5b    	<unknown>
10000b9e0: 20007900    	<unknown>
10000b9e4: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000b9e8: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000b9ec: 20646e75    	<unknown>
10000b9f0: 74206e69    	<unknown>
10000b9f4: 64206568    	<unknown>
10000b9f8: 63657269    	<unknown>
10000b9fc: 79726f74    	ldrh	w20, [x27, #0x1936]
10000ba00: 20202000    	<unknown>
10000ba04: 20202020    	<unknown>
10000ba08: 43495020    	<unknown>
10000ba0c: 45525554    	ssubwt	z20.h, z10.h, z18.b
10000ba10: 20202053    	<unknown>
10000ba14: 20202020    	<unknown>
10000ba18: 20202020    	<unknown>
10000ba1c: 6d692000    	ldp	d0, d8, [x0, #-0x170]
10000ba20: 20656761    	<unknown>
10000ba24: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000ba28: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000ba2c: 20646e75    	<unknown>
10000ba30: 74206e69    	<unknown>
10000ba34: 66206568    	<unknown>
10000ba38: 65646c6f    	fnmls	z15.h, p3/m, z3.h, z4.h
10000ba3c: 20002e72    	<unknown>
10000ba40: 20202020    	<unknown>
10000ba44: 20202020    	<unknown>
10000ba48: 58455420    	ldr	x0, 0x1000964cc <_strlen+0x1000964cc>
10000ba4c: 20202054    	<unknown>
10000ba50: 20202020    	<unknown>
10000ba54: 20202020    	<unknown>
10000ba58: 20002020    	<unknown>
10000ba5c: 74786574    	<unknown>
10000ba60: 6c696620    	ldnp	d0, d25, [x17, #-0x170]
10000ba64: 66207365    	<unknown>
10000ba68: 646e756f    	<unknown>
10000ba6c: 206e6920    	<unknown>
10000ba70: 20656874    	<unknown>
10000ba74: 646c6f66    	<unknown>
10000ba78: 002e7265    	<unknown>
10000ba7c: 20202020    	<unknown>
10000ba80: 20202020    	<unknown>
10000ba84: 44495620    	smlslt	z0.h, z17.b, z9.b
10000ba88: 20534f45    	<unknown>
10000ba8c: 20202020    	<unknown>
10000ba90: 20202020    	<unknown>
10000ba94: 00202020    	<unknown>
10000ba98: 64695620    	<unknown>
10000ba9c: 66206f65    	<unknown>
10000baa0: 73656c69    	<unknown>
10000baa4: 756f6620    	<unknown>
10000baa8: 6920646e    	stgp	x14, x25, [x3, #-0x400]
10000baac: 6874206e    	<unknown>
10000bab0: 6f662065    	umlal2.4s	v5, v3, v6[2]
10000bab4: 7265646c    	<unknown>
10000bab8: 2020002e    	<unknown>
10000babc: 20202020    	<unknown>
10000bac0: 41202020    	<unknown>
10000bac4: 4f494455    	<unknown>
10000bac8: 20202020    	<unknown>
10000bacc: 20202020    	<unknown>
10000bad0: 20202020    	<unknown>
10000bad4: 75412000    	<unknown>
10000bad8: 206f6964    	<unknown>
10000badc: 656c6966    	fnmls	z6.h, p2/m, z11.h, z12.h
10000bae0: 6f662073    	umlal2.4s	v19, v3, v6[2]
10000bae4: 20646e75    	<unknown>
10000bae8: 74206e69    	<unknown>
10000baec: 66206568    	<unknown>
10000baf0: 65646c6f    	fnmls	z15.h, p3/m, z3.h, z4.h
10000baf4: 46002e72    	<unknown>
10000baf8: 73656c69    	<unknown>
10000bafc: 76616820    	<unknown>
10000bb00: 65622065    	fmls	z5.h, p0/m, z3.h, z2.h
10000bb04: 61206e65    	<unknown>
10000bb08: 64656464    	<unknown>
10000bb0c: 206f7420    	<unknown>
10000bb10: 70736552    	adr	x18, 0x1000f27bb <_strlen+0x1000f27bb>
10000bb14: 69746365    	ldpsw	x5, x24, [x27, #-0x60]
10000bb18: 46206576    	<unknown>
10000bb1c: 65646c6f    	fnmls	z15.h, p3/m, z3.h, z4.h
10000bb20: 6e007372    	ext.16b	v18, v27, v0, #0xe
10000bb24: 6f725000    	fcmla.8h	v0, v0, v18[1], #180
10000bb28: 6d617267    	ldp	d7, d28, [x19, #-0x1f0]
10000bb2c: 20736920    	<unknown>
10000bb30: 636e6163    	<unknown>
10000bb34: 656c6c65    	fnmls	z5.h, p3/m, z3.h, z12.h
10000bb38: 000a2e64    	<unknown>
10000bb3c: 61766e49    	<unknown>
10000bb40: 2064696c    	<unknown>
10000bb44: 75706e69    	<unknown>
10000bb48: 50202e74    	adr	x20, 0x10004c116 <_strlen+0x10004c116>
10000bb4c: 7361656c    	<unknown>
10000bb50: 6e652065    	usubl2.4s	v5, v3, v5
10000bb54: 20726574    	<unknown>
10000bb58: 20277927    	<unknown>
10000bb5c: 2720726f    	<unknown>
10000bb60: 0a2e276e    	bic	w14, w27, w14, lsl #9
10000bb64: 72724500    	<unknown>
10000bb68: 7220726f    	ands	w15, w19, #0x1fffffff
10000bb6c: 69646165    	ldpsw	x5, x24, [x11, #-0xe0]
10000bb70: 6920676e    	stgp	x14, x25, [x27, #-0x400]
10000bb74: 7475706e    	<unknown>
10000bb78: 6c50202e    	ldnp	d14, d8, [x1, #0x100]
10000bb7c: 65736165    	fnmls	z5.h, p0/m, z11.h, z19.h
10000bb80: 79727420    	ldrh	w0, [x1, #0x193a]
10000bb84: 61676120    	<unknown>
10000bb88: 0a2e6e69    	bic	w9, w19, w14, lsl #27
10000bb8c: 646e4500    	fdot	z0.s, z8.b, z6.b[1]
10000bb90: 20676e69    	<unknown>
10000bb94: 656c6946    	fnmls	z6.h, p2/m, z10.h, z12.h
10000bb98: 002e2e2e    	<unknown>
10000bb9c: 206f7242    	<unknown>
10000bba0: 64616572    	<unknown>
10000bba4: 65687420    	fnmls	z0.h, p5/m, z1.h, z8.h
10000bba8: 6d756e20    	ldp	d0, d27, [x17, #-0xb0]
10000bbac: 73726562    	<unknown>
10000bbb0: 6f6c6320    	umlsl2.4s	v0, v25, v12[2]
10000bbb4: 796c6573    	ldrh	w19, [x11, #0x1632]
10000bbb8: 73616200    	<unknown>
10000bbbc: 735f6369    	<unknown>
10000bbc0: 6e697274    	uabdl2.4s	v20, v19, v9
10000bbc4: 67 00       	<unknown>

Disassembly of section __TEXT,__unwind_info:
000000010000bbc8 <__unwind_info>:
10000bbc8: 00000001    	udf	#0x1
10000bbcc: 0000001c    	udf	#0x1c
10000bbd0: 00000006    	udf	#0x6
10000bbd4: 00000034    	udf	#0x34
10000bbd8: 00000001    	udf	#0x1
10000bbdc: 00000038    	udf	#0x38
10000bbe0: 00000002    	udf	#0x2
10000bbe4: 04000000    	add	z0.b, p0/m, z0.b, z0.b
10000bbe8: 02001000    	<unknown>
10000bbec: 54000000    	b.eq	0x10000bbec <__unwind_info+0x24>
10000bbf0: 54000010    	bc.eq	0x10000bbf0 <__unwind_info+0x28>
10000bbf4: 02002000    	<unknown>
10000bbf8: 02000000    	<unknown>
10000bbfc: 0000c248    	udf	#0xc248
10000bc00: 00001d78    	udf	#0x1d78
10000bc04: 0000017c    	udf	#0x17c
10000bc08: 0000005c    	udf	#0x5c
10000bc0c: 0000acc0    	udf	#0xacc0
10000bc10: 00000000    	udf	#0x0
10000bc14: 0000017c    	udf	#0x17c
		...
10000bc24: 00001d78    	udf	#0x1d78
10000bc28: 0000affc    	udf	#0xaffc
10000bc2c: 00001ef8    	udf	#0x1ef8
10000bc30: 0000b010    	udf	#0xb010
10000bc34: 00001fbc    	udf	#0x1fbc
10000bc38: 0000b020    	udf	#0xb020
10000bc3c: 000027c4    	udf	#0x27c4
10000bc40: 0000b07c    	udf	#0xb07c
10000bc44: 00002b34    	udf	#0x2b34
10000bc48: 0000b0d8    	udf	#0xb0d8
10000bc4c: 00003494    	udf	#0x3494
10000bc50: 0000b124    	udf	#0xb124
10000bc54: 00003588    	udf	#0x3588
10000bc58: 0000b134    	udf	#0xb134
10000bc5c: 00003968    	udf	#0x3968
10000bc60: 0000b16c    	udf	#0xb16c
10000bc64: 00003d48    	udf	#0x3d48
10000bc68: 0000b1a4    	udf	#0xb1a4
10000bc6c: 00004128    	udf	#0x4128
10000bc70: 0000b1dc    	udf	#0xb1dc
10000bc74: 00004508    	udf	#0x4508
10000bc78: 0000b214    	udf	#0xb214
10000bc7c: 00004b18    	udf	#0x4b18
10000bc80: 0000b268    	udf	#0xb268
10000bc84: 00004ef8    	udf	#0x4ef8
10000bc88: 0000b2a0    	udf	#0xb2a0
10000bc8c: 000052d8    	udf	#0x52d8
10000bc90: 0000b2d8    	udf	#0xb2d8
10000bc94: 000056b8    	udf	#0x56b8
10000bc98: 0000b310    	udf	#0xb310
10000bc9c: 00005a98    	udf	#0x5a98
10000bca0: 0000b348    	udf	#0xb348
10000bca4: 00005e78    	udf	#0x5e78
10000bca8: 0000b380    	udf	#0xb380
10000bcac: 000062b8    	udf	#0x62b8
10000bcb0: 0000b3b8    	udf	#0xb3b8
10000bcb4: 00006cf4    	udf	#0x6cf4
10000bcb8: 0000b428    	udf	#0xb428
10000bcbc: 000077c0    	udf	#0x77c0
10000bcc0: 0000b468    	udf	#0xb468
10000bcc4: 00007b18    	udf	#0x7b18
10000bcc8: 0000b478    	udf	#0xb478
10000bccc: 00007c08    	udf	#0x7c08
10000bcd0: 0000b488    	udf	#0xb488
10000bcd4: 00007f74    	udf	#0x7f74
10000bcd8: 0000b498    	udf	#0xb498
10000bcdc: 000080e8    	udf	#0x80e8
10000bce0: 0000b4a8    	udf	#0xb4a8
10000bce4: 000083fc    	udf	#0x83fc
10000bce8: 0000b4b8    	udf	#0xb4b8
10000bcec: 000085d0    	udf	#0x85d0
10000bcf0: 0000b4c8    	udf	#0xb4c8
10000bcf4: 000087bc    	udf	#0x87bc
10000bcf8: 0000b4fc    	udf	#0xb4fc
10000bcfc: 0000880c    	udf	#0x880c
10000bd00: 0000b50c    	udf	#0xb50c
10000bd04: 00008c90    	udf	#0x8c90
10000bd08: 0000b524    	udf	#0xb524
10000bd0c: 00008d50    	udf	#0x8d50
10000bd10: 0000b534    	udf	#0xb534
10000bd14: 00008ee8    	udf	#0x8ee8
10000bd18: 0000b544    	udf	#0xb544
10000bd1c: 00009030    	udf	#0x9030
10000bd20: 0000b550    	udf	#0xb550
10000bd24: 00009c2c    	udf	#0x9c2c
10000bd28: 0000b564    	udf	#0xb564
10000bd2c: 00009f50    	udf	#0x9f50
10000bd30: 0000b574    	udf	#0xb574
10000bd34: 0000a410    	udf	#0xa410
10000bd38: 0000b588    	udf	#0xb588
10000bd3c: 0000a848    	udf	#0xa848
10000bd40: 0000b594    	udf	#0xb594
10000bd44: 00000003    	udf	#0x3
10000bd48: 00ac000c    	<unknown>
10000bd4c: 000002bc    	udf	#0x2bc
10000bd50: 02000000    	<unknown>
10000bd54: 000000e8    	udf	#0xe8
10000bd58: 02000180    	<unknown>
10000bd5c: 000001cc    	udf	#0x1cc
10000bd60: 03000244    	<unknown>
10000bd64: 000005b8    	udf	#0x5b8
10000bd68: 01000868    	<unknown>
10000bd6c: 0000087c    	udf	#0x87c
10000bd70: 01000964    	<unknown>
10000bd74: 00000978    	udf	#0x978
10000bd78: 03000a4c    	<unknown>
10000bd7c: 03000dbc    	<unknown>
10000bd80: 0000138c    	udf	#0x138c
10000bd84: 0200171c    	<unknown>
10000bd88: 010017c8    	<unknown>
10000bd8c: 000017e8    	udf	#0x17e8
10000bd90: 03001810    	<unknown>
10000bd94: 03001bf0    	<unknown>
10000bd98: 03001fd0    	<unknown>
10000bd9c: 030023b0    	<unknown>
10000bda0: 03002790    	<unknown>
10000bda4: 03002da0    	<unknown>
10000bda8: 03003180    	<unknown>
10000bdac: 03003560    	<unknown>
10000bdb0: 03003940    	<unknown>
10000bdb4: 03003d20    	<unknown>
10000bdb8: 03004100    	<unknown>
10000bdbc: 000044e0    	udf	#0x44e0
10000bdc0: 03004540    	<unknown>
10000bdc4: 00004ee8    	udf	#0x4ee8
10000bdc8: 02004f7c    	<unknown>
10000bdcc: 00005288    	udf	#0x5288
10000bdd0: 0100537c    	<unknown>
10000bdd4: 000053bc    	udf	#0x53bc
10000bdd8: 040054e0    	mla	z0.b, p5/m, z7.b, z0.b
10000bddc: 00005510    	udf	#0x5510
10000bde0: 04005674    	mla	z20.b, p5/m, z19.b, z0.b
10000bde4: 000056a4    	udf	#0x56a4
10000bde8: 01005728    	<unknown>
10000bdec: 00005744    	udf	#0x5744
10000bdf0: 010057bc    	<unknown>
10000bdf4: 000057d4    	udf	#0x57d4
10000bdf8: 010058f0    	<unknown>
10000bdfc: 00005920    	udf	#0x5920
10000be00: 0100595c    	<unknown>
10000be04: 00005970    	udf	#0x5970
10000be08: 010059c8    	<unknown>
10000be0c: 000059dc    	udf	#0x59dc
10000be10: 02005a48    	<unknown>
10000be14: 00005b00    	udf	#0x5b00
10000be18: 01005b64    	<unknown>
10000be1c: 00005b78    	udf	#0x5b78
10000be20: 01005c04    	<unknown>
10000be24: 00005c28    	udf	#0x5c28
10000be28: 01005c4c    	<unknown>
10000be2c: 00005c60    	udf	#0x5c60
10000be30: 01005d1c    	<unknown>
10000be34: 00005d48    	udf	#0x5d48
10000be38: 02005da0    	<unknown>
10000be3c: 00005e5c    	udf	#0x5e5c
10000be40: 02005e90    	<unknown>
10000be44: 01005ed4    	<unknown>
10000be48: 00005f10    	udf	#0x5f10
10000be4c: 01006008    	<unknown>
10000be50: 00006030    	udf	#0x6030
10000be54: 01006054    	<unknown>
10000be58: 00006068    	udf	#0x6068
10000be5c: 0100608c    	<unknown>
10000be60: 000060a0    	udf	#0x60a0
10000be64: 010060f0    	<unknown>
10000be68: 00006108    	udf	#0x6108
10000be6c: 01006184    	<unknown>
10000be70: 00006198    	udf	#0x6198
10000be74: 010061e8    	<unknown>
10000be78: 020061fc    	<unknown>
10000be7c: 00006240    	udf	#0x6240
10000be80: 010062a0    	<unknown>
10000be84: 000062c0    	udf	#0x62c0
10000be88: 05006368    	orr	z8.s, z8.s, #0xfff0ffff
10000be8c: 02006370    	<unknown>
10000be90: 000063b8    	udf	#0x63b8
10000be94: 01006430    	<unknown>
10000be98: 00006450    	udf	#0x6450
10000be9c: 01006508    	<unknown>
10000bea0: 00006528    	udf	#0x6528
10000bea4: 01006578    	<unknown>
10000bea8: 0000658c    	udf	#0x658c
10000beac: 010065c0    	<unknown>
10000beb0: 000065f8    	udf	#0x65f8
10000beb4: 01006640    	<unknown>
10000beb8: 00006658    	udf	#0x6658
10000bebc: 02006684    	<unknown>
10000bec0: 000066d4    	udf	#0x66d4
10000bec4: 010067c8    	<unknown>
10000bec8: 000067ec    	udf	#0x67ec
10000becc: 01006844    	<unknown>
10000bed0: 02006858    	<unknown>
10000bed4: 02006a44    	<unknown>
10000bed8: 01006a78    	<unknown>
10000bedc: 02006a94    	<unknown>
10000bee0: 00006cd4    	udf	#0x6cd4
10000bee4: 01006d08    	<unknown>
10000bee8: 00006d20    	udf	#0x6d20
10000beec: 01006d84    	<unknown>
10000bef0: 00006da8    	udf	#0x6da8
10000bef4: 01006dd4    	<unknown>
10000bef8: 00006dec    	udf	#0x6dec
10000befc: 04006e8c    	mls	z12.b, p3/m, z20.b, z0.b
10000bf00: 00006eb8    	udf	#0x6eb8
10000bf04: 01006f04    	<unknown>
10000bf08: 02006f18    	<unknown>
10000bf0c: 00006f6c    	udf	#0x6f6c
10000bf10: 01006f90    	<unknown>
10000bf14: 05006fd0    	<unknown>
10000bf18: 02006fd8    	<unknown>
10000bf1c: 0000705c    	udf	#0x705c
10000bf20: 02007170    	<unknown>
10000bf24: 000071d8    	udf	#0x71d8
10000bf28: 020072b8    	<unknown>
10000bf2c: 000074a8    	udf	#0x74a8
10000bf30: 01007624    	<unknown>
10000bf34: 0000765c    	udf	#0x765c
10000bf38: 04007770    	mls	z16.b, p5/m, z27.b, z0.b
10000bf3c: 00007790    	udf	#0x7790
10000bf40: 040077f8    	mls	z24.b, p5/m, z31.b, z0.b
10000bf44: 0000782c    	udf	#0x782c
10000bf48: 01007900    	<unknown>
10000bf4c: 00007914    	udf	#0x7914
10000bf50: 01007a34    	<unknown>
10000bf54: 00007a4c    	udf	#0x7a4c
10000bf58: 01007c64    	<unknown>
10000bf5c: 00007c84    	udf	#0x7c84
10000bf60: 01007d48    	<unknown>
10000bf64: 00007d5c    	udf	#0x7d5c
10000bf68: 01007e60    	<unknown>
10000bf6c: 00007e74    	udf	#0x7e74
10000bf70: 01007e98    	<unknown>
10000bf74: 05007eac    	orr	z12.b, z12.b, #0x7e
10000bf78: 02007eb4    	<unknown>
10000bf7c: 00007f18    	udf	#0x7f18
10000bf80: 010080cc    	<unknown>
10000bf84: 000080fc    	udf	#0x80fc
10000bf88: 010081a0    	<unknown>
10000bf8c: 000081b4    	udf	#0x81b4
10000bf90: 020081d8    	<unknown>
10000bf94: 000082ac    	udf	#0x82ac
10000bf98: 010083a8    	<unknown>
10000bf9c: 000083c0    	udf	#0x83c0
10000bfa0: 010083f4    	<unknown>
10000bfa4: 00008418    	udf	#0x8418
10000bfa8: 01008534    	<unknown>
10000bfac: 0000854c    	udf	#0x854c
10000bfb0: 040085c4    	asr	z4.b, p1/m, z4.b, #0x2
10000bfb4: 000085f0    	udf	#0x85f0
10000bfb8: 02008698    	<unknown>
10000bfbc: 00008700    	udf	#0x8700
10000bfc0: 0100874c    	<unknown>
10000bfc4: 04008760    	asr	z0.h, p1/m, z0.h, #0x5
10000bfc8: 000087b0    	udf	#0x87b0
10000bfcc: 01008814    	<unknown>
10000bfd0: 00008834    	udf	#0x8834
10000bfd4: 01008868    	<unknown>
10000bfd8: 00008898    	udf	#0x8898
10000bfdc: 02008ad0    	<unknown>
10000bfe0: 00008b40    	udf	#0x8b40
10000bfe4: 01008c08    	<unknown>
10000bfe8: 00008c4c    	udf	#0x8c4c
10000bfec: 01008d50    	<unknown>
10000bff0: 00008d68    	udf	#0x8d68
10000bff4: 04008e5c    	asr	z28.h, p3/m, z28.h, #0xe
10000bff8: 00008ec0    	udf	#0x8ec0
10000bffc: 01008ee4    	<unknown>

Disassembly of section __DATA_CONST,__got:
000000010000c000 <__got>:
10000c000: 00000000    	udf	#0x0
10000c004: 80100000    	<unknown>
10000c008: 00000001    	udf	#0x1
10000c00c: 80100000    	<unknown>
10000c010: 00000002    	udf	#0x2
10000c014: 80100000    	<unknown>
10000c018: 00000003    	udf	#0x3
10000c01c: 80100000    	<unknown>
10000c020: 00000004    	udf	#0x4
10000c024: 80100000    	<unknown>
10000c028: 00000005    	udf	#0x5
10000c02c: 80100000    	<unknown>
10000c030: 00000006    	udf	#0x6
10000c034: 80100000    	<unknown>
10000c038: 00000007    	udf	#0x7
10000c03c: 80100000    	<unknown>
10000c040: 00000008    	udf	#0x8
10000c044: 80100000    	<unknown>
10000c048: 00000009    	udf	#0x9
10000c04c: 80100000    	<unknown>
10000c050: 0000000a    	udf	#0xa
10000c054: 80100000    	<unknown>
10000c058: 0000000b    	udf	#0xb
10000c05c: 80100000    	<unknown>
10000c060: 0000000c    	udf	#0xc
10000c064: 80100000    	<unknown>
10000c068: 0000000d    	udf	#0xd
10000c06c: 80100000    	<unknown>
10000c070: 0000000e    	udf	#0xe
10000c074: 80100000    	<unknown>
10000c078: 0000000f    	udf	#0xf
10000c07c: 80100000    	<unknown>
10000c080: 00000010    	udf	#0x10
10000c084: 80100000    	<unknown>
10000c088: 00000011    	udf	#0x11
10000c08c: 80100000    	<unknown>
10000c090: 00000012    	udf	#0x12
10000c094: 80100000    	<unknown>
10000c098: 00000013    	udf	#0x13
10000c09c: 80100000    	<unknown>
10000c0a0: 00000014    	udf	#0x14
10000c0a4: 80100000    	<unknown>
10000c0a8: 00000015    	udf	#0x15
10000c0ac: 80100000    	<unknown>
10000c0b0: 00000016    	udf	#0x16
10000c0b4: 80100000    	<unknown>
10000c0b8: 00000017    	udf	#0x17
10000c0bc: 80100000    	<unknown>
10000c0c0: 00000018    	udf	#0x18
10000c0c4: 80100000    	<unknown>
10000c0c8: 00000019    	udf	#0x19
10000c0cc: 80100000    	<unknown>
10000c0d0: 0000001a    	udf	#0x1a
10000c0d4: 80100000    	<unknown>
10000c0d8: 0000001b    	udf	#0x1b
10000c0dc: 80100000    	<unknown>
10000c0e0: 0000001c    	udf	#0x1c
10000c0e4: 80100000    	<unknown>
10000c0e8: 0000001d    	udf	#0x1d
10000c0ec: 80100000    	<unknown>
10000c0f0: 0000001e    	udf	#0x1e
10000c0f4: 80100000    	<unknown>
10000c0f8: 0000001f    	udf	#0x1f
10000c0fc: 80100000    	<unknown>
10000c100: 00000020    	udf	#0x20
10000c104: 80100000    	<unknown>
10000c108: 00000021    	udf	#0x21
10000c10c: 80100000    	<unknown>
10000c110: 00000022    	udf	#0x22
10000c114: 80100000    	<unknown>
10000c118: 00000023    	udf	#0x23
10000c11c: 80100000    	<unknown>
10000c120: 00000024    	udf	#0x24
10000c124: 80100000    	<unknown>
10000c128: 00000025    	udf	#0x25
10000c12c: 80100000    	<unknown>
10000c130: 00000026    	udf	#0x26
10000c134: 80100000    	<unknown>
10000c138: 00000027    	udf	#0x27
10000c13c: 80100000    	<unknown>
10000c140: 00000028    	udf	#0x28
10000c144: 80100000    	<unknown>
10000c148: 00000029    	udf	#0x29
10000c14c: 80100000    	<unknown>
10000c150: 0000002a    	udf	#0x2a
10000c154: 80100000    	<unknown>
10000c158: 0000002b    	udf	#0x2b
10000c15c: 80100000    	<unknown>
10000c160: 0000002c    	udf	#0x2c
10000c164: 80100000    	<unknown>
10000c168: 0000002d    	udf	#0x2d
10000c16c: 80100000    	<unknown>
10000c170: 0000002e    	udf	#0x2e
10000c174: 80100000    	<unknown>
10000c178: 0000002f    	udf	#0x2f
10000c17c: 80100000    	<unknown>
10000c180: 00000030    	udf	#0x30
10000c184: 80100000    	<unknown>
10000c188: 00000031    	udf	#0x31
10000c18c: 80100000    	<unknown>
10000c190: 00000032    	udf	#0x32
10000c194: 80100000    	<unknown>
10000c198: 00000033    	udf	#0x33
10000c19c: 80100000    	<unknown>
10000c1a0: 00000034    	udf	#0x34
10000c1a4: 80100000    	<unknown>
10000c1a8: 00000035    	udf	#0x35
10000c1ac: 80100000    	<unknown>
10000c1b0: 00000036    	udf	#0x36
10000c1b4: 80100000    	<unknown>
10000c1b8: 00000037    	udf	#0x37
10000c1bc: 80100000    	<unknown>
10000c1c0: 00000038    	udf	#0x38
10000c1c4: 80100000    	<unknown>
10000c1c8: 00000039    	udf	#0x39
10000c1cc: 80100000    	<unknown>
10000c1d0: 0000003a    	udf	#0x3a
10000c1d4: 80100000    	<unknown>
10000c1d8: 0000003b    	udf	#0x3b
10000c1dc: 80100000    	<unknown>
10000c1e0: 0000003c    	udf	#0x3c
10000c1e4: 80100000    	<unknown>
10000c1e8: 0000003d    	udf	#0x3d
10000c1ec: 80100000    	<unknown>
10000c1f0: 0000003e    	udf	#0x3e
10000c1f4: 80100000    	<unknown>
10000c1f8: 0000003f    	udf	#0x3f
10000c1fc: 80100000    	<unknown>
10000c200: 00000040    	udf	#0x40
10000c204: 80100000    	<unknown>
10000c208: 00000041    	udf	#0x41
10000c20c: 80100000    	<unknown>
10000c210: 00000042    	udf	#0x42
10000c214: 80100000    	<unknown>
10000c218: 00000043    	udf	#0x43
10000c21c: 80100000    	<unknown>
10000c220: 00000044    	udf	#0x44
10000c224: 80100000    	<unknown>
10000c228: 00000045    	udf	#0x45
10000c22c: 80100000    	<unknown>
10000c230: 00000046    	udf	#0x46
10000c234: 80100000    	<unknown>
10000c238: 00000047    	udf	#0x47
10000c23c: 80100000    	<unknown>
10000c240: 00000048    	udf	#0x48
10000c244: 80100000    	<unknown>
10000c248: 00000049    	udf	#0x49
10000c24c: 80100000    	<unknown>
10000c250: 0000004a    	udf	#0x4a
10000c254: 80100000    	<unknown>
10000c258: 0000004b    	udf	#0x4b
10000c25c: 80100000    	<unknown>
10000c260: 0000004c    	udf	#0x4c
10000c264: 80100000    	<unknown>
10000c268: 0000004d    	udf	#0x4d
10000c26c: 80100000    	<unknown>
10000c270: 0000004e    	udf	#0x4e
10000c274: 80100000    	<unknown>
10000c278: 0000004f    	udf	#0x4f
10000c27c: 80100000    	<unknown>
10000c280: 00000050    	udf	#0x50
10000c284: 80000000    	<unknown>
