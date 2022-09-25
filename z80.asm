; 16-bit xorshift Z80 pseudorandom number generator by John Metcalf

; generates 16-bit pseudorandom numbers with a period of 65535
; using the xorshift method

; XSHFT ^= XSHFT << 7
; XSHFT ^= XSHFT >> 9
; XSHFT ^= XSHFT << 8

  LD HL,(XSHFT)
  LD A,H
  RRA
  LD A,L
  RRA
  XOR H
  LD H,A
  LD A,L
  RRA
  LD A,H
  RRA
  XOR L
  LD L,A
  XOR H
  LD H,A
  LD (XSHFT),HL
  RET
