/// @file 
/// @brief Bit tools. ("uMathBits.pde")
/// @date 2024-09-26 (Last modification)
//*////////////////////////////////////////

/// @defgroup General math tools and functions
/// @{
//*///////////////////////////////////////////

/// Function for mutating one of integer bit.
/// Flip-flop the bit at the given position.
int switchbit(int sou,int pos)  ///< @note GLOBAL
{
  if(pos>=MASKBITS)//Define MASKBITS somewhere
  {
    println("!!! Mutation autside BITMASK");
    return sou;
  }
  
  int bit=0x1<<pos; // There is a correct position
  
  //print(":"+bit+" ");
  return sou^bit;//xor should do the job? TODO CHECK?
}

/// Bits counting function.
/// Counts the set bits of an integer (not efficiently!).
/// @note Assuming that integer is 32bits.
int countbits(int u)  ///< @note GLOBAL
{
  final int BITSPERINT=32;    assert( Integer.BYTES==4 );
  
  int sum=0;
  for(int i=0;i<BITSPERINT;i++)
    {
    if((u & 1) !=0 )
        sum++;
    u>>=1;
    }
  return sum;
}

//*///////////////////////////////////////////////////////////////////////////
//*  https://www.researchgate.net/profile/WOJCIECH_BORKOWSKI - OPTIONAL TOOLS 
//*  - FUNCTIONS & CLASSES
//*  https://github.com/borkowsk/sym4processing
/// @}
//*///////////////////////////////////////////////////////////////////////////
