.section .data
.global ptr1
.global ptr2

.global str_cpy2 #void str_cpy2(void)


str_cpy2:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%edx
movl $ptr1,%esi
movl $ptr2,%edi

string_loop:
movb (%esi),%cl
cmpb $0,%cl		
jz end			#if end of string , end
cmpb $'b',%cl
jz cpy_change
cmpb $'v',%cl
jz cpy_change_2	#if char == v
jmp cpy			#else

cpy_change:
movb $'v',(%edi)	#copies 'v' to bl
incl %esi		#increments pointer of str1
incl %edi		#incrmeents pointer of str2
incl %edx		#increments counter to save pointer state at the end
jmp string_loop

cpy_change_2:
movb $'b',(%edi)	#copies 'v' to bl
incl %esi		#increments pointer of str1
incl %edi		#incrmeents pointer of str2
incl %edx		#increments counter to save pointer state at the end
jmp string_loop

cpy:
movb %cl,(%edi)	#copies char at cl to bl
incl %esi	#increments pointer of str1
incl %edi		#incrmeents pointer of str2
incl %edx		#increments counter to save pointer state at the end
jmp string_loop






end:
movl %edi,%eax
subl %edx,%eax

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
