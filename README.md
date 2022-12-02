# Xorshift-798

Xorshift-798 is an efficient 16-bit pseudorandom number generator. The next number in the sequence is produced using three operations where the number is XORed with a shifted copy of itself. The shifts 7, 9 and 8 can be implemented efficiently in assembly using single shifts and swapping bytes.  The equivalent C code is: 

```
uint16_t xs = 1;

uint16_t xorshift( )
{
    xs ^= xs << 7;
    xs ^= xs >> 9;
    xs ^= xs << 8;
    return xs;
}
```

More information:

* [16-Bit Xorshift Pseudorandom Numbers in Z80 Assembly](http://www.retroprogramming.com/2017/07/xorshift-pseudorandom-numbers-in-z80.html) at retroprogramming.com
* [Xorshift Linear-Feedback Shift Registers](https://en.wikipedia.org/wiki/Linear-feedback_shift_register#Xorshift_LFSRs) on Wikipedia
