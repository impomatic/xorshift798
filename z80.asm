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
