.section .text

.global __start

__start:

  li $v0, 4004    #informando que gostaria de escrever algo
  li $a0, 1       #passando o 1 como argumento, informando que seria um STDOUT
  la $a1, msg     #passando o valor de msg
  li $a2, 13
  syscall


  li $v0, 4001
  li $a0, 0
  syscall

.section .data

msg: .asciz "Hello World!\n"
