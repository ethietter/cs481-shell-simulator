
ref/simsh_ref:     file format elf64-x86-64


Disassembly of section .init:

00000000004008e8 <.init>:
  4008e8:	48 83 ec 08          	sub    $0x8,%rsp
  4008ec:	e8 9b 01 00 00       	callq  400a8c <fflush@plt+0x3c>
  4008f1:	e8 fa 01 00 00       	callq  400af0 <fflush@plt+0xa0>
  4008f6:	e8 55 10 00 00       	callq  401950 <fflush@plt+0xf00>
  4008fb:	48 83 c4 08          	add    $0x8,%rsp
  4008ff:	c3                   	retq   

Disassembly of section .plt:

0000000000400900 <dup2@plt-0x10>:
  400900:	ff 35 ca 15 20 00    	pushq  0x2015ca(%rip)        # 601ed0 <fflush@plt+0x201480>
  400906:	ff 25 cc 15 20 00    	jmpq   *0x2015cc(%rip)        # 601ed8 <fflush@plt+0x201488>
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400910 <dup2@plt>:
  400910:	ff 25 ca 15 20 00    	jmpq   *0x2015ca(%rip)        # 601ee0 <fflush@plt+0x201490>
  400916:	68 00 00 00 00       	pushq  $0x0
  40091b:	e9 e0 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400920 <printf@plt>:
  400920:	ff 25 c2 15 20 00    	jmpq   *0x2015c2(%rip)        # 601ee8 <fflush@plt+0x201498>
  400926:	68 01 00 00 00       	pushq  $0x1
  40092b:	e9 d0 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400930 <close@plt>:
  400930:	ff 25 ba 15 20 00    	jmpq   *0x2015ba(%rip)        # 601ef0 <fflush@plt+0x2014a0>
  400936:	68 02 00 00 00       	pushq  $0x2
  40093b:	e9 c0 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400940 <wait@plt>:
  400940:	ff 25 b2 15 20 00    	jmpq   *0x2015b2(%rip)        # 601ef8 <fflush@plt+0x2014a8>
  400946:	68 03 00 00 00       	pushq  $0x3
  40094b:	e9 b0 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400950 <puts@plt>:
  400950:	ff 25 aa 15 20 00    	jmpq   *0x2015aa(%rip)        # 601f00 <fflush@plt+0x2014b0>
  400956:	68 04 00 00 00       	pushq  $0x4
  40095b:	e9 a0 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400960 <execvp@plt>:
  400960:	ff 25 a2 15 20 00    	jmpq   *0x2015a2(%rip)        # 601f08 <fflush@plt+0x2014b8>
  400966:	68 05 00 00 00       	pushq  $0x5
  40096b:	e9 90 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400970 <exit@plt>:
  400970:	ff 25 9a 15 20 00    	jmpq   *0x20159a(%rip)        # 601f10 <fflush@plt+0x2014c0>
  400976:	68 06 00 00 00       	pushq  $0x6
  40097b:	e9 80 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400980 <malloc@plt>:
  400980:	ff 25 92 15 20 00    	jmpq   *0x201592(%rip)        # 601f18 <fflush@plt+0x2014c8>
  400986:	68 07 00 00 00       	pushq  $0x7
  40098b:	e9 70 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400990 <__libc_start_main@plt>:
  400990:	ff 25 8a 15 20 00    	jmpq   *0x20158a(%rip)        # 601f20 <fflush@plt+0x2014d0>
  400996:	68 08 00 00 00       	pushq  $0x8
  40099b:	e9 60 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009a0 <fgets@plt>:
  4009a0:	ff 25 82 15 20 00    	jmpq   *0x201582(%rip)        # 601f28 <fflush@plt+0x2014d8>
  4009a6:	68 09 00 00 00       	pushq  $0x9
  4009ab:	e9 50 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009b0 <free@plt>:
  4009b0:	ff 25 7a 15 20 00    	jmpq   *0x20157a(%rip)        # 601f30 <fflush@plt+0x2014e0>
  4009b6:	68 0a 00 00 00       	pushq  $0xa
  4009bb:	e9 40 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009c0 <pipe@plt>:
  4009c0:	ff 25 72 15 20 00    	jmpq   *0x201572(%rip)        # 601f38 <fflush@plt+0x2014e8>
  4009c6:	68 0b 00 00 00       	pushq  $0xb
  4009cb:	e9 30 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009d0 <strdup@plt>:
  4009d0:	ff 25 6a 15 20 00    	jmpq   *0x20156a(%rip)        # 601f40 <fflush@plt+0x2014f0>
  4009d6:	68 0c 00 00 00       	pushq  $0xc
  4009db:	e9 20 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009e0 <__stack_chk_fail@plt>:
  4009e0:	ff 25 62 15 20 00    	jmpq   *0x201562(%rip)        # 601f48 <fflush@plt+0x2014f8>
  4009e6:	68 0d 00 00 00       	pushq  $0xd
  4009eb:	e9 10 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

00000000004009f0 <strcmp@plt>:
  4009f0:	ff 25 5a 15 20 00    	jmpq   *0x20155a(%rip)        # 601f50 <fflush@plt+0x201500>
  4009f6:	68 0e 00 00 00       	pushq  $0xe
  4009fb:	e9 00 ff ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a00 <strtok@plt>:
  400a00:	ff 25 52 15 20 00    	jmpq   *0x201552(%rip)        # 601f58 <fflush@plt+0x201508>
  400a06:	68 0f 00 00 00       	pushq  $0xf
  400a0b:	e9 f0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a10 <fork@plt>:
  400a10:	ff 25 4a 15 20 00    	jmpq   *0x20154a(%rip)        # 601f60 <fflush@plt+0x201510>
  400a16:	68 10 00 00 00       	pushq  $0x10
  400a1b:	e9 e0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a20 <realloc@plt>:
  400a20:	ff 25 42 15 20 00    	jmpq   *0x201542(%rip)        # 601f68 <fflush@plt+0x201518>
  400a26:	68 11 00 00 00       	pushq  $0x11
  400a2b:	e9 d0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a30 <perror@plt>:
  400a30:	ff 25 3a 15 20 00    	jmpq   *0x20153a(%rip)        # 601f70 <fflush@plt+0x201520>
  400a36:	68 12 00 00 00       	pushq  $0x12
  400a3b:	e9 c0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a40 <open@plt>:
  400a40:	ff 25 32 15 20 00    	jmpq   *0x201532(%rip)        # 601f78 <fflush@plt+0x201528>
  400a46:	68 13 00 00 00       	pushq  $0x13
  400a4b:	e9 b0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

0000000000400a50 <fflush@plt>:
  400a50:	ff 25 2a 15 20 00    	jmpq   *0x20152a(%rip)        # 601f80 <fflush@plt+0x201530>
  400a56:	68 14 00 00 00       	pushq  $0x14
  400a5b:	e9 a0 fe ff ff       	jmpq   400900 <dup2@plt-0x10>

Disassembly of section .text:

0000000000400a60 <.text>:
  400a60:	31 ed                	xor    %ebp,%ebp
  400a62:	49 89 d1             	mov    %rdx,%r9
  400a65:	5e                   	pop    %rsi
  400a66:	48 89 e2             	mov    %rsp,%rdx
  400a69:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400a6d:	50                   	push   %rax
  400a6e:	54                   	push   %rsp
  400a6f:	49 c7 c0 b0 18 40 00 	mov    $0x4018b0,%r8
  400a76:	48 c7 c1 c0 18 40 00 	mov    $0x4018c0,%rcx
  400a7d:	48 c7 c7 18 0b 40 00 	mov    $0x400b18,%rdi
  400a84:	e8 07 ff ff ff       	callq  400990 <__libc_start_main@plt>
  400a89:	f4                   	hlt    
  400a8a:	90                   	nop
  400a8b:	90                   	nop
  400a8c:	48 83 ec 08          	sub    $0x8,%rsp
  400a90:	48 8b 05 29 14 20 00 	mov    0x201429(%rip),%rax        # 601ec0 <fflush@plt+0x201470>
  400a97:	48 85 c0             	test   %rax,%rax
  400a9a:	74 02                	je     400a9e <fflush@plt+0x4e>
  400a9c:	ff d0                	callq  *%rax
  400a9e:	48 83 c4 08          	add    $0x8,%rsp
  400aa2:	c3                   	retq   
  400aa3:	90                   	nop
  400aa4:	90                   	nop
  400aa5:	90                   	nop
  400aa6:	90                   	nop
  400aa7:	90                   	nop
  400aa8:	90                   	nop
  400aa9:	90                   	nop
  400aaa:	90                   	nop
  400aab:	90                   	nop
  400aac:	90                   	nop
  400aad:	90                   	nop
  400aae:	90                   	nop
  400aaf:	90                   	nop
  400ab0:	80 3d 01 15 20 00 00 	cmpb   $0x0,0x201501(%rip)        # 601fb8 <stdout+0x8>
  400ab7:	55                   	push   %rbp
  400ab8:	48 89 e5             	mov    %rsp,%rbp
  400abb:	74 10                	je     400acd <fflush@plt+0x7d>
  400abd:	eb 24                	jmp    400ae3 <fflush@plt+0x93>
  400abf:	90                   	nop
  400ac0:	48 83 c0 08          	add    $0x8,%rax
  400ac4:	48 89 05 cd 14 20 00 	mov    %rax,0x2014cd(%rip)        # 601f98 <fflush@plt+0x201548>
  400acb:	ff d2                	callq  *%rdx
  400acd:	48 8b 05 c4 14 20 00 	mov    0x2014c4(%rip),%rax        # 601f98 <fflush@plt+0x201548>
  400ad4:	48 8b 10             	mov    (%rax),%rdx
  400ad7:	48 85 d2             	test   %rdx,%rdx
  400ada:	75 e4                	jne    400ac0 <fflush@plt+0x70>
  400adc:	c6 05 d5 14 20 00 01 	movb   $0x1,0x2014d5(%rip)        # 601fb8 <stdout+0x8>
  400ae3:	c9                   	leaveq 
  400ae4:	c3                   	retq   
  400ae5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400aec:	00 00 00 00 
  400af0:	55                   	push   %rbp
  400af1:	48 83 3d 1f 12 20 00 	cmpq   $0x0,0x20121f(%rip)        # 601d18 <fflush@plt+0x2012c8>
  400af8:	00 
  400af9:	48 89 e5             	mov    %rsp,%rbp
  400afc:	74 16                	je     400b14 <fflush@plt+0xc4>
  400afe:	b8 00 00 00 00       	mov    $0x0,%eax
  400b03:	48 85 c0             	test   %rax,%rax
  400b06:	74 0c                	je     400b14 <fflush@plt+0xc4>
  400b08:	bf 18 1d 60 00       	mov    $0x601d18,%edi
  400b0d:	49 89 c3             	mov    %rax,%r11
  400b10:	c9                   	leaveq 
  400b11:	41 ff e3             	jmpq   *%r11
  400b14:	c9                   	leaveq 
  400b15:	c3                   	retq   
  400b16:	90                   	nop
  400b17:	90                   	nop
  400b18:	55                   	push   %rbp
  400b19:	48 89 e5             	mov    %rsp,%rbp
  400b1c:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  400b23:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400b2a:	00 00 
  400b2c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b30:	31 c0                	xor    %eax,%eax
  400b32:	48 89 e0             	mov    %rsp,%rax
  400b35:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  400b3c:	8b 05 5e 0e 00 00    	mov    0xe5e(%rip),%eax        # 4019a0 <fflush@plt+0xf50>
  400b42:	48 98                	cltq   
  400b44:	48 83 c0 0f          	add    $0xf,%rax
  400b48:	48 83 c0 0f          	add    $0xf,%rax
  400b4c:	48 c1 e8 04          	shr    $0x4,%rax
  400b50:	48 c1 e0 04          	shl    $0x4,%rax
  400b54:	48 29 c4             	sub    %rax,%rsp
  400b57:	48 89 a5 68 ff ff ff 	mov    %rsp,-0x98(%rbp)
  400b5e:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  400b65:	48 83 c0 0f          	add    $0xf,%rax
  400b69:	48 c1 e8 04          	shr    $0x4,%rax
  400b6d:	48 c1 e0 04          	shl    $0x4,%rax
  400b71:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  400b78:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
  400b7f:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  400b83:	8b 05 1b 0e 00 00    	mov    0xe1b(%rip),%eax        # 4019a4 <fflush@plt+0xf54>
  400b89:	48 98                	cltq   
  400b8b:	48 83 c0 01          	add    $0x1,%rax
  400b8f:	48 c1 e0 03          	shl    $0x3,%rax
  400b93:	48 83 c0 0f          	add    $0xf,%rax
  400b97:	48 83 c0 0f          	add    $0xf,%rax
  400b9b:	48 c1 e8 04          	shr    $0x4,%rax
  400b9f:	48 c1 e0 04          	shl    $0x4,%rax
  400ba3:	48 29 c4             	sub    %rax,%rsp
  400ba6:	48 89 a5 70 ff ff ff 	mov    %rsp,-0x90(%rbp)
  400bad:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  400bb4:	48 83 c0 0f          	add    $0xf,%rax
  400bb8:	48 c1 e8 04          	shr    $0x4,%rax
  400bbc:	48 c1 e0 04          	shl    $0x4,%rax
  400bc0:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  400bc7:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  400bce:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  400bd2:	e8 51 0b 00 00       	callq  401728 <fflush@plt+0xcd8>
  400bd7:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  400bdb:	e8 48 0b 00 00       	callq  401728 <fflush@plt+0xcd8>
  400be0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  400be4:	bf b0 19 40 00       	mov    $0x4019b0,%edi
  400be9:	b8 00 00 00 00       	mov    $0x0,%eax
  400bee:	e8 2d fd ff ff       	callq  400920 <printf@plt>
  400bf3:	48 8b 3d b6 13 20 00 	mov    0x2013b6(%rip),%rdi        # 601fb0 <stdout>
  400bfa:	e8 51 fe ff ff       	callq  400a50 <fflush@plt>
  400bff:	e9 c7 05 00 00       	jmpq   4011cb <fflush@plt+0x77b>
  400c04:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  400c08:	e8 f3 09 00 00       	callq  401600 <fflush@plt+0xbb0>
  400c0d:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  400c11:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400c15:	8b 40 08             	mov    0x8(%rax),%eax
  400c18:	85 c0                	test   %eax,%eax
  400c1a:	75 29                	jne    400c45 <fflush@plt+0x1f5>
  400c1c:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  400c20:	e8 d6 0a 00 00       	callq  4016fb <fflush@plt+0xcab>
  400c25:	bf b0 19 40 00       	mov    $0x4019b0,%edi
  400c2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c2f:	e8 ec fc ff ff       	callq  400920 <printf@plt>
  400c34:	48 8b 3d 75 13 20 00 	mov    0x201375(%rip),%rdi        # 601fb0 <stdout>
  400c3b:	e8 10 fe ff ff       	callq  400a50 <fflush@plt>
  400c40:	e9 86 05 00 00       	jmpq   4011cb <fflush@plt+0x77b>
  400c45:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400c49:	48 8b 00             	mov    (%rax),%rax
  400c4c:	48 8b 38             	mov    (%rax),%rdi
  400c4f:	be b7 19 40 00       	mov    $0x4019b7,%esi
  400c54:	b8 00 00 00 00       	mov    $0x0,%eax
  400c59:	e8 92 fd ff ff       	callq  4009f0 <strcmp@plt>
  400c5e:	85 c0                	test   %eax,%eax
  400c60:	0f 84 a4 05 00 00    	je     40120a <fflush@plt+0x7ba>
  400c66:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  400c6a:	e8 db 05 00 00       	callq  40124a <fflush@plt+0x7fa>
  400c6f:	89 c2                	mov    %eax,%edx
  400c71:	8b 05 35 0d 00 00    	mov    0xd35(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  400c77:	39 c2                	cmp    %eax,%edx
  400c79:	75 29                	jne    400ca4 <fflush@plt+0x254>
  400c7b:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  400c7f:	e8 77 0a 00 00       	callq  4016fb <fflush@plt+0xcab>
  400c84:	bf b0 19 40 00       	mov    $0x4019b0,%edi
  400c89:	b8 00 00 00 00       	mov    $0x0,%eax
  400c8e:	e8 8d fc ff ff       	callq  400920 <printf@plt>
  400c93:	48 8b 3d 16 13 20 00 	mov    0x201316(%rip),%rdi        # 601fb0 <stdout>
  400c9a:	e8 b1 fd ff ff       	callq  400a50 <fflush@plt>
  400c9f:	e9 27 05 00 00       	jmpq   4011cb <fflush@plt+0x77b>
  400ca4:	8b 05 fe 0c 00 00    	mov    0xcfe(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400caa:	66 89 45 f6          	mov    %ax,-0xa(%rbp)
  400cae:	8b 05 f8 0c 00 00    	mov    0xcf8(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  400cb4:	66 89 45 f0          	mov    %ax,-0x10(%rbp)
  400cb8:	0f b7 45 f0          	movzwl -0x10(%rbp),%eax
  400cbc:	66 89 45 ee          	mov    %ax,-0x12(%rbp)
  400cc0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  400cc7:	e9 4d 04 00 00       	jmpq   401119 <fflush@plt+0x6c9>
  400ccc:	0f bf 55 f6          	movswl -0xa(%rbp),%edx
  400cd0:	8b 05 d2 0c 00 00    	mov    0xcd2(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400cd6:	39 c2                	cmp    %eax,%edx
  400cd8:	0f 85 91 00 00 00    	jne    400d6f <fflush@plt+0x31f>
  400cde:	0f bf 55 f0          	movswl -0x10(%rbp),%edx
  400ce2:	8b 05 c0 0c 00 00    	mov    0xcc0(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400ce8:	39 c2                	cmp    %eax,%edx
  400cea:	75 08                	jne    400cf4 <fflush@plt+0x2a4>
  400cec:	8b 7d e0             	mov    -0x20(%rbp),%edi
  400cef:	e8 3c fc ff ff       	callq  400930 <close@plt>
  400cf4:	0f bf 55 ee          	movswl -0x12(%rbp),%edx
  400cf8:	8b 05 aa 0c 00 00    	mov    0xcaa(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400cfe:	39 c2                	cmp    %eax,%edx
  400d00:	75 14                	jne    400d16 <fflush@plt+0x2c6>
  400d02:	8b 45 a0             	mov    -0x60(%rbp),%eax
  400d05:	89 45 e0             	mov    %eax,-0x20(%rbp)
  400d08:	66 c7 45 f0 01 00    	movw   $0x1,-0x10(%rbp)
  400d0e:	8b 7d a4             	mov    -0x5c(%rbp),%edi
  400d11:	e8 1a fc ff ff       	callq  400930 <close@plt>
  400d16:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%rbp)
  400d1c:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%rbp)
  400d22:	66 c7 45 ee 00 00    	movw   $0x0,-0x12(%rbp)
  400d28:	66 c7 45 f4 01 00    	movw   $0x1,-0xc(%rbp)
  400d2e:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  400d35:	00 
  400d36:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  400d3d:	00 
  400d3e:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
  400d45:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  400d48:	83 ee 01             	sub    $0x1,%esi
  400d4b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400d4f:	48 8b 10             	mov    (%rax),%rdx
  400d52:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400d55:	48 c1 e0 03          	shl    $0x3,%rax
  400d59:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400d5d:	48 8b 08             	mov    (%rax),%rcx
  400d60:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  400d64:	89 f0                	mov    %esi,%eax
  400d66:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  400d6a:	e9 b0 01 00 00       	jmpq   400f1f <fflush@plt+0x4cf>
  400d6f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400d73:	48 8b 10             	mov    (%rax),%rdx
  400d76:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400d79:	48 c1 e0 03          	shl    $0x3,%rax
  400d7d:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400d81:	48 8b 38             	mov    (%rax),%rdi
  400d84:	be bc 19 40 00       	mov    $0x4019bc,%esi
  400d89:	b8 00 00 00 00       	mov    $0x0,%eax
  400d8e:	e8 5d fc ff ff       	callq  4009f0 <strcmp@plt>
  400d93:	85 c0                	test   %eax,%eax
  400d95:	75 30                	jne    400dc7 <fflush@plt+0x377>
  400d97:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  400d9b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400d9f:	48 8b 10             	mov    (%rax),%rdx
  400da2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400da5:	48 c1 e0 03          	shl    $0x3,%rax
  400da9:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400dad:	48 8b 00             	mov    (%rax),%rax
  400db0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  400db4:	c7 45 dc c1 00 00 00 	movl   $0xc1,-0x24(%rbp)
  400dbb:	c7 45 d8 80 01 00 00 	movl   $0x180,-0x28(%rbp)
  400dc2:	e9 58 01 00 00       	jmpq   400f1f <fflush@plt+0x4cf>
  400dc7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400dcb:	48 8b 10             	mov    (%rax),%rdx
  400dce:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400dd1:	48 c1 e0 03          	shl    $0x3,%rax
  400dd5:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400dd9:	48 8b 38             	mov    (%rax),%rdi
  400ddc:	be be 19 40 00       	mov    $0x4019be,%esi
  400de1:	b8 00 00 00 00       	mov    $0x0,%eax
  400de6:	e8 05 fc ff ff       	callq  4009f0 <strcmp@plt>
  400deb:	85 c0                	test   %eax,%eax
  400ded:	75 29                	jne    400e18 <fflush@plt+0x3c8>
  400def:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  400df3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400df7:	48 8b 10             	mov    (%rax),%rdx
  400dfa:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400dfd:	48 c1 e0 03          	shl    $0x3,%rax
  400e01:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400e05:	48 8b 00             	mov    (%rax),%rax
  400e08:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  400e0c:	c7 45 dc 41 04 00 00 	movl   $0x441,-0x24(%rbp)
  400e13:	e9 07 01 00 00       	jmpq   400f1f <fflush@plt+0x4cf>
  400e18:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400e1c:	48 8b 10             	mov    (%rax),%rdx
  400e1f:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e22:	48 c1 e0 03          	shl    $0x3,%rax
  400e26:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400e2a:	48 8b 38             	mov    (%rax),%rdi
  400e2d:	be c1 19 40 00       	mov    $0x4019c1,%esi
  400e32:	b8 00 00 00 00       	mov    $0x0,%eax
  400e37:	e8 b4 fb ff ff       	callq  4009f0 <strcmp@plt>
  400e3c:	85 c0                	test   %eax,%eax
  400e3e:	75 22                	jne    400e62 <fflush@plt+0x412>
  400e40:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  400e44:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400e48:	48 8b 10             	mov    (%rax),%rdx
  400e4b:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e4e:	48 c1 e0 03          	shl    $0x3,%rax
  400e52:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400e56:	48 8b 00             	mov    (%rax),%rax
  400e59:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  400e5d:	e9 bd 00 00 00       	jmpq   400f1f <fflush@plt+0x4cf>
  400e62:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400e66:	48 8b 10             	mov    (%rax),%rdx
  400e69:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e6c:	48 c1 e0 03          	shl    $0x3,%rax
  400e70:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400e74:	48 8b 38             	mov    (%rax),%rdi
  400e77:	be c3 19 40 00       	mov    $0x4019c3,%esi
  400e7c:	b8 00 00 00 00       	mov    $0x0,%eax
  400e81:	e8 6a fb ff ff       	callq  4009f0 <strcmp@plt>
  400e86:	85 c0                	test   %eax,%eax
  400e88:	75 11                	jne    400e9b <fflush@plt+0x44b>
  400e8a:	66 c7 45 f2 01 00    	movw   $0x1,-0xe(%rbp)
  400e90:	66 c7 45 f4 00 00    	movw   $0x0,-0xc(%rbp)
  400e96:	e9 84 00 00 00       	jmpq   400f1f <fflush@plt+0x4cf>
  400e9b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400e9f:	48 8b 10             	mov    (%rax),%rdx
  400ea2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400ea5:	48 c1 e0 03          	shl    $0x3,%rax
  400ea9:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400ead:	48 8b 38             	mov    (%rax),%rdi
  400eb0:	be c5 19 40 00       	mov    $0x4019c5,%esi
  400eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  400eba:	e8 31 fb ff ff       	callq  4009f0 <strcmp@plt>
  400ebf:	85 c0                	test   %eax,%eax
  400ec1:	75 33                	jne    400ef6 <fflush@plt+0x4a6>
  400ec3:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
  400ec7:	e8 f4 fa ff ff       	callq  4009c0 <pipe@plt>
  400ecc:	83 f8 ff             	cmp    $0xffffffff,%eax
  400ecf:	75 0f                	jne    400ee0 <fflush@plt+0x490>
  400ed1:	bf c7 19 40 00       	mov    $0x4019c7,%edi
  400ed6:	e8 55 fb ff ff       	callq  400a30 <perror@plt>
  400edb:	e9 49 02 00 00       	jmpq   401129 <fflush@plt+0x6d9>
  400ee0:	8b 05 c2 0a 00 00    	mov    0xac2(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400ee6:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
  400eea:	8b 05 b8 0a 00 00    	mov    0xab8(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400ef0:	66 89 45 ee          	mov    %ax,-0x12(%rbp)
  400ef4:	eb 29                	jmp    400f1f <fflush@plt+0x4cf>
  400ef6:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  400efa:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  400efd:	83 ee 01             	sub    $0x1,%esi
  400f00:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400f04:	48 8b 10             	mov    (%rax),%rdx
  400f07:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400f0a:	48 c1 e0 03          	shl    $0x3,%rax
  400f0e:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  400f12:	48 8b 08             	mov    (%rax),%rcx
  400f15:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  400f19:	89 f0                	mov    %esi,%eax
  400f1b:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
  400f1f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400f23:	8b 40 08             	mov    0x8(%rax),%eax
  400f26:	83 e8 01             	sub    $0x1,%eax
  400f29:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  400f2c:	75 0a                	jne    400f38 <fflush@plt+0x4e8>
  400f2e:	8b 05 74 0a 00 00    	mov    0xa74(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400f34:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
  400f38:	0f bf 55 f2          	movswl -0xe(%rbp),%edx
  400f3c:	8b 05 66 0a 00 00    	mov    0xa66(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400f42:	39 c2                	cmp    %eax,%edx
  400f44:	0f 85 cb 01 00 00    	jne    401115 <fflush@plt+0x6c5>
  400f4a:	8b 05 58 0a 00 00    	mov    0xa58(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400f50:	66 89 45 f6          	mov    %ax,-0xa(%rbp)
  400f54:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400f57:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  400f5b:	89 c0                	mov    %eax,%eax
  400f5d:	48 c7 04 c2 00 00 00 	movq   $0x0,(%rdx,%rax,8)
  400f64:	00 
  400f65:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
  400f6c:	eb 04                	jmp    400f72 <fflush@plt+0x522>
  400f6e:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
  400f72:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400f75:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400f78:	72 f4                	jb     400f6e <fflush@plt+0x51e>
  400f7a:	e8 91 fa ff ff       	callq  400a10 <fork@plt>
  400f7f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  400f82:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
  400f86:	0f 85 71 01 00 00    	jne    4010fd <fflush@plt+0x6ad>
  400f8c:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  400f91:	74 5f                	je     400ff2 <fflush@plt+0x5a2>
  400f93:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  400f97:	be 00 00 00 00       	mov    $0x0,%esi
  400f9c:	b8 00 00 00 00       	mov    $0x0,%eax
  400fa1:	e8 9a fa ff ff       	callq  400a40 <open@plt>
  400fa6:	89 45 cc             	mov    %eax,-0x34(%rbp)
  400fa9:	83 7d cc ff          	cmpl   $0xffffffff,-0x34(%rbp)
  400fad:	75 13                	jne    400fc2 <fflush@plt+0x572>
  400faf:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  400fb3:	e8 78 fa ff ff       	callq  400a30 <perror@plt>
  400fb8:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  400fbd:	e8 ae f9 ff ff       	callq  400970 <exit@plt>
  400fc2:	8b 7d cc             	mov    -0x34(%rbp),%edi
  400fc5:	be 00 00 00 00       	mov    $0x0,%esi
  400fca:	e8 41 f9 ff ff       	callq  400910 <dup2@plt>
  400fcf:	83 f8 ff             	cmp    $0xffffffff,%eax
  400fd2:	75 14                	jne    400fe8 <fflush@plt+0x598>
  400fd4:	bf ce 19 40 00       	mov    $0x4019ce,%edi
  400fd9:	e8 52 fa ff ff       	callq  400a30 <perror@plt>
  400fde:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  400fe3:	e8 88 f9 ff ff       	callq  400970 <exit@plt>
  400fe8:	8b 7d cc             	mov    -0x34(%rbp),%edi
  400feb:	e8 40 f9 ff ff       	callq  400930 <close@plt>
  400ff0:	eb 3c                	jmp    40102e <fflush@plt+0x5de>
  400ff2:	0f bf 55 f0          	movswl -0x10(%rbp),%edx
  400ff6:	8b 05 ac 09 00 00    	mov    0x9ac(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  400ffc:	39 c2                	cmp    %eax,%edx
  400ffe:	75 2e                	jne    40102e <fflush@plt+0x5de>
  401000:	8b 7d e0             	mov    -0x20(%rbp),%edi
  401003:	be 00 00 00 00       	mov    $0x0,%esi
  401008:	e8 03 f9 ff ff       	callq  400910 <dup2@plt>
  40100d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401010:	75 14                	jne    401026 <fflush@plt+0x5d6>
  401012:	bf ce 19 40 00       	mov    $0x4019ce,%edi
  401017:	e8 14 fa ff ff       	callq  400a30 <perror@plt>
  40101c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401021:	e8 4a f9 ff ff       	callq  400970 <exit@plt>
  401026:	8b 7d e0             	mov    -0x20(%rbp),%edi
  401029:	e8 02 f9 ff ff       	callq  400930 <close@plt>
  40102e:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
  401033:	74 60                	je     401095 <fflush@plt+0x645>
  401035:	8b 55 d8             	mov    -0x28(%rbp),%edx
  401038:	8b 75 dc             	mov    -0x24(%rbp),%esi
  40103b:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  40103f:	b8 00 00 00 00       	mov    $0x0,%eax
  401044:	e8 f7 f9 ff ff       	callq  400a40 <open@plt>
  401049:	89 45 c8             	mov    %eax,-0x38(%rbp)
  40104c:	83 7d c8 ff          	cmpl   $0xffffffff,-0x38(%rbp)
  401050:	75 13                	jne    401065 <fflush@plt+0x615>
  401052:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  401056:	e8 d5 f9 ff ff       	callq  400a30 <perror@plt>
  40105b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401060:	e8 0b f9 ff ff       	callq  400970 <exit@plt>
  401065:	8b 7d c8             	mov    -0x38(%rbp),%edi
  401068:	be 01 00 00 00       	mov    $0x1,%esi
  40106d:	e8 9e f8 ff ff       	callq  400910 <dup2@plt>
  401072:	83 f8 ff             	cmp    $0xffffffff,%eax
  401075:	75 14                	jne    40108b <fflush@plt+0x63b>
  401077:	bf ce 19 40 00       	mov    $0x4019ce,%edi
  40107c:	e8 af f9 ff ff       	callq  400a30 <perror@plt>
  401081:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401086:	e8 e5 f8 ff ff       	callq  400970 <exit@plt>
  40108b:	8b 7d c8             	mov    -0x38(%rbp),%edi
  40108e:	e8 9d f8 ff ff       	callq  400930 <close@plt>
  401093:	eb 44                	jmp    4010d9 <fflush@plt+0x689>
  401095:	0f bf 55 ee          	movswl -0x12(%rbp),%edx
  401099:	8b 05 09 09 00 00    	mov    0x909(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  40109f:	39 c2                	cmp    %eax,%edx
  4010a1:	75 36                	jne    4010d9 <fflush@plt+0x689>
  4010a3:	8b 7d a0             	mov    -0x60(%rbp),%edi
  4010a6:	e8 85 f8 ff ff       	callq  400930 <close@plt>
  4010ab:	8b 7d a4             	mov    -0x5c(%rbp),%edi
  4010ae:	be 01 00 00 00       	mov    $0x1,%esi
  4010b3:	e8 58 f8 ff ff       	callq  400910 <dup2@plt>
  4010b8:	83 f8 ff             	cmp    $0xffffffff,%eax
  4010bb:	75 14                	jne    4010d1 <fflush@plt+0x681>
  4010bd:	bf ce 19 40 00       	mov    $0x4019ce,%edi
  4010c2:	e8 69 f9 ff ff       	callq  400a30 <perror@plt>
  4010c7:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4010cc:	e8 9f f8 ff ff       	callq  400970 <exit@plt>
  4010d1:	8b 7d a4             	mov    -0x5c(%rbp),%edi
  4010d4:	e8 57 f8 ff ff       	callq  400930 <close@plt>
  4010d9:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
  4010dd:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  4010e1:	48 8b 38             	mov    (%rax),%rdi
  4010e4:	e8 77 f8 ff ff       	callq  400960 <execvp@plt>
  4010e9:	bf d5 19 40 00       	mov    $0x4019d5,%edi
  4010ee:	e8 3d f9 ff ff       	callq  400a30 <perror@plt>
  4010f3:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4010f8:	e8 73 f8 ff ff       	callq  400970 <exit@plt>
  4010fd:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  401100:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  401104:	e8 d8 06 00 00       	callq  4017e1 <fflush@plt+0xd91>
  401109:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  40110c:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  401110:	e8 cc 06 00 00       	callq  4017e1 <fflush@plt+0xd91>
  401115:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  401119:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40111d:	8b 40 08             	mov    0x8(%rax),%eax
  401120:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  401123:	0f 87 a3 fb ff ff    	ja     400ccc <fflush@plt+0x27c>
  401129:	0f bf 55 ee          	movswl -0x12(%rbp),%edx
  40112d:	8b 05 75 08 00 00    	mov    0x875(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401133:	39 c2                	cmp    %eax,%edx
  401135:	75 10                	jne    401147 <fflush@plt+0x6f7>
  401137:	8b 7d a0             	mov    -0x60(%rbp),%edi
  40113a:	e8 f1 f7 ff ff       	callq  400930 <close@plt>
  40113f:	8b 7d a4             	mov    -0x5c(%rbp),%edi
  401142:	e8 e9 f7 ff ff       	callq  400930 <close@plt>
  401147:	0f bf 55 f0          	movswl -0x10(%rbp),%edx
  40114b:	8b 05 57 08 00 00    	mov    0x857(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401151:	39 c2                	cmp    %eax,%edx
  401153:	75 08                	jne    40115d <fflush@plt+0x70d>
  401155:	8b 7d e0             	mov    -0x20(%rbp),%edi
  401158:	e8 d3 f7 ff ff       	callq  400930 <close@plt>
  40115d:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  401161:	e8 95 05 00 00       	callq  4016fb <fflush@plt+0xcab>
  401166:	66 83 7d f4 00       	cmpw   $0x0,-0xc(%rbp)
  40116b:	74 3a                	je     4011a7 <fflush@plt+0x757>
  40116d:	eb 2a                	jmp    401199 <fflush@plt+0x749>
  40116f:	bf 00 00 00 00       	mov    $0x0,%edi
  401174:	b8 00 00 00 00       	mov    $0x0,%eax
  401179:	e8 c2 f7 ff ff       	callq  400940 <wait@plt>
  40117e:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401181:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  401184:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  401188:	e8 96 06 00 00       	callq  401823 <fflush@plt+0xdd3>
  40118d:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  401190:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  401194:	e8 8a 06 00 00       	callq  401823 <fflush@plt+0xdd3>
  401199:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40119d:	48 8b 00             	mov    (%rax),%rax
  4011a0:	48 85 c0             	test   %rax,%rax
  4011a3:	75 ca                	jne    40116f <fflush@plt+0x71f>
  4011a5:	eb 09                	jmp    4011b0 <fflush@plt+0x760>
  4011a7:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4011ab:	e8 9f 05 00 00       	callq  40174f <fflush@plt+0xcff>
  4011b0:	bf b0 19 40 00       	mov    $0x4019b0,%edi
  4011b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ba:	e8 61 f7 ff ff       	callq  400920 <printf@plt>
  4011bf:	48 8b 3d ea 0d 20 00 	mov    0x200dea(%rip),%rdi        # 601fb0 <stdout>
  4011c6:	e8 85 f8 ff ff       	callq  400a50 <fflush@plt>
  4011cb:	48 8b 15 ce 0d 20 00 	mov    0x200dce(%rip),%rdx        # 601fa0 <stdin>
  4011d2:	8b 35 c8 07 00 00    	mov    0x7c8(%rip),%esi        # 4019a0 <fflush@plt+0xf50>
  4011d8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4011dc:	e8 bf f7 ff ff       	callq  4009a0 <fgets@plt>
  4011e1:	48 85 c0             	test   %rax,%rax
  4011e4:	0f 85 1a fa ff ff    	jne    400c04 <fflush@plt+0x1b4>
  4011ea:	eb 1e                	jmp    40120a <fflush@plt+0x7ba>
  4011ec:	bf 00 00 00 00       	mov    $0x0,%edi
  4011f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f6:	e8 45 f7 ff ff       	callq  400940 <wait@plt>
  4011fb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4011fe:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  401201:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  401205:	e8 19 06 00 00       	callq  401823 <fflush@plt+0xdd3>
  40120a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40120e:	48 8b 00             	mov    (%rax),%rax
  401211:	48 85 c0             	test   %rax,%rax
  401214:	75 d6                	jne    4011ec <fflush@plt+0x79c>
  401216:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  40121a:	e8 7a 05 00 00       	callq  401799 <fflush@plt+0xd49>
  40121f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  401223:	e8 71 05 00 00       	callq  401799 <fflush@plt+0xd49>
  401228:	b8 00 00 00 00       	mov    $0x0,%eax
  40122d:	48 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%rsp
  401234:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401238:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40123f:	00 00 
  401241:	74 05                	je     401248 <fflush@plt+0x7f8>
  401243:	e8 98 f7 ff ff       	callq  4009e0 <__stack_chk_fail@plt>
  401248:	c9                   	leaveq 
  401249:	c3                   	retq   
  40124a:	55                   	push   %rbp
  40124b:	48 89 e5             	mov    %rsp,%rbp
  40124e:	48 83 ec 30          	sub    $0x30,%rsp
  401252:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401256:	8b 05 50 07 00 00    	mov    0x750(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  40125c:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40125f:	8b 05 43 07 00 00    	mov    0x743(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401265:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401268:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40126f:	e9 d7 02 00 00       	jmpq   40154b <fflush@plt+0xafb>
  401274:	8b 05 2e 07 00 00    	mov    0x72e(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  40127a:	39 45 f8             	cmp    %eax,-0x8(%rbp)
  40127d:	75 71                	jne    4012f0 <fflush@plt+0x8a0>
  40127f:	8b 05 27 07 00 00    	mov    0x727(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  401285:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401288:	8b 05 1a 07 00 00    	mov    0x71a(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  40128e:	39 45 ec             	cmp    %eax,-0x14(%rbp)
  401291:	75 09                	jne    40129c <fflush@plt+0x84c>
  401293:	8b 05 0f 07 00 00    	mov    0x70f(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401299:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40129c:	8b 05 0a 07 00 00    	mov    0x70a(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4012a2:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4012a5:	8b 05 01 07 00 00    	mov    0x701(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4012ab:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4012ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012b2:	48 8b 10             	mov    (%rax),%rdx
  4012b5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012b8:	48 c1 e0 03          	shl    $0x3,%rax
  4012bc:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  4012c0:	48 8b 38             	mov    (%rax),%rdi
  4012c3:	e8 a0 02 00 00       	callq  401568 <fflush@plt+0xb18>
  4012c8:	89 c2                	mov    %eax,%edx
  4012ca:	8b 05 d8 06 00 00    	mov    0x6d8(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  4012d0:	39 c2                	cmp    %eax,%edx
  4012d2:	0f 85 6f 02 00 00    	jne    401547 <fflush@plt+0xaf7>
  4012d8:	bf de 19 40 00       	mov    $0x4019de,%edi
  4012dd:	e8 6e f6 ff ff       	callq  400950 <puts@plt>
  4012e2:	8b 05 c4 06 00 00    	mov    0x6c4(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4012e8:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4012eb:	e9 6d 02 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  4012f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012f4:	48 8b 10             	mov    (%rax),%rdx
  4012f7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012fa:	48 c1 e0 03          	shl    $0x3,%rax
  4012fe:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401302:	48 8b 38             	mov    (%rax),%rdi
  401305:	be c5 19 40 00       	mov    $0x4019c5,%esi
  40130a:	b8 00 00 00 00       	mov    $0x0,%eax
  40130f:	e8 dc f6 ff ff       	callq  4009f0 <strcmp@plt>
  401314:	85 c0                	test   %eax,%eax
  401316:	0f 85 81 00 00 00    	jne    40139d <fflush@plt+0x94d>
  40131c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40131f:	83 c0 01             	add    $0x1,%eax
  401322:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401326:	8b 52 08             	mov    0x8(%rdx),%edx
  401329:	39 d0                	cmp    %edx,%eax
  40132b:	74 23                	je     401350 <fflush@plt+0x900>
  40132d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401331:	48 8b 10             	mov    (%rax),%rdx
  401334:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401337:	83 c0 01             	add    $0x1,%eax
  40133a:	89 c0                	mov    %eax,%eax
  40133c:	48 c1 e0 03          	shl    $0x3,%rax
  401340:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401344:	48 8b 38             	mov    (%rax),%rdi
  401347:	e8 1c 02 00 00       	callq  401568 <fflush@plt+0xb18>
  40134c:	85 c0                	test   %eax,%eax
  40134e:	74 18                	je     401368 <fflush@plt+0x918>
  401350:	bf de 19 40 00       	mov    $0x4019de,%edi
  401355:	e8 f6 f5 ff ff       	callq  400950 <puts@plt>
  40135a:	8b 05 4c 06 00 00    	mov    0x64c(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  401360:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401363:	e9 f5 01 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  401368:	8b 05 3a 06 00 00    	mov    0x63a(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  40136e:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  401371:	75 18                	jne    40138b <fflush@plt+0x93b>
  401373:	bf f4 19 40 00       	mov    $0x4019f4,%edi
  401378:	e8 d3 f5 ff ff       	callq  400950 <puts@plt>
  40137d:	8b 05 29 06 00 00    	mov    0x629(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  401383:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401386:	e9 d2 01 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  40138b:	8b 05 17 06 00 00    	mov    0x617(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401391:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401394:	8b 05 0e 06 00 00    	mov    0x60e(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  40139a:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40139d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013a1:	48 8b 10             	mov    (%rax),%rdx
  4013a4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013a7:	48 c1 e0 03          	shl    $0x3,%rax
  4013ab:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  4013af:	48 8b 38             	mov    (%rax),%rdi
  4013b2:	be c3 19 40 00       	mov    $0x4019c3,%esi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 2f f6 ff ff       	callq  4009f0 <strcmp@plt>
  4013c1:	85 c0                	test   %eax,%eax
  4013c3:	75 2b                	jne    4013f0 <fflush@plt+0x9a0>
  4013c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013c9:	8b 40 08             	mov    0x8(%rax),%eax
  4013cc:	83 e8 01             	sub    $0x1,%eax
  4013cf:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  4013d2:	0f 84 a0 00 00 00    	je     401478 <fflush@plt+0xa28>
  4013d8:	bf 10 1a 40 00       	mov    $0x401a10,%edi
  4013dd:	e8 6e f5 ff ff       	callq  400950 <puts@plt>
  4013e2:	8b 05 c4 05 00 00    	mov    0x5c4(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4013e8:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4013eb:	e9 6d 01 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  4013f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4013f4:	48 8b 10             	mov    (%rax),%rdx
  4013f7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013fa:	48 c1 e0 03          	shl    $0x3,%rax
  4013fe:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401402:	48 8b 38             	mov    (%rax),%rdi
  401405:	e8 5e 01 00 00       	callq  401568 <fflush@plt+0xb18>
  40140a:	85 c0                	test   %eax,%eax
  40140c:	74 11                	je     40141f <fflush@plt+0x9cf>
  40140e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401411:	83 c0 01             	add    $0x1,%eax
  401414:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401418:	8b 52 08             	mov    0x8(%rdx),%edx
  40141b:	39 d0                	cmp    %edx,%eax
  40141d:	74 41                	je     401460 <fflush@plt+0xa10>
  40141f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401423:	48 8b 10             	mov    (%rax),%rdx
  401426:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401429:	48 c1 e0 03          	shl    $0x3,%rax
  40142d:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401431:	48 8b 38             	mov    (%rax),%rdi
  401434:	e8 2f 01 00 00       	callq  401568 <fflush@plt+0xb18>
  401439:	85 c0                	test   %eax,%eax
  40143b:	74 3b                	je     401478 <fflush@plt+0xa28>
  40143d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401441:	48 8b 10             	mov    (%rax),%rdx
  401444:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401447:	83 c0 01             	add    $0x1,%eax
  40144a:	89 c0                	mov    %eax,%eax
  40144c:	48 c1 e0 03          	shl    $0x3,%rax
  401450:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401454:	48 8b 38             	mov    (%rax),%rdi
  401457:	e8 0c 01 00 00       	callq  401568 <fflush@plt+0xb18>
  40145c:	85 c0                	test   %eax,%eax
  40145e:	74 18                	je     401478 <fflush@plt+0xa28>
  401460:	bf 3f 1a 40 00       	mov    $0x401a3f,%edi
  401465:	e8 e6 f4 ff ff       	callq  400950 <puts@plt>
  40146a:	8b 05 3c 05 00 00    	mov    0x53c(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  401470:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401473:	e9 e5 00 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  401478:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40147c:	48 8b 10             	mov    (%rax),%rdx
  40147f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401482:	48 c1 e0 03          	shl    $0x3,%rax
  401486:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  40148a:	48 8b 38             	mov    (%rax),%rdi
  40148d:	be c1 19 40 00       	mov    $0x4019c1,%esi
  401492:	b8 00 00 00 00       	mov    $0x0,%eax
  401497:	e8 54 f5 ff ff       	callq  4009f0 <strcmp@plt>
  40149c:	85 c0                	test   %eax,%eax
  40149e:	75 2e                	jne    4014ce <fflush@plt+0xa7e>
  4014a0:	8b 05 02 05 00 00    	mov    0x502(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  4014a6:	39 45 f4             	cmp    %eax,-0xc(%rbp)
  4014a9:	75 18                	jne    4014c3 <fflush@plt+0xa73>
  4014ab:	bf 5a 1a 40 00       	mov    $0x401a5a,%edi
  4014b0:	e8 9b f4 ff ff       	callq  400950 <puts@plt>
  4014b5:	8b 05 f1 04 00 00    	mov    0x4f1(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4014bb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4014be:	e9 9a 00 00 00       	jmpq   40155d <fflush@plt+0xb0d>
  4014c3:	8b 05 df 04 00 00    	mov    0x4df(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  4014c9:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4014cc:	eb 79                	jmp    401547 <fflush@plt+0xaf7>
  4014ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4014d2:	48 8b 10             	mov    (%rax),%rdx
  4014d5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4014d8:	48 c1 e0 03          	shl    $0x3,%rax
  4014dc:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  4014e0:	48 8b 38             	mov    (%rax),%rdi
  4014e3:	be bc 19 40 00       	mov    $0x4019bc,%esi
  4014e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ed:	e8 fe f4 ff ff       	callq  4009f0 <strcmp@plt>
  4014f2:	85 c0                	test   %eax,%eax
  4014f4:	74 28                	je     40151e <fflush@plt+0xace>
  4014f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4014fa:	48 8b 10             	mov    (%rax),%rdx
  4014fd:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401500:	48 c1 e0 03          	shl    $0x3,%rax
  401504:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401508:	48 8b 38             	mov    (%rax),%rdi
  40150b:	be be 19 40 00       	mov    $0x4019be,%esi
  401510:	b8 00 00 00 00       	mov    $0x0,%eax
  401515:	e8 d6 f4 ff ff       	callq  4009f0 <strcmp@plt>
  40151a:	85 c0                	test   %eax,%eax
  40151c:	75 29                	jne    401547 <fflush@plt+0xaf7>
  40151e:	8b 05 84 04 00 00    	mov    0x484(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401524:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  401527:	75 15                	jne    40153e <fflush@plt+0xaee>
  401529:	bf f4 19 40 00       	mov    $0x4019f4,%edi
  40152e:	e8 1d f4 ff ff       	callq  400950 <puts@plt>
  401533:	8b 05 73 04 00 00    	mov    0x473(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  401539:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40153c:	eb 1f                	jmp    40155d <fflush@plt+0xb0d>
  40153e:	8b 05 64 04 00 00    	mov    0x464(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  401544:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401547:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40154b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40154f:	8b 40 08             	mov    0x8(%rax),%eax
  401552:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401555:	0f 87 19 fd ff ff    	ja     401274 <fflush@plt+0x824>
  40155b:	eb 06                	jmp    401563 <fflush@plt+0xb13>
  40155d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401560:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401563:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401566:	c9                   	leaveq 
  401567:	c3                   	retq   
  401568:	55                   	push   %rbp
  401569:	48 89 e5             	mov    %rsp,%rbp
  40156c:	48 83 ec 10          	sub    $0x10,%rsp
  401570:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401574:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401578:	be c3 19 40 00       	mov    $0x4019c3,%esi
  40157d:	b8 00 00 00 00       	mov    $0x0,%eax
  401582:	e8 69 f4 ff ff       	callq  4009f0 <strcmp@plt>
  401587:	85 c0                	test   %eax,%eax
  401589:	74 5c                	je     4015e7 <fflush@plt+0xb97>
  40158b:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40158f:	be c5 19 40 00       	mov    $0x4019c5,%esi
  401594:	b8 00 00 00 00       	mov    $0x0,%eax
  401599:	e8 52 f4 ff ff       	callq  4009f0 <strcmp@plt>
  40159e:	85 c0                	test   %eax,%eax
  4015a0:	74 45                	je     4015e7 <fflush@plt+0xb97>
  4015a2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4015a6:	be c1 19 40 00       	mov    $0x4019c1,%esi
  4015ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4015b0:	e8 3b f4 ff ff       	callq  4009f0 <strcmp@plt>
  4015b5:	85 c0                	test   %eax,%eax
  4015b7:	74 2e                	je     4015e7 <fflush@plt+0xb97>
  4015b9:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4015bd:	be bc 19 40 00       	mov    $0x4019bc,%esi
  4015c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c7:	e8 24 f4 ff ff       	callq  4009f0 <strcmp@plt>
  4015cc:	85 c0                	test   %eax,%eax
  4015ce:	74 17                	je     4015e7 <fflush@plt+0xb97>
  4015d0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4015d4:	be be 19 40 00       	mov    $0x4019be,%esi
  4015d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015de:	e8 0d f4 ff ff       	callq  4009f0 <strcmp@plt>
  4015e3:	85 c0                	test   %eax,%eax
  4015e5:	75 0b                	jne    4015f2 <fflush@plt+0xba2>
  4015e7:	8b 05 bb 03 00 00    	mov    0x3bb(%rip),%eax        # 4019a8 <fflush@plt+0xf58>
  4015ed:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4015f0:	eb 09                	jmp    4015fb <fflush@plt+0xbab>
  4015f2:	8b 05 b4 03 00 00    	mov    0x3b4(%rip),%eax        # 4019ac <fflush@plt+0xf5c>
  4015f8:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4015fb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4015fe:	c9                   	leaveq 
  4015ff:	c3                   	retq   
  401600:	55                   	push   %rbp
  401601:	48 89 e5             	mov    %rsp,%rbp
  401604:	48 83 ec 30          	sub    $0x30,%rsp
  401608:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40160c:	48 c7 45 e8 74 1a 40 	movq   $0x401a74,-0x18(%rbp)
  401613:	00 
  401614:	bf 10 00 00 00       	mov    $0x10,%edi
  401619:	e8 62 f3 ff ff       	callq  400980 <malloc@plt>
  40161e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401622:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401626:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40162d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401631:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  401638:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40163d:	75 0d                	jne    40164c <fflush@plt+0xbfc>
  40163f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401643:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401647:	e9 a9 00 00 00       	jmpq   4016f5 <fflush@plt+0xca5>
  40164c:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  401650:	e8 7b f3 ff ff       	callq  4009d0 <strdup@plt>
  401655:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401659:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  40165d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  401661:	e8 9a f3 ff ff       	callq  400a00 <strtok@plt>
  401666:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40166a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  40166f:	75 0a                	jne    40167b <fflush@plt+0xc2b>
  401671:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401675:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401679:	eb 7a                	jmp    4016f5 <fflush@plt+0xca5>
  40167b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40167f:	8b 40 08             	mov    0x8(%rax),%eax
  401682:	8d 50 01             	lea    0x1(%rax),%edx
  401685:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401689:	89 50 08             	mov    %edx,0x8(%rax)
  40168c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401690:	8b 40 08             	mov    0x8(%rax),%eax
  401693:	89 c0                	mov    %eax,%eax
  401695:	48 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%rsi
  40169c:	00 
  40169d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016a1:	48 8b 38             	mov    (%rax),%rdi
  4016a4:	e8 77 f3 ff ff       	callq  400a20 <realloc@plt>
  4016a9:	48 89 c2             	mov    %rax,%rdx
  4016ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b0:	48 89 10             	mov    %rdx,(%rax)
  4016b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b7:	48 8b 10             	mov    (%rax),%rdx
  4016ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016be:	8b 40 08             	mov    0x8(%rax),%eax
  4016c1:	83 e8 01             	sub    $0x1,%eax
  4016c4:	89 c0                	mov    %eax,%eax
  4016c6:	48 c1 e0 03          	shl    $0x3,%rax
  4016ca:	48 01 c2             	add    %rax,%rdx
  4016cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4016d1:	48 89 02             	mov    %rax,(%rdx)
  4016d4:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  4016d8:	bf 00 00 00 00       	mov    $0x0,%edi
  4016dd:	e8 1e f3 ff ff       	callq  400a00 <strtok@plt>
  4016e2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4016e6:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  4016eb:	75 8e                	jne    40167b <fflush@plt+0xc2b>
  4016ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016f1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4016f5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4016f9:	c9                   	leaveq 
  4016fa:	c3                   	retq   
  4016fb:	55                   	push   %rbp
  4016fc:	48 89 e5             	mov    %rsp,%rbp
  4016ff:	48 83 ec 20          	sub    $0x20,%rsp
  401703:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401707:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40170c:	74 15                	je     401723 <fflush@plt+0xcd3>
  40170e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401712:	48 8b 38             	mov    (%rax),%rdi
  401715:	e8 96 f2 ff ff       	callq  4009b0 <free@plt>
  40171a:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40171e:	e8 8d f2 ff ff       	callq  4009b0 <free@plt>
  401723:	c9                   	leaveq 
  401724:	c3                   	retq   
  401725:	90                   	nop
  401726:	90                   	nop
  401727:	90                   	nop
  401728:	55                   	push   %rbp
  401729:	48 89 e5             	mov    %rsp,%rbp
  40172c:	48 83 ec 10          	sub    $0x10,%rsp
  401730:	bf 08 00 00 00       	mov    $0x8,%edi
  401735:	e8 46 f2 ff ff       	callq  400980 <malloc@plt>
  40173a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40173e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401742:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401749:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40174d:	c9                   	leaveq 
  40174e:	c3                   	retq   
  40174f:	55                   	push   %rbp
  401750:	48 89 e5             	mov    %rsp,%rbp
  401753:	48 83 ec 20          	sub    $0x20,%rsp
  401757:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40175b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40175f:	48 8b 00             	mov    (%rax),%rax
  401762:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401766:	eb 1d                	jmp    401785 <fflush@plt+0xd35>
  401768:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40176c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401770:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401774:	48 8b 40 08          	mov    0x8(%rax),%rax
  401778:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40177c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  401780:	e8 2b f2 ff ff       	callq  4009b0 <free@plt>
  401785:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40178a:	75 dc                	jne    401768 <fflush@plt+0xd18>
  40178c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401790:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401797:	c9                   	leaveq 
  401798:	c3                   	retq   
  401799:	55                   	push   %rbp
  40179a:	48 89 e5             	mov    %rsp,%rbp
  40179d:	48 83 ec 20          	sub    $0x20,%rsp
  4017a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4017a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017a9:	48 8b 00             	mov    (%rax),%rax
  4017ac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017b0:	eb 1d                	jmp    4017cf <fflush@plt+0xd7f>
  4017b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017b6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017be:	48 8b 40 08          	mov    0x8(%rax),%rax
  4017c2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017c6:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4017ca:	e8 e1 f1 ff ff       	callq  4009b0 <free@plt>
  4017cf:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4017d4:	75 dc                	jne    4017b2 <fflush@plt+0xd62>
  4017d6:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4017da:	e8 d1 f1 ff ff       	callq  4009b0 <free@plt>
  4017df:	c9                   	leaveq 
  4017e0:	c3                   	retq   
  4017e1:	55                   	push   %rbp
  4017e2:	48 89 e5             	mov    %rsp,%rbp
  4017e5:	48 83 ec 20          	sub    $0x20,%rsp
  4017e9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4017ed:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  4017f0:	bf 10 00 00 00       	mov    $0x10,%edi
  4017f5:	e8 86 f1 ff ff       	callq  400980 <malloc@plt>
  4017fa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017fe:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401802:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401805:	89 02                	mov    %eax,(%rdx)
  401807:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40180b:	48 8b 10             	mov    (%rax),%rdx
  40180e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401812:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401816:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40181a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40181e:	48 89 02             	mov    %rax,(%rdx)
  401821:	c9                   	leaveq 
  401822:	c3                   	retq   
  401823:	55                   	push   %rbp
  401824:	48 89 e5             	mov    %rsp,%rbp
  401827:	48 83 ec 20          	sub    $0x20,%rsp
  40182b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40182f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401832:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401839:	00 
  40183a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40183e:	48 8b 00             	mov    (%rax),%rax
  401841:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401845:	eb 52                	jmp    401899 <fflush@plt+0xe49>
  401847:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40184b:	8b 00                	mov    (%rax),%eax
  40184d:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  401850:	75 33                	jne    401885 <fflush@plt+0xe35>
  401852:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401857:	75 11                	jne    40186a <fflush@plt+0xe1a>
  401859:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40185d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401861:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401865:	48 89 10             	mov    %rdx,(%rax)
  401868:	eb 10                	jmp    40187a <fflush@plt+0xe2a>
  40186a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40186e:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401872:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401876:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40187a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40187e:	e8 2d f1 ff ff       	callq  4009b0 <free@plt>
  401883:	eb 1b                	jmp    4018a0 <fflush@plt+0xe50>
  401885:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401889:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40188d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401891:	48 8b 40 08          	mov    0x8(%rax),%rax
  401895:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401899:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40189e:	75 a7                	jne    401847 <fflush@plt+0xdf7>
  4018a0:	c9                   	leaveq 
  4018a1:	c3                   	retq   
  4018a2:	90                   	nop
  4018a3:	90                   	nop
  4018a4:	90                   	nop
  4018a5:	90                   	nop
  4018a6:	90                   	nop
  4018a7:	90                   	nop
  4018a8:	90                   	nop
  4018a9:	90                   	nop
  4018aa:	90                   	nop
  4018ab:	90                   	nop
  4018ac:	90                   	nop
  4018ad:	90                   	nop
  4018ae:	90                   	nop
  4018af:	90                   	nop
  4018b0:	f3 c3                	repz retq 
  4018b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4018b9:	1f 84 00 00 00 00 00 
  4018c0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4018c5:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4018ca:	48 8d 2d 23 04 20 00 	lea    0x200423(%rip),%rbp        # 601cf4 <fflush@plt+0x2012a4>
  4018d1:	4c 8d 3d 1c 04 20 00 	lea    0x20041c(%rip),%r15        # 601cf4 <fflush@plt+0x2012a4>
  4018d8:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4018dd:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4018e2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4018e7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4018ec:	48 83 ec 38          	sub    $0x38,%rsp
  4018f0:	4c 29 fd             	sub    %r15,%rbp
  4018f3:	41 89 fe             	mov    %edi,%r14d
  4018f6:	49 89 f5             	mov    %rsi,%r13
  4018f9:	48 c1 fd 03          	sar    $0x3,%rbp
  4018fd:	49 89 d4             	mov    %rdx,%r12
  401900:	e8 e3 ef ff ff       	callq  4008e8 <dup2@plt-0x28>
  401905:	48 85 ed             	test   %rbp,%rbp
  401908:	74 1c                	je     401926 <fflush@plt+0xed6>
  40190a:	31 db                	xor    %ebx,%ebx
  40190c:	0f 1f 40 00          	nopl   0x0(%rax)
  401910:	4c 89 e2             	mov    %r12,%rdx
  401913:	4c 89 ee             	mov    %r13,%rsi
  401916:	44 89 f7             	mov    %r14d,%edi
  401919:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40191d:	48 83 c3 01          	add    $0x1,%rbx
  401921:	48 39 dd             	cmp    %rbx,%rbp
  401924:	75 ea                	jne    401910 <fflush@plt+0xec0>
  401926:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40192b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401930:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401935:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40193a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40193f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401944:	48 83 c4 38          	add    $0x38,%rsp
  401948:	c3                   	retq   
  401949:	90                   	nop
  40194a:	90                   	nop
  40194b:	90                   	nop
  40194c:	90                   	nop
  40194d:	90                   	nop
  40194e:	90                   	nop
  40194f:	90                   	nop
  401950:	55                   	push   %rbp
  401951:	48 89 e5             	mov    %rsp,%rbp
  401954:	53                   	push   %rbx
  401955:	48 83 ec 08          	sub    $0x8,%rsp
  401959:	48 8b 05 98 03 20 00 	mov    0x200398(%rip),%rax        # 601cf8 <fflush@plt+0x2012a8>
  401960:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401964:	74 15                	je     40197b <fflush@plt+0xf2b>
  401966:	31 db                	xor    %ebx,%ebx
  401968:	ff d0                	callq  *%rax
  40196a:	48 8b 83 f0 1c 60 00 	mov    0x601cf0(%rbx),%rax
  401971:	48 83 eb 08          	sub    $0x8,%rbx
  401975:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401979:	75 ed                	jne    401968 <fflush@plt+0xf18>
  40197b:	48 83 c4 08          	add    $0x8,%rsp
  40197f:	5b                   	pop    %rbx
  401980:	c9                   	leaveq 
  401981:	c3                   	retq   
  401982:	90                   	nop
  401983:	90                   	nop

Disassembly of section .fini:

0000000000401984 <.fini>:
  401984:	48 83 ec 08          	sub    $0x8,%rsp
  401988:	e8 23 f1 ff ff       	callq  400ab0 <fflush@plt+0x60>
  40198d:	48 83 c4 08          	add    $0x8,%rsp
  401991:	c3                   	retq   
