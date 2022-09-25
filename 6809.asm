; 16-bit xorshift 6809 pseudorandom number generator by John Metcalf

; generates 16-bit pseudorandom numbers with a period of 65535
; using the xorshift method

; XSHFT ^= XSHFT << 7
; XSHFT ^= XSHFT >> 9
; XSHFT ^= XSHFT << 8

  LDD XSHFT
  RORA
  RORB
  EORB XSHFT
  STB XSHFT
  RORB
  EORB XSHFT+1
  TFR B,A
  EORA XSHFT
  STD XSHFT
  RTS
