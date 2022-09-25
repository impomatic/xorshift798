; 16-bit xorshift 6502 pseudorandom number generator by John Metcalf

; generates 16-bit pseudorandom numbers with a period of 65535
; using the xorshift method

; XSHFT ^= XSHFT << 7
; XSHFT ^= XSHFT >> 9
; XSHFT ^= XSHFT << 8

  LDA XSHFT+1
  ROR
  LDA XSHFT
  ROR
  EOR XSHFT+1
  STA XSHFT+1
  ROR
  EOR XSHFT
  STA XSHFT
  EOR XSHFT+1
  STA XSHFT+1
  RTS
